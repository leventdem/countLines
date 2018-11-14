# countLines
Just a bash script to count lines in specific folders

# Usage

Suppose you have a project folder called _myProject_ : 
```bash
[user@localhost myProject]$ tree
.
├── dist
│   └── index.js
├── nodes_modules
│   └── array-equal
│       ├── component.json
│       ├── index.js
│       ├── LICENSE
│       ├── package.json
│       └── README.md
├── src
│   └── index.js
└── test
    └── index.test.js

```
To get the total lines of all files in src and test folders, just run : 
```bash
[user@localhost myProject]$ countLines.sh src test
Project name: myProject
Total for all folders: 614

```

To obtain detail of files, just change the TO_PRINT settings to "TRUE",
you can also use this tip to change it in one line command : 
```bash
sed -i 's/FALSE/TRUE/g' countLines.sh
```
If you run the same command with true : 
```bash
[user@localhost myProject]$ countLines.sh src test
Project name: myProject
Folder : src
src/index.js: 256
Total for src : 256
Folder : test
test/index.test.js: 358
Total for test : 358
Total for all folders: 614
```

You can copy this script to /usr/bin to have access to it everywhere.


