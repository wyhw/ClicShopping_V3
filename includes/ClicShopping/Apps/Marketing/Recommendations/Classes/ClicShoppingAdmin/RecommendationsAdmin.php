<?php
  /**
   *
   * @copyright 2008 - https://www.clicshopping.org
   * @Brand : ClicShopping(Tm) at Inpi all right Reserved
   * @Licence GPL 2 & MIT
   * @Info : https://www.clicshopping.org/forum/trademark/
   *
   */

  namespace ClicShopping\Apps\Marketing\Recommendations\Classes\ClicShoppingAdmin;

  use ClicShopping\OM\Registry;

  class RecommendationsAdmin
  {
    protected mixed $db;
    private mixed $customer;

    public function __construct()
    {
      $this->db = Registry::get('Db');
      $this->customer = Registry::get('Customer');
    }

    /**
     * @param float $productsRateWeight
     * @param float $reviewRate
     * @param float|null $userFeedback
     * @return float
     */
    private static function calculateRecommendationScoreWithMultipleSources(float $productsRateWeight = 0.8, float $reviewRate = 0, ?float $userFeedback = 0, ?float $sentimentScore = null): float
    {
      // Normalize the user feedback to a value between -1 and 1
      $userFeedback = static::calculateUserFeedbackScore($userFeedback);

      // If a sentiment score is provided, adjust it to be between -1 and 1
      if (!is_null($sentimentScore)) {
        $sentimentScore = max(-1, min(1, $sentimentScore));
      }

      // Get scores from other recommendation sources (e.g., sales data, external recommendations)
      $salesDataScore = 0.9; // Example: get the score from sales data
      $externalRecommendationScore = 0.85; // Example: get the score from external recommendations

      // Weigh the scores from different sources (adjust weights as needed)
      $salesDataWeight = 0.4;
      $externalRecommendationWeight = 0.3;

      // Calculate the combined score as a weighted sum of individual scores
      $combinedScore = ($reviewRate * $productsRateWeight) +
        ($salesDataScore * $salesDataWeight) +
        ($externalRecommendationScore * $externalRecommendationWeight) +
        ($userFeedback * 0.2); // Adjust the weight of user feedback as needed

      // If a sentiment score is available, incorporate it into the combined score calculation
      if (!is_null($sentimentScore)) {
        $combinedScore = ($combinedScore + $sentimentScore) / 2; // You can adjust the weighting between the sentiment and other factors as needed
      }

      return $combinedScore;
    }

    /**
     * @param float $productsRateWeight
     * @param float $reviewRate
     * @param float|null $userFeedback
     * @param float|null $feedbackWeight
     * @return float
     */
    private static function calculateRecommendationScoreBasedOnRange(float $productsRateWeight = 0.8, float $reviewRate = 0, ?float $userFeedback = 0, ?float $feedbackWeight = 0.2,  ?float $sentimentScore = null) :float
    {
      // If a sentiment score is provided, adjust it to be between -1 and 1
      if (!is_null($sentimentScore)) {
        $sentimentScore = max(-1, min(1, $sentimentScore));
      }

      // Calculate the final recommendation score using a weighted average of review rate, user feedback, and sentiment score (if available)
      $score = ($reviewRate * (1 - $feedbackWeight)) + ($userFeedback * $feedbackWeight);

      // If a sentiment score is available, incorporate it into the final score calculation
      if (!is_null($sentimentScore)) {
        $score = ($score + $sentimentScore) / 2; // You can adjust the weighting between the sentiment and other factors as needed
      }

      return $score;
    }

    /**
     * @param float|null $productsRateWeight
     * @param float|null $reviewRate
     * @param int|null $userFeedback (Optional) User feedback on the recommended product, ranging from -1 (disliked) to 1 (liked).
     * @param string|null $strategy
     * @return float
     * Function to calculate the score for product recommendations
     */
    public function calculateRecommendationScore(?float $productsRateWeight = 0.8, ?float $reviewRate = 0, ?int $userFeedback = 0, ?string $strategy = 'Range', ?float $sentimentScore = null): float
    {
      // Adjust the review rate to be between 0 and 1
      $maxReviewRate = 5; // Maximum possible review rate
      $reviewRate = $reviewRate / $maxReviewRate;

      // Normalize the user feedback to a value between -1 and 1
      $userFeedback = static::calculateUserFeedbackScore($userFeedback);

      // Adjust the sentiment score to be between -1 and 1 (if provided)
      if (!is_null($sentimentScore)) {
        $sentimentScore = max(-1, min(1, $sentimentScore));
      }

      if ($strategy == 'Range') {
        $score = static::calculateRecommendationScoreBasedOnRange($productsRateWeight, $reviewRate, $userFeedback, $sentimentScore);
      } else {
        $score = static::calculateRecommendationScoreWithMultipleSources($productsRateWeight, $reviewRate, $userFeedback, $sentimentScore);
      }

      return $score;
    }

    /**
     * @param int $limit
     * @return array
     */
    public function getMostRecommendedProducts(int $limit = 10, string|int $customers_group_id = 99, float $minRecommendedScore = 0.5, ?string $date): array
    {
      if ($customers_group_id == 99) {
        $customers_group = 'AND customers_group_id >= 0';
      } elseif ($customers_group_id > 0) {
        $customers_group = 'AND customers_group_id = ' . $customers_group_id;
      } else {
        $customers_group = 'AND customers_group_id = 0';
      }

      $currentDate = date('Y-m-d');
      if (empty($date)) {
        $date_analyse = '';
      } else {
        $date_analyse = ' between ' . $date . ' AND ' . $currentDate;
      }

      $QmostRecommended = $this->db->prepare('SELECT products_id, 
                                              COUNT(*) as recommendation_count,
                                              recommendation_date,
                                              MAX(score) as score
                                             FROM :table_products_recommendations
                                             WHERE score >= :minRecommendedScore
                                             ' . $customers_group . '
                                             ' . $date_analyse . '
                                             GROUP BY products_id
                                             ORDER BY recommendation_count DESC
                                             LIMIT :limit
                                             ');

      $QmostRecommended->bindInt(':limit', $limit);
      $QmostRecommended->bindDecimal(':minRecommendedScore', $minRecommendedScore);

      $QmostRecommended->execute();

      $mostRecommendedProducts = $QmostRecommended->fetchAll();

      return $mostRecommendedProducts;
    }

    /**
     * Get the products that are frequently rejected by customers
     * @param int $limit (Optional) Limit the number of products to retrieve
     * @return array
     */
    public function getRejectedProducts(int $limit = 10, string|int $customers_group_id = 99, float $maxRejectedScore = 0.50, ?string  $date): array
    {
      if ($customers_group_id == 99) {
        $customers_group = '';
      } elseif ($customers_group_id > 0) {
        $customers_group = ' AND customers_group_id = ' . $customers_group_id;
      } else {
        $customers_group = ' AND customers_group_id = 0';
      }

      $currentDate = date('Y-m-d');
      if (empty($date)) {
        $date_analyse = '';
      } else {
        $date_analyse = ' between ' . $date . ' AND ' . $currentDate;
      }

      $QrejectedProducts = $this->db->prepare('SELECT products_id, 
                                          COUNT(*) as rejection_count,
                                          recommendation_date as recommendation_date,
                                          MAX(score) as score
                                          FROM :table_products_recommendations
                                          WHERE score <= :maxRejectedScore
                                          ' . $customers_group . '
                                          ' . $date_analyse . '
                                          GROUP BY products_id
                                          ORDER BY rejection_count DESC
                                          LIMIT :limit
                                          ');

      $QrejectedProducts->bindInt(':limit', $limit);
      $QrejectedProducts->bindDecimal(':maxRejectedScore', $maxRejectedScore);
      $QrejectedProducts->execute();

      $rejectedProducts = $QrejectedProducts->fetchAll();

      return $rejectedProducts;
    }


    /**
     * subjective measure that reflects the user's opinion or sentiment about the product, between -1 and 1.
     *
     * @param float|null $userFeedback
     * @return float
     */
    public static function calculateUserFeedbackScore(?float $userFeedback): float
    {
      $normalizedFeedback = max(-1, min(1, $userFeedback));

      return $normalizedFeedback;
    }

//********************************************
// Review calculation
//********************************************
    /**
     * Calculate the average rating based on an array of review ratings.
     *
     * @param int $products_id
     * @return float The average rating.
     */
    private function calculateAverageRating(int $products_id): float
    {
      $Qcheck = $this->db->prepare('select reviews_rating
                                    from :table_reviews
                                    where products_id = :products_id
                                  ');
      $Qcheck->bindInt(':products_id', $products_id);
      $Qcheck->execute();

      $reviews = $Qcheck->fetchAll();

      if (!array($reviews)) {
        return 0;
      }

      $totalRating = 0;
      $numReviews = count($reviews);

      foreach ($reviews as $review) {
        $totalRating += $this->normalizeRating($review['reviews_rating']);
      }

      $result = $totalRating / $numReviews;

      return $result;
    }

    /**
     * Normalize the rating to a value between 0 and 5.
     *
     * @param float $rating The original rating.
     * @return float The normalized rating.
     */
    private function normalizeRating(int $rating): float
    {
      return ($rating - 1) / 4;
    }

    /**
     * Calculate the productsRateWeight for a specific product based on reviews and ratings.
     *
     * @param int $products_id The ID of the product.
     * @return float The productsRateWeight for the product.
     */
    public function calculateProductsRateWeight(int $products_id): float
    {
      $averageRating = $this->calculateAverageRating($products_id);

      // Optionally, apply a weighting factor if needed.
      // $weightedRating = applyWeightingFactor($averageRating);

      return $averageRating;
    }
  }