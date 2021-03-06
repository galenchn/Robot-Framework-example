# Robot-Framework-example

## Introduction
This guide will give you some ideas how to use [Robot Framework](https://robotframework.org/) to automate tests. 
You will learn steps to install Robot Framework, see some sample test cases and understand 
how things work, and some key points to notice.

## Installation
1. Install Python

    You could open Terminal/Command Prompt and type below command to check if python is already installed. 
    ```
    python -- version
    ```

    If not, you could download and install Python [here](https://www.python.org/downloads/).

    Restart Terminal/Command Prompt program after installation.

2. Install Robot Framework and library  

   Type in Terminal/Command Prompt:
   
   ```
   pip install robotframework
   pip install robotframework-selenium2library
   ```
   
   You could find more in-depth instructions [here](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst)

## Select code editor

Check out [this page](https://robotframework.org/#tools) and see the section about editors. Besides, PyCharm is also a popular editor.

## Running sample project

  Go to /Sample-project/Search-in-Website, run:    
  ```
  python -m robot -d results/chrome TestSuite01
  ```
  By running this command, latest test results will be updated into results/chrome folder.
  
## Check Test Suite result

In folder /results/chrome, you could check details of the latest testing result in the 3 html files.

## Things to notice

### 1. White list your tester IP in server administration 
   When running many automated tests, we may get blocked & blacklisted by server. In preparing this demo, I ran 
    into this issue, and my connections to ssense.com got terminated. I had to set up a seperate machine to
    finish the tests. 
    
   Also automated tests need to by pass security check pages like this:
    ![SSense verification page](https://github.com/galenchn/Robot-Framework-example/blob/master/Sample-project/Search-in-Website/results/chrome/SecurityCheck.png)
       

### 2. Update browser driver 
   Old browser driver would sometimes lead to unexpected errors.
   
### 3. Sometimes internal functions are necessary to support automated test cases
   For example, sometimes events are driven by javascript and jquery, which automated browser 
   could not track all the way through. Testers need to read source codes to determine which event to track. 
   Building internal functions is a common way to help test automation to work around.