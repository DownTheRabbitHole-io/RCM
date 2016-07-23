$(document).ready(function() {

	$('#up').on('click', function(){
		$.fn.fullpage.moveSectionUp();
	})

	$('#down').on('click', function(){
		$.fn.fullpage.moveSectionDown();
	})


    $('#fullpage').fullpage({
        //anchors: ['RCM', 'Secure', 'Platforms', 'Service', 'Spread', 'Precious', 'Forex', 'Promotion'],
        menu: '#menu',
        css3: true,
        scrollingSpeed: 750,
        navigation: true,
        navigationPosition: 'right',
        easing: 'easeOutBack',
        //easingcss3: 'cubic-bezier(0.790, -0.225, 0.130, 1.335)',
        onLeave: function(index, newIndex, direction){
          //console.log(index, newIndex, direction);
          $('#up').hide();
          $('#down').hide();

		  console.log('onleave', '#section'+index);

          TweenLite.to($('#section'+index).find('.move-up'), 0, {
            marginTop: "30%"
          });
          TweenLite.to($('#section'+index).find('.move-down'), 0, {
            marginTop: "-30%"
          });

          TweenLite.to($('#image'+newIndex), 1.5, {
            marginTop: "0",
            onComplete: function(){

            }
          });

				},
        afterLoad: function(anchorLink, index){
          //console.log("afterLoad " + index + " - " + anchorLink);



          switch (index) {
            case 1:
              TweenLite.to($('#logo-small'), 0.7, {
                className:"big",
                marginTop: "21.2%",
                display: "none",
                onComplete: function(){
                  $('#logo').show();
                  TweenLite.to($('#logo-small'), 0, {
                    className:"small",
                    display: 'block',
                    top:"-80px"
                  });
                }
                });
              break;
            default:
              TweenLite.to($('#logo-small'), 1, {top:"10px"});
              $('#logo').hide();
              break;
          }
          if(index == 1) {
            $('#up').hide();
            $('#down').show();
          }else{
            $('#up').show();
            $('#down').show();
          }
          if(index == 8) {
            $('#down').hide();
          }
        },

      });
});
