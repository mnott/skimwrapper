Welcome to SkimWrapper!
=====================


Summary
---------

This is a small wrapper script (and documentation) that I came up with when trying to work around the completely fucked up PDFKit implementation that Apple is torturing its customers with - and that, most importantly, prevents
the awesome application [Skim](http://skim-app.sourceforge.net) from working correctly. You can read more details about the problem [here](http://www.mnott.de/how-to-workaround-the-fucked-up-pdfkit-in-sierra/), and a long discussion on it [on the Skim forum](https://sourceforge.net/p/skim-app/bugs/1109/).

Now, there is no real fix for this problem as for the time being. Apple has, in a pretty much post-factual way, increasingly claimed having repaired PDFKit, while with each MacOS beta, it actually got worse.

The workaround works like so:

1. Swap the default PDFKit with the Mavericks one
2. Launch Skim
3. Wait some 5 seconds
4. Swap the PDFKit back in favor of the default one

The deployment of the workaround consists of the following five simple steps:

1. Get a working PDFKit (from Mavericks)
2. Amend your sudoers file
3. Disable System Integrity Protection
4. Deploy the working PDFKit
5. Install and optionally configure SkimWrapper

Restrictions
=========

It is necessary to switch back to the original PDFKit after launching Skim, otherwise Preview will likely not work on PDF files.

Since the workaround involves swapping the different PDFKit versions when you start Skim, and those PDFKit versions are in a directory protected by System Integrity Protection, you need to switch System Integrity Protection off, and keep it off.

If you cannot live with that, read no further.

If you are annoyed by that, call your local Congress woman and also make sure to [let Apple know](https://bugreport.apple.com) how much annoyed you are.


Open Points
===========

For some reason, about half the time I use **Open With SkimWrapper**, it does not pass along the file name. I don't know how to fix that, but if it happens, it will still have started Skim with the right PDFKit, which means, you can just then **Open With Skim** to load the PDF(s) directly into the already running Skim. If you know how to fix it, feel free!


Deployment
=========

----------
1. Get a working PDFKit
---------

I have described the process very much in detail [here](http://www.mnott.de/how-to-workaround-the-fucked-up-pdfkit-in-sierra/). If you don't want to bother with creating a temporary installation of Mavericks in a virtual machine, you can also download the PDFKit as I described at the top of the article.

----------
2. Amend your sudoers file
---------

<u>Whenever you see **mnott** in the commands below, replace that with your own user name.</u>

Open a Terminal window.

The included scripts make heavy use of the **sudo** command. You have a file **/etc/sudoers** that you can amend like:

````
su -
echo "mnott ALL=(ALL) NOPASSWD: ALL" >>/etc/sudoers
````

You should be asked for your password, and the second line will remove the need to enter a password for your user. Just type **exit**, followed by **Enter** and then try to see whether you can become root by just typing **sudo su -**, followed by **Enter**. If you are not asked for a password, you are good to go; otherwise you've to figure out what went wrong. If not, type again **exit**, followed by **Enter**, to become your own user again.

----------
3. Disable System Integrity Protection
---------

In [the same article](http://www.mnott.de/how-to-workaround-the-fucked-up-pdfkit-in-sierra/), scroll down to the section **How do we deploy PDFKit.framework**. First, I show you there how to disable System Integrity Protection. Just follow the instructions in that article.

----------
4. Deploy the working PDFKit
---------

In that same article, after showing how to disable System Integrity Protection, I show you how to deploy the working PDFKit as an alternative, alongside the default version. Over there, I have assumed that you have downloaded the Mavericks version of PDFKit to **/Volumes/LaCie/Mavericks/PDFKit.framework**. Let's assume, alternatively, you have downloaded and extracted it so that you have it in your **~/Downloads** folder. From the previous step, you still have a terminal window open within which you are root. Do this:

````
cd /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/
sudo mv PDFKit.framework PDFKit.framework.sierra
sudo mv ~/Downloads/PDFKit.framework PDFKit.framework.mavericks
sudo ln -s PDFKit.framework.sierra PDFKit.framework
````

The script that I then give in that article is part of this workaround, so you can now continue following this description here.

----------
5. Install and optionally configure SkimWrapper
----------

Now let's assume you have dowloaded the git project to your **~/Downloads** folder, where you now have a directory **skimwrapper-master** (if you used the "Clone or Download" - "Download ZIP" option), or **skimwrapper** (if you used **git clone https://github.com/mnott/skimwrapper**), which, among other things, contains a file **README.md** (this file), as well as a directory SkimWrapper.

If you have your copy of **Skim** installed as **/Applications/Skim.app**, you should not need to do anything special. But you may still want to look at the file **SkimWrapper/Contents/Resources/script** for some configuration that you may find interesting, right at the top of the file:

````
#
# Configuration:
#
SKIM=/Applications/Skim.app

USE_GROWL=false
````

The first line allows you to specify where you have your **Skim.app**. The second line allows you to get nice status messages: For that to work you download and install [Growl](http://growl.info) and you then change that line to:

````
USE_GROWL=true
````

Once you have done all of this, rename the directory **SkimWrapper** to **SkimWrapper.app** and then move it to your **/Applications** folder.

Usage
=========

If you just double-click on the **SkimWrapper** application in your **/Applications** folder, MacOS should be clever enough to remember from now on that you want to use it for PDF files, i.e., it should show up, right under **Skim**, if you right-click on a PDF file and choose **Open with**.

If it does not show up there, you can try doing this command in a terminal window:

````
/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/Support/lsregister -kill -r -domain local -domain system -domain user
````

This is really all in one line, and it takes about 5 minutes. Then, log off and on again (or kill and restart Finder), and the **SkimWrapper** should show up in the open with context menu.

If you run **SkimWrapper** directly, i.e., not opening a given file with it, it still works and swaps around the PDFKit as it loads **Skim**.

