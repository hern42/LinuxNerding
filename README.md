# LinuxNerding
A bunch of stuff I want to remember when configuring other stuff... aka "external memory log".

Based on a re-install of espresso (my laptop) april 2020, the year of the lockdown, yeah yeah...

## Before reinstall
Remember to backup everything! EVERYTHING!

Specially the config files of for instance mpd, vim, beet. Get the wifi driver thingy... my card is a standard *802.11*. And have a look at the extra lines in the apt sources.list

## Where to get your iso...
Given the fact that using the real completely free, etc. iso is garanteed to give you a headache I suggest to get the netinstall iso with the non-free drivers. And if that is a huge ethical problem, have a stiff drink. This is mainly for the WiFi driver.

e.g. https://cdimage.debian.org/cdimage/unofficial/non-free/images-including-firmware/current/amd64/iso-cd/


## Getting from stable to unstable
Because we like to live dangerously... There one needs to edit the `/etc/apt/sources.list` and change all *stable* (or buster) to *unstable*, and comment the lines corresponding to security updates as they are included in unstable per say.

Then a good old `apt update` and `apt full-upgrade`. That will take a while.

I use XFCE as my desktop thingy (I dislike KDE and Gnome, too, err, blingy?) and it was interesting to see what apps it was loaded with. Synaptic is by default so I did not need to install it. I usually do all my apt things in the command line but sometimes to look around for something or just to browse Synaptic is pretty nice.

## First thing first, getting behind a secure VPN
I use airvpn.org for my VPN. They have a GUI client called Eddie but one can also download a config file from the website and use openvpn directly in the terminal. Neat. Anyway to get Eddie just follow the instruction at https://airvpn.org/linux and then it'll get update via apt as the rest of the machine...

Next thing is to install KeepassXC to recover the .kdbx file with all the passwords and all that. I hope you correctly backed-up that one and that you did not forget your passphrase. KeepassXC is obtainable via apt.

## A bunch of stuff to do things...
Here is a list of software I'll have on the machine, organised roughly as they would be in the menu (plus the ones in terminal shoved into the list, yes there shall be a "diverse" category, there is always one...)

- Accessories (aka Diverse!)
  - db browser for SQLite
  - gnomedisks (I haven't found anything other than this for the moment)
  - KeepassXC
  - owncloud client (Just as a reminder)
  - redshift (with the gtk version in order to add it in the panel of XFCE, this thing shifts the color of the screen towards red at night...)
  - curl
  - orpie (a NP calculator in terminal!)
  - unrar (and additionally unrar-free, not entirely sure of the difference but whatever...)
  - grsync (note: eventually I'll need to learn how to use rsync period, to be able to synch via ssh...)
  - kitty (some weird terminal with funky capabilities such as tabbing and splitting, not entirely sure how to use it but it looks cool)
  - tmux (in the same vein as kitty)
  - MidnightCommander (aka mc, because Thunar, XFCE's file manager, is nice but lacks a double panel option...)

- Graphics
  - darktable
  - GIMP
  - Inkscape (for vectorial graphics)
  - Scribus
  - XnView (a very nice little piece of software that does a lot of stuff with images, free if not for a company: https://www.xnview.com/en/xnviewmp/#downloads)
  - Xsane (so that was weird, it came as preinstalled, I cannot really see why but there is was, for scanning of course... I am sure I'll have to work on it a bit to get the driver for my scanner but I do not have it with me at the moment so that'll wait.)

- Sound/Video
  - Cmus (I previously used MOC to listen to music in the terminal but I wanted a change of scenery so I'm trying this one now.)
  - mpd + ncmpcpp (There'll be a full section on mpd, for obvious reasons...)
  - VLC
  - Picard (an app to automatically tag audio files, with a GUI)
  - beets (http://beets.io/ which is pretty much the same as Picard but in the command line and with tons of plugins and shit, so there'll be a section later for that, it is fun!) my config file for beets is in the config folder (there is not much magic in there but at least I'll remember which plugins I use (to be installed with `pip` by the way))
  - XFCA (to convert stuff from pretty much anything to anything, in my case mostly to put .flac into .mp3)
  - youtube-dl (from apt, very nice and efficient)

- Internet
  - Firefox (comes pre-installed, which is nice)
  - Signal (get the desktop version here https://signal.org/download/# it'll be added to apt and all that, is very often updated...)
  - Deluge (for torrents, I previously used Transmission but I wanted to try something else, besides Deluge is made in python and I have this little obsession with python learning at the moment so that is that.)
  - TOR + OnionShare (obviously!)
  - *(I used to use Vivaldi as my main browser but I'm trying to stick to Firefox for the moment, we'll see if I feel the urge to change.)*
  - Irssi (for documentation reasons, I haven't been on IRC in forever but lest I forget which app to use to get there...)
  - Eddie (GUI for airvpn)
  - *mutt (OK so that's been in the pipe forever, I'll stick it here just to remind me that, yes, at some point, I'll get to it...)*

- Office stuff
  - Libreoffice (comes pre-installed)
  - Calibre (magnificent app to manage ebooks and e-readers...)
  - PDFChain (GUI for pdftk)

- Coding/development (yes given my level in coding, this is a bit pretentious...)
  - Vim (I recently learned a ton of new stuff with plugins and shit so there'll be a section fof vim... Well, there should be a complete notebook full of vim stuff to be honest.)
  - Git (same thing... beware though to `apt install git` and not `git-all`)
  - Python (2 and 3, comes with the box... but as it is the obsession of the moment there'll be a section for that.)
  - Pycharm (my main IDE at the moment, it was a bit tricky so there'll be a section for it, in the python section.)
 
 I may have forgotten some stuff. That'll get updated from time to time.

 Oh, and of course I play a bit of nerdy games from time to time: Stone Soup Crawl (just `apt install crawl`) and Dwarf Fortress. For emulation purposes Higan is nice and covers pretty much all the retrogaming needs. There may be a little bit of info on DosBox and Ultima IV and V at some point later.

- Stuff that at some point was used...
  - Geeqie (Image browser of some sort)
  - RawTherapee (darktable equivalent)
  - Audacity (to manipulate sound files)
  - mplayer (competitor for VLC)
  - Arduino (directly from apt as the one taken from the website did some weird stuff when I tried to install it...)
  - GPXSee (app to see stuff coming from GPS tracks... It seems to be broken in apt at the moment)
  - Keybase + Telegram
  - Etcher (app to flash iso to USB sticks, as an AppImage (not opensource) https://www.balena.io/etcher/)
  - Atom (IDE)

## Now let's make a nice looking conky!
Conky is very nice to display stuff on the desktop background but it can quickly become a time vortex where one disappears trying to add this or that nice feature... Anyhow, first `apt install conky-all` to have all the possibilities installed.

The config file is in ~/.config/conky/conky.conf there are a lot of places on the web to get information about that but I find this page http://conky.sourceforge.net/variables.html very usefull as it describes all objects/options one can use in the config file.

As I am now using `cmus` to listen to music on espresso I wanted to add that on conky as well but there is no straight out of the box way to make them interact (as opposed to mpd which is very well supported) so I used a bash script using `cmus-remote` which is a commandline thing that lets you interact with cmus (weird as `cmus` is already in a terminal somewhere but whatever...) with the *-Q* option one can get a bunch of information and then it's a matter of parsing it to create a nice string to ship to conky via *$execi*. It's all in the script file in the config folder (together with the credit where I got the script before adapting it). **Edit:** Well, I just did this one with a python3 program, just because I wanted to see if I could do it. The program is in the config files and the actual conky.conf reflects the change.

The weather forecast is coming via `curl` from http://wttr.in/YourTown which is just amazing.

The last thing to do is to have conky start on login, which I did with no magic but the Settings->Session&Startup menu in XFCE... 

Screenshot...
![Screenshot](/img/Screenshot_2020-04-25_11-02-01.png)

## OK, Vim it is now.
So vim is pretty much mandatory around here. I cannot even begin to understand how to live without vim. I won't get into the vim vs. emacs war as I never used emacs in my entire life, not once. So I cannot say anything about that. I installed vim with `apt install vim-gtk3` NOT because I wanted gvim which is an aberation but because I wanted vim to be installed with python3 support and that's the only way I found to do it.

The first thing is to create a .vimrc file and make that to one's liking. Which can be anything from one line to add numbers on the side to a shitload of things. And then I read a bunch of stuff about how to turn vim into a python IDE and learned a few funky stuff along the way. First of all there is a nice plugin manager which is called Vundle and can get pulled into your machine via github... https://github.com/VundleVim/Vundle.vim 

It is done like `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim` as explained. And then there is a bunch of things to add to .vimrc which is also explained.

Here is the list of plugins I added (undoubtedly it will grow):
- NERDTree (to have a file tree on the side of vim)
- SimpylFold (to fold code functions, classes, loops, etc.)
- indentpython (for proper PEP8 indentation, not a vundle thingy though, it comes from https://github.com/vim-scripts/indentpython.vim)
- vim-fugitive (for git integration, mainly to allow the git branch to be displayed in the status bar)

The status bar configuration is a total attention sink and can become like a church war. I tried to keep mine simple and without too much attention to colors because I noticed that when I use `tmux` to multiplex my terminal they tend to change... I haven't tamed `kitty` yet as a multiplexer.

The .vimrc is in the config folder here.

## Python stuff
So python2 and python3 come preinstalled on debian. Nothing to worry about here. In terms of IDE I fancy myself using a combination of proper vim and terminals but, well, I got almost bullied into using a dedicated IDE. For some time I used `atom` but it crashed on me on the last *espresso* and I didn't bother fixing it as I was told to have a go at `pycharm`. So I reinstalled pycharm on the ne *espresso*.

Pycharm lives here: https://www.jetbrains.com/help/pycharm/installation-guide.html#standalone and I followed the stand-alone install so I have the startup script in my /opt/ which is nice but I want to have it in XFCE's menu as well. The answer to that is to create a `pycharm.desktop` in the folder ~/.local/share/applications/. Here is how it looks:
```
[Desktop Entry]
Version=1.0
Type=Application
Name=Pycharm
Comment=Python dedicated IDE
Icon=/opt/pycharm-community-2020.1/bin/pycharm.svg
Exec=/opt/pycharm-community-2020.1/bin/pycharm.sh
Terminal=false
StartupNotify=false
Categories=Development;IDE;
```
Then of course one has to make sure it's been `chmod 644` in order to have it readable. Then Pycharm will be available in the Menu under Development...

Next thing is to install `pip` as it is said to be the good way to install packages/modules/libraries in python, whenever possible. I followed the official https://pip.pypa.io/en/stable/installing/ and this tutorial https://gist.github.com/saurabhshri/46e4069164b87a708b39d947e4527298 to get it installed locally. Of course one has to use `python3` instead of `python` to get `pip3`. Then as all is installed in ~/.local/bin one has to add that to the $PATH, which turned out to be tricky...

I tried to create a .bash_profile file with `export PATH="$PATH:~/.local/bin"` in but without sourcing it it wouldn't load it at start-up. This became really annoying after a good bunch of reading things here and there about the proper way to things. Well, the proper way to do it was this way but it still doesn't work so I resorted to add said-line at the end of .bashrc instead which solved it but it is NOT satisfactory let me tell you that!


Then I wanted to try my new pip3 and install Tkinter to get back to what I was doing before this sudden urge to reinstall *espresso* and, well, I had to install it with a good old `apt install python3-tk` because Tkinter is not in pip. Go figure.

And lastly, `apt install python3-venv` to use virtual environments because it seems that it is the proper way to do things. I'm into proper ways to do things at the moment.

Update: `kivy` was one of the reason I started this whole reinstall thing so I got into installing that properly, ie via venv and guess what? I ended up installing it via apt because I ran into no end of issues with pip. So that is that. As a side note I had to install `xclip` and `xsel` to make it happy...

## Diverse (yeah, that's it, here we are...)
In order to connect my android phone to *espresso* I installed `Android-File-Transfer` via apt which is nice and doesn't install a single new dependency...


## Latex
So I got (almost) bullied back into using LateX and it is still totally fantastic. I discovered that the addons packages are also managed from inside it if one uses the `TexLive` distribution. The magic command is `tlmgr` (obviously for texlivemanager) and there is a bunch of stuff that can be done such as `tlmgr update --list` that gives you the list of upgradable packages installed. Nifty. It pretty much acts as a dedicated `apt`.


## What next?
Well, that's it for now... 
In the can:
- keep that thing updated when there are changes in some config or other, list of plugins and shit.
- actually I may change that to a wiki, the README stats to get very long...

See ya around,
yrs trly,
h42
