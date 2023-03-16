# Create a StaticWebAPP and publish of GH -pages


### This program allows you to create a static web app, build it and deploy it to github pages using vite 
<br>
<p> It requires you to be logged into <strong>gh-cli 
</strong> as well as have vite installed on your machine</p>

Run the following bash script
    ```
    createProject.sh
    ```
    This will prompt you to choose a name for your project (This will also be your git-repository name) Choose whichever you want then press enter <br/>
### After that you'll be prompted with which template to use- currently supported are-<br/>
<ol>
    <li>React with typescript (react-ts)</li>
    <li>Preact with typescript (preact-ts)</li>
    <li>Vanilla with typescript (vanilla-ts)</li>
</ol>

All of these are directly using vite's own templates.

After that,a few seconds and the scripts will be done.

Wait a minute and you'll be able to go to your see your page at *'yourGitHubUsername.github.io/nameOfYourProject'*

Hope that helps!