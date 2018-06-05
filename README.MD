Heroku: Under Deploy tab, connect to GitHub repo, check Wait for CI to pass, and Enable automatic Deploys
		Go to Settings, and select the appropriate buildpack. (??)
		
Travis: Connect GitHub Repo and activate the repo.

Commanline: Clone and navigate to the repo in the commandline.
			log into Heroku using `heroku login`
			Get the Heroku Auth Token using `heroku auth:token`
			Encrypt it for travis using `travis encrypt <results from above>
			Paste Results into .travis.yml