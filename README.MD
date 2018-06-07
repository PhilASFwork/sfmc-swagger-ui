### Heroku: 

*Log into the Heroku website, and navigate to Account Settings.
*Scroll down on the Account tab to API Key, reveal it and copy it.
*You can connect your GitHub repo if you want, but **do not** enable automatic deploys. our `.travis.yml` file deploys the application for you. 

### Travis: 

*Connect GitHub Repo and activate the repo in Profile.

### Code Updates:

*Open a command line (cmd, etc.) and navigate to the root directory of the GitHub repo.
*Run: `travis encrypt HEROKU_PASSWORD=<paste Heroku API Key here>'
*Do not call the Environment Variable "HEROKU_API_KEY". That is a reserved name and it will mess things up.
*Paste the encrypted value into the `secure:` tag in `.travis.yml`
*Change the HEROKU_EMAIL variable in the `.travis.yml' file to whatever your username is.
*Change the `application/repository` name where needed. 
