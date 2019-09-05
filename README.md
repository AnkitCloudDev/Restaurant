# README
Step1: Download Ruby on your local machine or use AWS Cloud 9 as it provides Ruby on Rails development Support. Follow the link for installing and setting up Ruby on Rails on windows machine:
https://gorails.com/setup/windows/10

Step 2 :Download and Extract the Code

Step 3: Navigate to the SnackBar folder 

Step 4: Install dependenices using the following Command:
bundle install

Step 5: Open the development.rb file located in config->environments folder and Add the corresponding content
as one single line! to the development.rb file
 FOR LOCALHOST: 
config.action_mailer.default_url_options = { host: 'localhost',port: 3000 }
For  Cloud9:
config.action_mailer.default_url_options = { host: ENV['IP'],port: ENV['PORT'] }

Step 6: Start Rails server using the command :
Rails server

For deployment on Heroku:

Step 1:(Assuming you have heroku and git cli installed)
git init

Step 2: Login to heroku
heroku login -i

step 3: To add files to git repo
git add .

step 4: To commit changes 
git commit -m "Message"

Step 5: To create a Heroku domain
heroku create 

Step 6: Push the repository to heroku
git push heroku master

