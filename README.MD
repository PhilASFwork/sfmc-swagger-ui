Heroku: Under Deploy tab, connect to GitHub repo, check Wait for CI to pass, and Enable automatic Deploys

Travis: Connect GitHub Repo and activate the repo in Profile.

Code Updates:	Log into the Heroku website, and click account settings.
				Scroll to API Key, reveal it and copy it.
				Open a command line (cmd, etc.) and navigate to the root directory of the GitHub repo.
				Run: `travis encrypt HEROKU_PASSWORD=<paste API Key here>'
				Do not call the Environment Variable "HEROKU_API_KEY". That is a reserved name and it will mess things up.
				Change the HEROKU_EMAIL variable to whatever your username is.
				Change the application/repository name where needed. 
				