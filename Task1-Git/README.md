Task 1: Git/GitHub 
Additional information (optional):
1.	Read about Git https://git-scm.com/doc. Pay attention to the branching strategies.
2.	The “ADV-IT” YouTube channel is recommended (RU). 
(https://www.youtube.com/watch?v=DK2PsTcSFFM&list=PLg5SS_4L6LYstwxTEOU05E0URTHnbtA0l&index=1) 
3.	Read about SSH keys.
4.	Read about Markdown syntax.
5.	Explore pricing policy and your personal billing plan (GitHub).
6.	For better understanding complete this course https://learngitbranching.js.org/?locale=ru_RU
 
Tasks (mandatory):
1.	Create a Github account(if you don’t have one).
2.	Create new Github repository.
3.	Create “Task1” folder in the master branch. Create and push ./Task1/README.md file.
4.	Create new branch dev. Create and push any test file.
5.	Create new branch %USERNAME-new_feature.
6.	Add README.md file to your %USERNAME-new_feature branch
7.	Check your repo with git status command
8.	Add .gitignore file to ignore all files whose name begins “.”
9.	Commit and push changes to github repo.
10.	Create Pull Request to the dev branch.
11.	Merge your branch with the dev branch and create Pull Request to the master(main) branch. Merge dev with master(main).
12.	Checkout to %USERNAME-new_feature, make changes in README.md and commit them. Revert last commit in %USERNAME-new_feature branch.
13.	Check your repo with git log command, create log.txt file in master(main) branch and save “git log” output in it.
14.	Delete local and remote branch %USERNAME-new_feature.
15.	 Add all used command to the git_commands.md file in the dev branch.
16.	 Send the link to your Git Repository to your mentor via private Skype message.

For convenience, please follow to the folder structure on the picture.  

EXTRA (optional)*:
1.	Read about GitHub Actions. What environment variables can be created?
2.	Create your workflow, what consists of two jobs and contain requirements according the scheme below:

Workflow variables should contain two variables: 
1)	DEPLOY_VER - should contains SHA;
2)	YEAR - any year as you choose
First job should:
Step should:
1.	Print the list of files/directories in your github repository.
2.	Print content of your log.txt file.
3.	Print: “Hello from “your DEPLOY_VER variable’s content” commit”	Second job should:
1)	Run  after the First job is finished.
2)	Contain variable MONTH- any month as you choose
Step should:
1.	Contain variable DAY__OF_THE_MONTH - any day number as you choose.
2.	Print the system date and time
3.	Print your variable’s content:
 “Day - “DAY__OF_THE_MONTH”;
            Month - “ MONTH”;
  Year - “YEAR”.”

★	Imagine that you keep in secret your favorite day of week (FAVORITE_DAY_OF_WEEK) and don’t want to share it with anyone. So where will you define it?
Print: “My favorite day of week is “content of FAVORITE_DAY_OF_WEEK””

What result did you get and why?

