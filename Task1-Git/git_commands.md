   1 git clone git@github.com:RajabovAhmadjon/Exadel_Internship.git
   2 cd .\Exadel_Internship\
   3 mkdir -p ./Task1
   4 git status
   5 mkdir -p ./Task1-Git
   6 cd .\Task1-Git\
   7 touch README.md
   8 New-Item -Path './README.md' -ItemType File
   9 git status
  10 git status
  11 git add .
  12 git commit -m "folder Task1 and README.md file"
  13 git push origin
  14 git status
  15 git status
  16 git branch
  17 git checkout -b dev
  18 New-Item "./any_test_file.txt" -ItemType File
  19 ls
  20 git status
  21 git add .
  22 git commint -m "dev branch, new test file"
  23 git commit -m "dev branch, new test file"
  24 git push
  25 git push --set-upstream origin dev
  26 git checkout -b %Akhmadjon-new_feature
  27 git branch
  28 New-Item "./README.md" -ItemType File
  29 git status
  30 git add .
  31 git commit -m "new branch %Akhmadjon-new_feature"
  32 git push
  33 git push --set-upstream origin %Akhmadjon-new_feature
  34 New-Item -Path "./.gitignore" -ItemType File
  35 git status
  36 git add .
  37 git commit -m "add .gitignore file"
  38 git push
  39 New-Item -Path "./.gitignore" -ItemType File
  40 New-Item -Path "./.gitignore.txt" -ItemType File
  41 New-Item -Path "./.gitignore" -ItemType File
  42 Set-Content -Path "./.gitignore" '.*'
  43 git status
  44 New-Item -Path "./.gitignore.txt" -ItemType File
  45 Set-Content -Path "./.gitignore.txt" '.*'
  46 git status
  47 git pull
  48 git remote
  49 git checkout main
  50 git pull
  51 git checkout dev
  52 git checkout main
  53 git merge dev
  54 git merge dev main
  55 git checkout %Akhmadjon-new_feature
  56 notepad.exe README.md
  57 git status
  58 git add .
  59 git commit -m "changes in README.md"
  60 git push
  61 git reset --hard HEAD~1
  62 git status
  63 git add .
  64 git commit -m "Revert last commit"
  65 git push
  66 git reset --soft HEAD~1
  67 git status
  68 git add .
  69 git commit -m "Revert last commit"
  70 git push
  71 git pull
  72 git status
  73 git checkout main
  74 git pull
  75 git log
  76 New-Item -Path "./log.txt" -ItemType File
  77 git log
  78 notepad.exe log.txt
  79 git status
  80 git add .
  81 git commit -m "add git log -> log.txt"
  82 git push
  83 git checkout -d %Akhmadjon-new_feature
  84 git checkout -D %Akhmadjon-new_feature
  85 git branch
  86 git checkout main
  87 git branch
  88 git checkout -d %Akhmadjon-new_feature
  89 git branch