$("#countdown").countdown("2017/10/07",function(e){$(this).text(e.strftime("%D days"))}),$("#slideshow > li:gt(0)").hide(),setInterval(function(){$("#slideshow > li:first").fadeOut("slow").next().fadeIn(1e3).end().appendTo("#slideshow")},8e3);