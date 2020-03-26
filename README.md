# Kapitan_201

Below tree structure shows nginx build for 3 different enviroment. <br>
Each enviroment contain different configuration and dev enviroment nginx.conf doesnt contain 404 error configuration as mentioned in the task ( even though file is present in dev folder). 



<pre>(kapitan) <font color="#8AE234"><b>veer@ubuntu</b></font>:<font color="#729FCF"><b>~/kapitan_ws/Kapitan_201</b></font>$ tree
<font color="#729FCF"><b>.</b></font>
├── <font color="#729FCF"><b>compiled</b></font>
│   ├── <font color="#729FCF"><b>dev</b></font>
│   │   ├── <font color="#729FCF"><b>manifests</b></font>
│   │   │   ├── <font color="#729FCF"><b>html</b></font>
│   │   │   │   ├── 404.html
│   │   │   │   └── index.html
│   │   │   └── nginx.conf
│   │   ├── README.md
│   │   └── run.sh
│   ├── <font color="#729FCF"><b>prod</b></font>
│   │   ├── <font color="#729FCF"><b>manifests</b></font>
│   │   │   ├── <font color="#729FCF"><b>html</b></font>
│   │   │   │   ├── 404.html
│   │   │   │   └── index.html
│   │   │   └── nginx.conf
│   │   ├── README.md
│   │   └── run.sh
│   └── <font color="#729FCF"><b>staging</b></font>
│       ├── <font color="#729FCF"><b>manifests</b></font>
│       │   ├── <font color="#729FCF"><b>html</b></font>
│       │   │   ├── 404.html
│       │   │   └── index.html
│       │   └── nginx.conf
│       ├── README.md
│       └── run.sh
├── <font color="#729FCF"><b>components</b></font>
│   ├── <font color="#729FCF"><b>my_component</b></font>
│   │   └── my_component.jsonnet
│   └── <font color="#729FCF"><b>other_component</b></font>
│       ├── __init__.py
│       └── <font color="#729FCF"><b>__pycache__</b></font>
│           └── __init__.cpython-36.pyc
├── <font color="#729FCF"><b>inventory</b></font>
│   ├── <font color="#729FCF"><b>classes</b></font>
│   │   ├── common.yml
│   │   └── my_component.yml
│   ├── dev.yml
│   └── <font color="#729FCF"><b>targets</b></font>
│       ├── dev.yml
│       ├── prod.yml
│       └── staging.yml
├── README.md
└── <font color="#729FCF"><b>templates</b></font>
    ├── 404.html
    ├── <font color="#729FCF"><b>docs</b></font>
    │   └── README.md
    ├── index.html
    ├── nginx.conf
    └── <font color="#729FCF"><b>scripts</b></font>
        └── run.sh

20 directories, 30 files
</pre>
