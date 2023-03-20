# Create a Vite StaticWebAPP and publish of GH -pages


### This program allows you to create a Vite static web app, build it and deploy it to github pages using vite 
<br>

## Requirements
<ul>
    <li>gh cli installed - https://cli.github.com/manual/installation</li>
    <li>logged into gh cli</li>
    <li>node installed - https://nodejs.org/en/download/</li>
</ul>


Run the following in your terminal ```sh createProject.sh ```
This will prompt you to choose a name for your project (This will also be your git-repository name) Choose whichever you want then press enter <br/>
### After that you'll be prompted with which template to use- currently supported are-<br/>
<ol>
    <li>React with typescript (react-ts)</li>
    <li>Preact with typescript (preact-ts)</li>
    <li>Vanilla with typescript (vanilla-ts)</li>
</ol>

All of these are directly using vite's own templates.

After those few seconds the script will be done.

Wait a minute and you'll be able to go to your page at *'yourGitHubUsername.github.io/nameOfYourProject'*

Hope that helps!