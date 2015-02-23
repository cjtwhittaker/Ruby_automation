require 'selenium-webdriver'
email = 'edghuj@gmail.com'
pass = '147852369'
browser = Selenium::WebDriver.for :firefox
browser.get 'http://tumblr.com/login'
wait = Selenium::WebDriver::Wait.new(timeout: 10)

email_enter = browser.find_element id: 'signup_email'
email_enter.send_key email

pass_enter = browser.find_element id: 'signup_password'
pass_enter.send_key pass
pass_enter.submit

text_enter = browser.find_element id: 'new_post_label_text'
text_enter.click

title = browser.find_element class: 'editor-plaintext'
title.send_key 'title'

post = browser.find_element class: 'editor-richtext'
post.send_key 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum provident nisi iure quod, tempora autem officia animi rem velit deleniti non reprehenderit, ex incidunt, cupiditate neque, eius quisquam praesentium placeat.'

post = browser.find_element class: 'create_post_button'
post.submit
browser.exit
