# Main toggle is the orange Menu with hamburger icon
mainToggle = $('#main-nav .toggle')
# Navigation is the actual box with the links and stuff
navigation = $('#main-nav .navigation')

# On click we display or hide the navigation. Easy to grasp :)
mainToggle.on 'click', ->
  mainToggle.toggleClass 'is-triggered'
  if ( navigation.hasClass 'is-active' )
    navigation.slideUp()
    navigation.toggleClass 'is-active'
  else
    navigation.slideDown()
    navigation.toggleClass 'is-active'


# This toggles are the ones with the arrows pointing down
moreToggle = $('#main-nav .more-toggle')

# When any of those ones is clicked
moreToggle.on 'click', ->
  # First we define actually which one was clicked to perform stuff on it and we name it that
  that = $(this)
  # Then we transverse the DOM to find its correspondent <ul> tag with class .secondLevel
  secondLevel = that.siblings '.secondLevel'
  # We also need all of the other ones
  allSeconds = $('#main-nav .secondLevel')
  # If our current toggle is active, remove the class and also make small all of the second level items
  if (that.hasClass 'is-active')
    secondLevel.slideUp()
    that.removeClass 'is-active'
    moreToggle.removeClass 'is-active'
    allSeconds.removeClass 'is-active'
    allSeconds.slideUp()
  # else we remove the class and minimize everything else except the ones we care about
  else
    moreToggle.removeClass 'is-active'
    allSeconds.removeClass 'is-active'
    allSeconds.slideUp()
    secondLevel.slideDown()
    that.addClass 'is-active'
    secondLevel.addClass 'is-active'


# Now we basically do the same for the third nested UL with class .thirdLevel
evenMoreToggle = $('#main-nav .even-more-toggle')

evenMoreToggle.on 'click', ->
  that = $(this)
  thirdLevel = that.siblings '.thirdLevel'
  allThirds = $('#main-nav .thirdLevel')
  allSVGs = $('#main-nav .plus').children()
  SVG = that.find('use')


  # So if the third level is active we want to make all of the levels not-active and also return to our plus icons
  if ( thirdLevel.hasClass 'is-active')
    allThirds.slideUp()
    allThirds.removeClass 'is-active'
    allSVGs.attr 'xlink:href', '#plus'

  else
    # Removes the Minus off all SVGs
    allSVGs.attr 'xlink:href', '#plus'
    # Adds the minus to our SVG
    SVG.attr 'xlink:href', '#minus'

    allThirds.slideUp()
    thirdLevel.slideDown()
    allThirds.removeClass 'is-active'
    thirdLevel.addClass 'is-active'
