require 'watir'
bolg_address = 'http://choppedpizzaluminaryblr.tumblr.com/'
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

#making the post
browser.i(class: 'icon_post_text').click
title = browser.element(class: 'editor-plaintext').send_keys title
text_post = browser.element(class: 'editor-richtext').send_keys post_text
hashtag = browser.elements(class: 'editor-plaintext')[2].send_keys hashtags
post_button = browser.button(text: 'Post').click
#checking that the post appears on the blog

sleep 3 #should probably find a way to get it to work without this, all other wait methods seem to cause it to go to the new page too quickly though




browser.goto bolg_address
if browser.element(class: 'body-text').text == post_text
  puts 'the post has been submitted successfully'
else
  puts 'boooooo, seems like there was an error posting your blog :('
end
