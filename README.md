kevinSuttle/Dotfiles
========

I present my humble list of dotfiles. If you haven't experienced the freedom that comes from versioning your dotfiles, check out Github's dedicated [dotfile page](http://dotfiles.github.com).

Big thanks to [@holman](http://twitter.com/holman) for the [inspiration](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/),         
to [@mathias](http://twitter.com/mathias) for his [legendary collection](https://github.com/mathiasbynens/dotfiles/blob/master/.osx) of OSX dotfiles,    
to [@pengwynn](http://twitter.com/pengwynn) for his [dotfile](http://wynnnetherland.com/journal/dotfiles-discovery) [creativity](http://wynnnetherland.com/journal/dotfiles-discovery) and to     
[@tyrmored](http://twitter.com/tyrmored) for the [implemenation details](http://blog.sanctum.geek.nz/managing-dot-files-with-git/). 

## Sublime Text Config
Thanks to [@Paul_Irish](http://twitter.com/paul_irish) for this tip. Sublime doesn't ship knowing about *every* dotfile, so we can help it out a bit by editing it's Shell language configs. 

1. Go here in your Terminal of choice

    `cd ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/ShellScript/`

2. Edit the file '*Shell-Unix-Generic.tmLanguage*' by adding the following lines. 

[Paul's](https://github.com/paulirish/dotfiles#syntax-highlighting):

                <string>.aliases</string>
                <string>.bash_prompt</string>
                <string>.brew</string>
                <string>.exports</string>
                <string>.functions</string>
                <string>.git</string>
                <string>.gitattributes</string>
                <string>.gitconfig</string>
                <string>.gitignore</string>
                <string>.inputrc</string>
                <string>.osx</string>
                <string>.vim</string>
                <string>.vimrc</string>    

My additions:
                
                <string>.zshrc</string>
                <string>.zlogin</string>
                <string>.conf</string>
                <string>.screenrc</string>
                <string>.hushlogin</string>
                
###Calling Sublime from the Command Line: A Correction
For some reason, the documentation for Sublime Text 2 tells you that you need to symlink to ~/bin. Personally, I don't want that in my home directory. Besides, symlinks are meant to point anywhere by design, so why not have it point somewhere already on the path, where these kinds of things live anyway?  I just remove the ~, and put it in a place where it makes a bit more sense.     
  
**Note**: Because this is a system directory, you're going to need to authorize this symlink with your password. Only follow this if you know what you're doing.

`ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /bin/subl`

Then, in my `aliases.zsh` file, I make an alias for `subl` by adding `alias s='subl .'` Thanks [@mathias](https://github.com/mathiasbynens/dotfiles/blob/master/.aliases#L17).