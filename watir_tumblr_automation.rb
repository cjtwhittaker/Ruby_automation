require 'watir'
bolg_add = 'http://choppedpizzaluminaryblr.tumblr.com/'
email = 'edghuj@gmail.com'
pass = '147852369'
title = 'Lorem ipsum dolor'
post_text = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo laboriosam architecto sed minus odio quia quis dignissimos sit asperiores reprehenderit cupiditate exercitationem temporibus tempora quibusdam ipsa at, quidem voluptas. Laboriosam.'
hashtags = '#Lorem #ipsum #dolor'

browser = Watir::Browser.new :ff
browser.goto 'http://tumblr.com/login'

browser.text_field(id: 'signup_email').set email
browser.text_field(id: 'signup_password').set pass
browser.button(id: 'signup_forms_submit').click
browser.i(class: 'icon_post_text').click

#making the post
title = browser.element(class: 'editor-plaintext').send_keys title
text_post = browser.element(class: 'editor-richtext').send_keys post_text
hashtag = browser.elements(class: 'editor-plaintext')[2].send_keys hashtags
post_button = browser.button(text: 'Post').click
