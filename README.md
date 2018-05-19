Code for provisioning a GitHub repo with all the required files. In addition to provisioning a repo with all the required files also standardizes the labels in the repo. This way if newbies are looking through Ruby for Good repos they can easily find the Beginner Friendly tag :)

Requires an environment variable `GIT_TOKEN` which is your github authentication token.

To provision a repo just run:
`ruby gitprov.rb <reponame> <repoadmin>`

So, if you wanted to create a new repo named testrepo with seanmarcia being an admin in the repo you would do the following:
`ruby gitprov.rb testrepo seanmarcia`