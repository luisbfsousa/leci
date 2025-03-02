# somm24nm
SO/FSO  Simulating a uniprocessor scheduler, contiguous memory allocation system

******
******

## Prerequisites

On Ubuntu you need the following packages installed: 
_build-essential_, _cmake_, _doxygen_, and _git_.

```
sudo apt install build-essential cmake doxygen git
```
In other Linux distributions you need equivalent packages installed.

******

## Checking access to the GibHub repositories

The best way to access your repositories in GitHub is having a public SSH Key to your computer there.
If you don't have one, proceed as follows:

- In your computer, in Linux, check if you have, in your home directory, a folder named <tt>.ssh</tt> with a file whose name ends in <tt>.pub</tt>.
- If not, run command <code>ssh-keygen</code>. 
  It will create the folder, if necessary, and 2 files.
- The file with termination <tt>.pub</tt> contains your public key.
- In GihHub, press your icon (at top right corner) and choose <tt>Settings</tt>
- In the page that appears, choose <tt>SSH and GPG Keys</tt>. 
- Then press the <tt>New SSH Key</tt> button.
- Fill a title (typically the name of your computer) and copy the contains of the <tt>.pub</tt> to the key field.
- Finally, press the <tt>Add SSH Key</tt> button.

******

## Cloning the repo

In a directory of your choice, clone the project to your computer

```
cd «directory-of-your-choice»
git clone https://git@github.com:ua-so-fso/«your-project»
```

******

## Generating documentation

The code is documented in **doxygen**. So, you can easily generate **html** documentation pages.

```
cd «directory-of-your-choice»
cd somm22nm/doc
doxygen
```
Then, you can display the pages running (inside the **doc** directory)

```
firefox html/index.html &
```

Of course, you can replace _firefox_ with your favorite browser.

******

## Preparing the compilation environment

In a terminal, enter the base directory of your project, create the **build** directory,
and use _cmake_ to prepare _make_

```
cd «directory-of-your-choice»
cd «your-project»
mkdir build
cd build
cmake ../src
```

If you prefer _ninja_, instead of _make_,

```
cd «directory-of-your-choice»
cd «your-project»
mkdir build
cd build
cmake -G Ninja ../src
```

******

## Building the code

In a terminal, enter the **build** directory of your project and run _make_ or _ninja_

```
cd «directory-of-your-choice»
cd «your-project»«your-project»«your-project»/build
make
```
or

```
cd «directory-of-your-choice»
cd «your-project»/build
ninja
```

******

## Setting your user name and email in Git

Commands

```
cd «directory-of-your-choice»
cd «your-project»
git config user.name "«your name»"
git config user.email "«your email»"
```
allows you to set your user name and email for this repository.

If you want to apply the settings to all repositories in the computer, run the followings commands instead.

```
cd «directory-of-your-choice»
cd «your-project»
git config --global user.name "«your name»"
git config --global user.email "«your email»"
```

******

## Testing the code

After building the code, a program will be put in the <tt>«your-project»/bin</tt> directory. 
It is a default test program delivered with the base code.

You may edit it (<tt>main.cpp</tt>) to write your own tests.

Alternatively, you can write new test programs.
In this case, do not forget to add them to the main <tt>CMakeList.txt</tt> file.


