require 'watir'

email = 'edghuj@gmail.com'
pass = '147852369'

browser = Watir::Browser.new :ff
browser.goto 'http://tumblr.com/login'

email_ent = browser.text_field id: 'signup_email'
email_ent.set email

pass_ent = browser.text_field id: 'signup_password'
pass_ent.set pass

login_button = browser.button id: 'signup_forms_submit'
login_button.click

text_post_icon = browser.i class: 'icon_post_text'
text_post_icon.click

title = browser.element class: 'editor-plaintext'
title.send_keys 'Lorem ipsum dolor.'

text_post = browser.element class: 'editor-richtext'
text_post.send_keys 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quo laboriosam architecto sed minus odio quia quis dignissimos sit asperiores reprehenderit cupiditate exercitationem temporibus tempora quibusdam ipsa at, quidem voluptas. Laboriosam.'

hashtag = browser.elements(class: 'editor-plaintext')[2]
hashtag.send_keys '#Lorem #ipsum #dolor'

post_button = browser.button text: 'Post'
post_button.click