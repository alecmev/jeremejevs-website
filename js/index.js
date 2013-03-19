var backgroundAltered = false;

function updateBackground()
{
    if ($(window).width() < 804)
    {
        backgroundAltered = true;
        $('body').css('background-position', (-229 - $(document).scrollLeft()) + 'px 0px');
    }
    else if (backgroundAltered)
    {
        backgroundAltered = false;
        $('body').css('background-position', 'center top');
    }
}

$(window).load(updateBackground);
$(window).resize(updateBackground);
$(window).scroll(updateBackground);
