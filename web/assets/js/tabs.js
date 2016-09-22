// Intial Border Position
var activePos = $('.mm-tabs-header .mm-active').position();

// Change Position
function changePos() {

    // Up<a href="http://www.jqueryscript.net/time-clock/">date</a> Position
    activePos = $('.mm-tabs-header .mm-active').position();

    // Change Position & Width
    $('.border').stop().css({
        left: activePos.left,
        width: $('.mm-tabs-header .mm-active').width()
    });
}

changePos();

// Intial Tab Height
var tabHeight = $('.mm-tab.mm-active').height();

// Animate Tab Height
function animateTabHeight() {

    // Update Tab Height
    tabHeight = $('.mm-tab.mm-active').height();

    // Animate Height
    $('.mm-tabs-content').stop().css({
        height: tabHeight + 'px'
    });
}

animateTabHeight();

// Change Tab
function changeTab() {
    var getTabId = $('.mm-tabs-header .mm-active a').attr('tab-id');

    // Remove Active State
    $('.mm-tab').stop().fadeOut(300, function () {
        // Remove Class
        $(this).removeClass('mm-active');
    }).hide();

    $('.mm-tab[tab-id=' + getTabId + ']').stop().fadeIn(300, function () {
        // Add Class
        $(this).addClass('mm-active');

        // Animate Height
        animateTabHeight();
    });
}

// Tabs
$('.mm-tabs-header a').on('click', function (e) {
    e.preventDefault();

    // Tab Id
    var tabId = $(this).attr('tab-id');

    // Remove Active State
    $('.mm-tabs-header a').stop().parent().removeClass('mm-active');

    // Add Active State
    $(this).stop().parent().addClass('mm-active');

    changePos();

    // Update Current Itm
    tabCurrentItem = tabItems.filter('.mm-active');

    // Remove Active State
    $('.mm-tab').stop().fadeOut(300, function () {
        // Remove Class
        $(this).removeClass('mm-active');
    }).hide();

    // Add Active State
    $('.mm-tab[tab-id="' + tabId + '"]').stop().fadeIn(300, function () {
        // Add Class
        $(this).addClass('mm-active');

        // Animate Height
        animateTabHeight();
    });
});

// Tab Items
var tabItems = $('.mm-tabs-header ul li');

// Tab Current Item
var tabCurrentItem = tabItems.filter('.mm-active');

// Next Button
$('#next').on('click', function (e) {
    e.preventDefault();

    var nextItem = tabCurrentItem.next();

    tabCurrentItem.removeClass('mm-active');

    if (nextItem.length) {
        tabCurrentItem = nextItem.addClass('mm-active');
    } else {
        tabCurrentItem = tabItems.first().addClass('mm-active');
    }

    changePos();
    changeTab();
});

// Prev Button
$('#prev').on('click', function (e) {
    e.preventDefault();

    var prevItem = tabCurrentItem.prev();

    tabCurrentItem.removeClass('mm-active');

    if (prevItem.length) {
        tabCurrentItem = prevItem.addClass('mm-active');
    } else {
        tabCurrentItem = tabItems.last().addClass('mm-active');
    }

    changePos();
    changeTab();
});
