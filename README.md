# Robot-Framework-example

## Introduction
This guide will give you some ideas how to use [Robot Framework](https://robotframework.org/) to automate tests. 
You will learn steps to install Robot Framework, see some sample test cases and understand 
how things work, and some discussion on challenges.

## Installation
1. Install Python

    You could open Terminal/Command Prompt and type below command to check if python is already installed. 
    ```
    python -- version
    ```

    If not, you could download and install Python [here](https://www.python.org/downloads/).

    Restart Terminal/Command Prompt program after installation.

2. Install Robot Framework  

   Type in Terminal/Command Prompt:
   
   ```
   pip install robotframework
   ```
   
   You could find more in-depth instructions [here](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst)

## Select code editor

Check out [this page](https://robotframework.org/#tools) and see the section about editors. Besides, PyCharm is also a popular editor.

## Running sample project

  Go to /Sample-project/Search-in-Website, run:
    
    robot -d results/chrome TestSuite01
    
  or:
  ```
  python -m robot -d results/chrome TestSuite01
  ```
  
## Check Test Suite result

In folder /results/chrome, you could check details of the latest testing result in the 3 html files.

## What we learned

1. The failed test case 