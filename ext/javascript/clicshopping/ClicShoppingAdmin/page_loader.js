/*
 *
 *  @copyright 2008 - https://www.clicshopping.org
 *  @Brand : ClicShopping(Tm) at Inpi all right Reserved
 *  @Licence GPL 2 & MIT
 *  @Info : https://www.clicshopping.org/forum/trademark/
 *
 */
  window.addEventListener("load", function() {
    // Page Preloader
    setTimeout(function() {
        var preloader = document.getElementById("preloader");
        if (!preloader.classList.contains("hidden")) {
            preloader.classList.add("hidden");
        }
    }, 100);
  });
