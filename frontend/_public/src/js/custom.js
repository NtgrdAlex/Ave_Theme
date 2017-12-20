$("#addAll").click(function(){
  var notAddToCartAlert = 0;
  var btnContainer = $(this).parents('.forms-container');
	$('.form-ingredients-add-cart').each(function() {
    var response;
    var $form = $(this);
    var sQ = $form.find('[name="sQuantity"]:not(.selectboxit)').val();
    if (sQ > 0)  {
      $.ajax({
        url: $form.attr('action'),
        data: $form.serialize(),
        type: "POST",
        success: function(data) {
          if (data)  {
            response = 1;
          }
        },
        complete: function() {
          if (response == 1) {
			   cartRefresh();
           
          }
        }
      });
    } else {
      if (btnContainer.find('#ingredients-not-add-cart').length) {
        notAddToCartAlert = 1;
        
      }
    }
  });

});




  function cartRefresh() {
            var ajaxCartRefresh = window.controller.ajax_cart_refresh,
                $cartAmount = $('.cart--amount'),
                $cartQuantity = $('.cart--quantity');

            if (!ajaxCartRefresh.length) {
                return;
            }

            $.publish('plugin/swResponsive/onCartRefresh');

            $.ajax({
                'url': ajaxCartRefresh,
                'dataType': 'jsonp',
                'success': function (response) {
                    var cart = JSON.parse(response);

                    if (!cart.amount || !cart.quantity) {
                        return;
                    }

                    $cartAmount.html(cart.amount);
                    $cartQuantity.html(cart.quantity).removeClass('is--hidden');

                    if (cart.quantity == 0) {
                        $cartQuantity.addClass('is--hidden');
                    }

                    $.publish('plugin/swResponsive/onCartRefreshSuccess', [ cart ]);
                }
            });
        }