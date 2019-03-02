var $jq = jQuery.noConflict();
          $jq(document).ready(function(){
                $jq('.customer-logos').slick({
                  slidesToShow: 6,
                  slidesToScroll: 1,
                  autoplay: true,
                  autoplaySpeed: 1000,
                  arrows: false,
                  dots: false,
                    pauseOnHover: false,
                    responsive: [{
                    breakpoint: 768,
                    settings: {
                      slidesToShow: 4
                    }
                  }, {
                    breakpoint: 520,
                    settings: {
                      slidesToShow: 3
                    }
                  }]
                });
                });