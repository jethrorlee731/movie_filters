# movie_filters

## Steps to run GuptaKRongoneSLeeJ_application.py

1) Download the zip file GuptaKRongoneSLeeJ_project.zip. Unzip the folder.
2) Open MySQLWorkbench.
3) Log into my MySQLWorkbench. Establish a MySQL connection.
a) Link to download MySQLWorkbench:
https://dev.mysql.com/downloads/workbench/
4) From the downloaded folder, open the following file:
GuptaKRongoneSLeeJ_schemadump.sql in MySQLWorkbench. Execute the
script. This should create the “entertainment” schema with all of its procedures
and functions.
5) Check that one of the latest versions of Python (3.8.9 or newer) is installed on
your computer.
  - Run the command “Python” in the terminal to determine if it is installed.
  If it is not installed, install it.
6) Open PyCharm. This is the IDE that will be used to run the application.
  - Link to download PyCharm:
  https://www.jetbrains.com/pycharm/download/#section=mac
7) Create a new project or open an existing project in PyCharm.
8) In the top toolbar, click “PyCharm”, then “Preferences”. This should open a
“Preferences” window.
9) On the left side, go to the tab “Project: [project name]”. Under it, select “Python
Interpreter.”
10) If not installed already, ensure that the following libraries are installed. Click the
“+” sign on the window to install the necessary libraries. If these libraries are
already installed, skip to step 14:
  - PyMySQL; version 1.0.2; Author: yutaka.matsubara
  - cryptography; Version 37.0.2; Author: The Python Cryptographic
    Authority and individual contributors
  - matplotlib; Version 3.5.2; Author: Michael Droettboom
11) Exit out of the package installation tab.
12) Click “OK,” which is located on the blue button in the “Preferences” tab.
13) Access the terminal by clicking on “Terminal” at the bottom. Type “Python”, “pip
install pymysql”, “pip install cryptography”, and “pip install matplotlib” to double
check that the machine being used has all the necessary installments complete.�
14) On the top toolbar, click “File” then “Open”. Select
GuptaKRongoneSLeeJ_application.py”
15) Run GuptaKRongoneSLeeJ_application.py in PyCharm.
16) If the above steps are done correctly, when the program is run, it should prompt
an entry for MySQL username and MySQL password so that a connection to
MySQL (“entertainment” schema) can be established. Once the connection is
established, the application will run, prompting the user for inputs as needed.
