(function() {
  var evenMoreToggle, mainToggle, moreToggle, navigation;

  mainToggle = $('#main-nav .toggle');

  navigation = $('#main-nav .navigation');

  mainToggle.on('click', function() {
    mainToggle.toggleClass('is-triggered');
    if (navigation.hasClass('is-active')) {
      navigation.slideUp();
      return navigation.toggleClass('is-active');
    } else {
      navigation.slideDown();
      return navigation.toggleClass('is-active');
    }
  });

  moreToggle = $('#main-nav .more-toggle');

  moreToggle.on('click', function() {
    var allSeconds, secondLevel, that;
    that = $(this);
    secondLevel = that.siblings('.secondLevel');
    allSeconds = $('#main-nav .secondLevel');
    if (that.hasClass('is-active')) {
      secondLevel.slideUp();
      that.removeClass('is-active');
      moreToggle.removeClass('is-active');
      allSeconds.removeClass('is-active');
      return allSeconds.slideUp();
    } else {
      moreToggle.removeClass('is-active');
      allSeconds.removeClass('is-active');
      allSeconds.slideUp();
      secondLevel.slideDown();
      that.addClass('is-active');
      return secondLevel.addClass('is-active');
    }
  });

  evenMoreToggle = $('#main-nav .even-more-toggle');

  evenMoreToggle.on('click', function() {
    var SVG, allSVGs, allThirds, that, thirdLevel;
    that = $(this);
    thirdLevel = that.siblings('.thirdLevel');
    allThirds = $('#main-nav .thirdLevel');
    allSVGs = $('#main-nav .plus').children();
    SVG = that.find('use');
    if (thirdLevel.hasClass('is-active')) {
      allThirds.slideUp();
      allThirds.removeClass('is-active');
      return allSVGs.attr('xlink:href', '#plus');
    } else {
      allSVGs.attr('xlink:href', '#plus');
      SVG.attr('xlink:href', '#minus');
      allThirds.slideUp();
      thirdLevel.slideDown();
      allThirds.removeClass('is-active');
      return thirdLevel.addClass('is-active');
    }
  });

}).call(this);

//# sourceMappingURL=app.js.map
