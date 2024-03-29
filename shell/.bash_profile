# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="usr/local/bin:${PATH}"
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

export EDITOR="/Applications/Emacs.app/Contents/MacOS/Emacs"

#alias emacs="/usr/local/Cellar/emacs/24.5/Emacs.app"

# Some cool Github 
source ~/.git-completion.bash
source ~/.git-prompt.sh
alias gco='git co'
alias gci='git ci'
alias grb='git rb'

export PATH=/usr/local/bin:$PATH

# MacPorts Installer addition on 2015-10-31_at_15:21:08: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Custom (aka fuckin' brilliant) command prompt. Shows git branch if in git repo. \e sets the color of the branch to (RED). Ensure you escape correctly (http://stackoverflow.com/questions/342093/ps1-line-wrapping-with-colours-problem)
#export PS1='\h:\W \u\[\e[31m\]$(__git_ps1 "[%s]")\[\e[0m\]\$ '
export PS1='\h:\[\e[100m\]\[\e[97m\]\u\[\e[0m\]\[\e[0m\] \[\e[94m\]\w\[\e[0m\]\[\e[31m\]$(__git_ps1 "[%s]")\[\e[0m\]\$ '

# Make the display even more awesome by color coding different types of files. For ref: http://www.mkyong.com/mac/add-color-to-the-bash-terminal-in-mac-os-x/
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Initialize ROS
# source ~/ros_catkin_ws/install_isolated/setup.bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Set locale so that UTF-8 is recognized
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Nvidia CUDA stuff, baby!
export PATH=/usr/local/cuda/bin:/Developer/NVIDIA/CUDA-5.0/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:/Developer/NVIDIA/CUDA-5.0/lib:$DYLD_LIBRARY_PATH

# OpenCV 3 with Python3. Get my research groove on!
export PYTHONPATH=$PYTHONPATH:/usr/local/Cellar/opencv3/3.1.0_1/lib/python3.5/site-packages/

# Caffe
export PYTHONPATH=$PYTHONPATH:/Users/varun/projects/caffe/python

##
# Your previous /Users/varun/.bash_profile file was backed up as /Users/varun/.bash_profile.macports-saved_2016-04-23_at_16:59:04
##

# MacPorts Installer addition on 2016-04-23_at_16:59:04: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$HOME/.poetry/bin:$PATH"
source '/home/varun/.nvm/versions/node/v15.4.0/lib/node_modules/@hyperupcall/autoenv/activate.sh'

# Rust
. "$HOME/.cargo/env"
