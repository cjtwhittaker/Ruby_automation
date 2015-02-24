require 'watir'

browser = Watir::Browser.new :ff
browser.goto 'http://amazon.co.uk'
search = browser.text_field id: 'twotabsearchtextbox'
search.set  'Eloquent Ruby'
search_button = browser.element class: 'nav-submit-input'
search_button.click
book = browser.link text: /Eloquent Ruby/
book.click
price = browser.element class: 'offer-price'
puts price.text


browser.quit