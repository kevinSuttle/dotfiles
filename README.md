# ~/.dotfile

I present my humble dotfile. That's not a typo. It's one file—a single `.bashrc`.  
Here come the questions. I can *feel* them.

> 1. Why just one `.bashrc` file?
2. Why `bash/sh`?
3. What about your customizations?
4. If I follow this dotfile Zen philosophy, why would I care about this repo?

Here are my answers, in order.  

1. It's liberating to only have a single file to manage, especially when there's not much to its contents.  

2. `bash/sh` are universal and shipped as the default shells in all UNIX-based operating systems. In other words, I don't have to install anything.

3. Again, it's very refreshing to learn how to use the tools and their defaults, without relying on custom configurations. By following this philosophy, you can sit down at any UNIX machine and **instantly** know how to do, and where to find anything. No time wasted setting up environments, dotfiles, shells, editors, or anything else that doesn't get installed with your operating system.  

4. That is a very good question. My intention is that you may like the setup and want to build on it or fork it. It's meant as a starting point, or a model to mimic. You could also completely ignore this branch, and repo for that matter, not ever having any dotfiles that you've manually created. Your call. 

## Philosophy
This minimalistic approach was put forth by [@SStephenson](http://github.com/sstephenson), in [this post](http://sstephenson.us/posts/on-configuration), which is highly reccomended. Thanks [@JordanThomas](https://github.com/JordanThomas) for the reminder.

## Setup
1. Open up your terminal of choice.
2. Run ```source install.sh```
	- If you have existing files, they will **not** be overwritten. You can uninstall them if you want, using `uninstall.sh`, BUT see the disclaimer below.
3. Enjoy.

## Teardown + Disclaimer
1. Open up your terminal of choice.
2. READ `uninstall.sh`
3. THINK about `uninstall.sh` and what it'll actually do to your system
4. Sleep on it
5. Read `uninstall.sh` again and realize that what I'm doing here is warning you that your files **will be wiped** and I'm in no way responsible for your devil-may-care recklessness.
6. When you're ready, and have legally signed a waiver and faxed it to my pager,  
run ```source uninstall.zsh```
	- Again, existing files **will** be removed.
    - Enjoy?
