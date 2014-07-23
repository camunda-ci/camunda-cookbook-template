# camunda-template-cookbook


## Description

This repository can be used as a starting point when developing chef cookbooks for camunda.


## Usage

1. Clone this repository `git clone git@github.com/camunda-ci/camunda-template-cookbook.git`.
2. To clear the repository history, delete the `.git` folder and immediately reinitialize the folder as a git repository using `git init`.
3. Add the remote origin of your new cookbook repository like `git remote add origin git@github.com:camunda-ci/camunda-whatever-cookbook.git`.
4. Use a text editor or `sed / grep` whatever to replace the string `camunda-template` with your cookbook name eg. `camunda-jenkins` inside all files.
   Sed example `grep -lr --exclude-dir=".git" -e "camunda-template" . | xargs sed -i "s/camunda-template/camunda-jenkins/g"`.
5. Delete this `README` and rename `README.md.example` to `README.md`.
6. Add all files using `git add .`. Commit all files `git commit -m "Initial commit"`. Push all files to origin like `git push -u origin master`.

Have a look at the new `README.md` to get a description of what this cookbook template provides and how it is used.