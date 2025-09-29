# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC Alias
alias l='ls -gohtX --color=auto'
alias k='ls -gohtX --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -ga --color=auto'
alias ls='ls -gohX --color=auto'
alias k='ls -l --color=auto'
alias grep='grep --color=auto'
alias ..='cd ../'
alias ~='cd ~'
alias cd..='cd ../'
alias open='gnome-open'
alias size='echo $(pwd) && du -Sch $(pwd) | tail -n 1'
alias ducks='du -cksh * | sort -rh '
alias super-ducks='du -cksh * .[^.]* | sort -rh'
alias super-ducks='du -ckhs -- * .[^.]*'
alias psall='ps -u $USER -o user,pid,%cpu,%mem,bsdtime,command'
alias df='df -TH'
alias list_dev='sudo lsblk -lf'
alias mount_hd='sudo mount /dev/sdc /mnt/external_hd/'
alias unmount_hd='sudo umount external_hd'
alias power_off_hd='udisksctl power-off -b /dev/sdc'
alias open_hd='cd /mnt/external_hd'
alias fix_hd='sudo dosfsck -v /dev/sdc'
alias busy='cat /dev/urandom | hexdump -C | grep "ca fe"'
alias download='yt-dlp -cif 18 -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias audiobook='yt-dlp -cif 140 -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias show-running-services='systemctl --type=service --state=running'
alias show-all-info='inxi -Fxxxrz'
alias show-system-info='cat /etc/*release*'
alias show-open-ports="ss -tunp"
alias show-open-doors='sudo ss -tulpn'
alias show-os-version='cat /etc/os-release; cat /etc/upstream-release/lsb-release'
alias pip-update='pip-review --local --auto --continue-on-fail'
alias deepseek='ollama run deepseek-r1:8b'
alias lm_studio='lm-studio'
alias start-docker='sudo systemctl start docker'
alias fake-update='docker run --rm -it bcbcarl/hollywood'
alias activate='source venv/bin/activate'

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC GIT

alias gittree="git log --all --graph --decorate --pretty=format:'%C(bold blue)%h%C(reset) -%C(bold green)[%cr]%C(reset) - %C(bold red)<%an>%C(reset) -%C(bold yellow)%d%C(reset) %C(bold white)%s%C(reset)'"
alias gitdiff="git diff --color-words='[^[:space:]]|([[:alnum:]]|UTF_8_GUARD)+'"
alias gitbranches="git log --all --graph --decorate=short --pretty=format:'%C(bold blue)%h%C(reset) %C(bold yellow)%d%C(reset) %C(white)%s%C(reset)'"

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC SSH

alias x11vnc_create_pwd="mkdir -p .opt; x11vnc -storepasswd password .opt/.x11vnc_pwd"
alias x11vnc_run="x11vnc -rfbauth .opt/.x11vnc_pwd"
alias connect_krueger="ssh -X contesini@134.117.64.164"

# CCC`CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC Reference cmds

# List all connect hard dev
# sudo fdisk -l

# write iso into pendrive
# sudo dd if=Downloads/linuxmint-21.3-cinnamon-64bit.iso of=/dev/sdc bs=1M status=progress

# alias reverse-dependence='apt-cache rdepends pkgname'
# create symbolic links "ln -s ~/.opt/QuPath-v0.5.1-Linux/QuPath/bin/QuPath ~/.local/bin/qupath"

# Format flash pen-drive
# FAT 32
# sudo mkfs.vfat /dev/sdc1
# ext4
# sudo mkfs.ext4 /dev/sdc1

# Wipe flash pen-drive 
# sudo umount /dev/sdc1
# sudo dd if=/dev/zero of=/dev/sdc1 bs=1M status=progress

# Delete CLI history
# printf "\e[3J"

# Force loading pendrive
# sudo mount -o uid=$(id -u),gid=$(id -g) /dev/sdc1 /media/usbdrive

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC BEHAVIOR
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ PS-Pager
export PSQL_PAGER="pspg"
alias psql="PAGER= pspg psql"
# export PAGER="pspg"
export PSQL_EDITOR="/usr/bin/code"
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Bash
export HISTCONTROL=ignoredups
export HISTCONTROL=ignoreboth
export EDITOR=code
export BROWSER="brave '%s &'"
export HISTIGNORE="??:!!:clear:exit:logout:l:ls:ll:ls:bash"
export HISTTIMEFORMAT="%F %T "
shopt -s checkwinsize
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi
# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC Python venv

# whereis python | tr ' ' '\n' | grep ^/ | sort

# python3.10 -m venv my_venv
# source my_venv/bin/activate
# pip freeze > requirements.txt
# python3 -m pip install -r requirements.txt

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC Functions
function install_me () {
  
  sudo aptitude install -y \
    htop \
    git \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-lang-portuguese \
    texlive-publishers \
    texlive-fonts-extra \
    fonts-cmu \
    gnuplot \
    vlc \
    openssh-client \
    openssh-server \
    pypy3 \
    bat \
    gnome-software-plugin-flatpak \
    inkscape \
    xournal \
    evince \
    ripgrep \
    ranger \
    progress \
    tldr \
    just \
    screen \
    x11vnc \
    

#    pandoc \
#    ncdu\
#    duf\
#    mtr\
#    zoxide\
#    exa\
#    glances\
#    dstat\
#    watch\
#    termshark\
#    tshark\
#    errno\
#    unp\
#    jq\
#    asciinema\
#    fabric\
#    autokey-gtk

    # sudo aptitude install nodejs node-npm node-yarn node-react
    python3 -m pip install --upgrade pip

    Look into:
    # N8n
    # schema
    # Twingate
    # Pytoolz
    # python-tabulate
    # rich 
    # hypothesis

    pip3 install imageio ipython matplotlib numpy pandas scipy seaborn yt-dlp

    # Ollama CLI-LMM
    # Vscode
    # Java
    # sublime-merge
    # Typora
    # Brave browser
    # BlueJ
    # 
}
#----------------------------------------------------------- Count files by type
function count_files_by_type () {
  for dir in $(find . -type d); do
    echo -e "$dir - $(find "$dir" -type f -name "*.$1" | wc -l) "
  done
}
function reference_colors_PS1 () {
  echo -e " Color	\t Code (Light)  \t Code (Dark)"
  echo -e "\e[00m White	\t\e[00m e[00m  "
  echo -e "\e[00m Black	\t\e[1;30m e[1;30m \t \e[1;30m e[0;30m"
  echo -e "\e[00m Blue	\t\e[1;34m e[1;34m \t \e[0;34m e[0;34m"
  echo -e "\e[00m Green	\t\e[1;32m e[1;32m \t \e[0;32m e[0;32m"
  echo -e "\e[00m Cyan	\t\e[1;36m e[1;36m \t \e[0;36m e[0;36m"
  echo -e "\e[00m Red	\t\e[1;31m e[1;31m \t \e[0;31m e[0;31m"
  echo -e "\e[00m Purple	\t\e[1;35m e[1;35m \t \e[0;35m e[0;35m"
  echo -e "\e[00m Brown	\t\e[1;33m e[1;33m \t \e[0;33m e[0;33m"
}

function reference_colors () {
  echo -e "Color: \t\t Code "
  echo -e "Red: \t\t #f21821 "
  echo -e "Orange Red: \t #f8631f "
  echo -e "Orange: \t #fa931a "
  echo -e "Orange Yellow:   #ffc309 "
  echo -e "Yellow: \t #fff600 "
  echo -e "Yellow Green:    #66cc66 "
  echo -e "Green: \t\t #8bc83b "
  echo -e "Blue Green: \t #04b99e "
  echo -e "Blue: \t\t #01aef3 "
  echo -e "Blue Purple: \t #5954a8 "
  echo -e "Purple: \t #8f59a7 "
  echo -e "Purple Red: \t #bf168d "
  echo -e "Black: \t\t #000000"
  echo -e "Dark Grey: \t #191919"
  echo -e "Grey: \t\t #333333"
  echo -e "Light Grey: \t #666666"
  echo -e "White: \t\t #cccccc"
}
#---------------------------------------------------------------- List of Errors 
function reference_error () {
  echo "0 - Success"
  echo "1 - General error"
  echo "2 - Misuse of shell command"
  echo "1 - General error"
  echo "2 - Syntax error / invalid arguments"
  echo "3 - Configuration error"
  echo "4 - Network error"
  echo "5 - I/O error"
  echo "6 - No input file / file not found"
  echo "7 - Bad data format"
  echo "8 - Resource temporarily unavailable"
  echo ""
  echo "126 - Command not executable"
  echo "127 - Command not found"
  echo "128 - Invalid argument to exit"
  echo "129 - Fatal error signal 1 (SIGHUP - hangup)"
  echo "130 - Fatal error signal 2 (SIGINT - interrupt, Ctrl+C)"
  echo "131 - Fatal error signal 3 (SIGQUIT - quit, Ctrl+)"
  echo "132 - Fatal error signal 4 (SIGILL - illegal instruction)"
  echo "133 - Fatal error signal 5 (SIGTRAP - trace trap)"
  echo "134 - Fatal error signal 6 (SIGABRT - abort)"
  echo "135 - Fatal error signal 7 (SIGBUS - bus error)"
  echo "136 - Fatal error signal 8 (SIGFPE - floating point exception)"
  echo "137 - Fatal error signal 9 (SIGKILL - kill, non-catchable)"
  echo "138 - Fatal error signal 10 (SIGUSR1 - user-defined signal 1)"
  echo "139 - Fatal error signal 11 (SIGSEGV - segmentation violation)"
  echo "140 - Fatal error signal 12 (SIGUSR2 - user-defined signal 2)"
  echo "141 - Fatal error signal 13 (SIGPIPE - broken pipe)"
  echo "142 - Fatal error signal 14 (SIGALRM - alarm clock)"
  echo "143 - Fatal error signal 15 (SIGTERM - software termination)"
  echo

  echo "# Run second command only if first succeeds"
  echo "command1 && command2"
  echo 
  echo "# Run second command only if first fails"
  echo "command1 || command2"
}
#---------------------------------------------------------------- Unzip any file
function untar () {
  if [ -f $1 ] ; then
      case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *.xz)        tar xf $1      ;;
           *)           echo "don't know how to extract '$1'..." ;;
      esac
  else
      echo "'$1' My name is Error !!"
  fi
}
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function blue_screen() {
  # Save current terminal settings
  tput civis        # Hide cursor
  tput clear        # Clear screen
  tput setab 4      # Set background to blue
  tput setaf 7      # Set text to white
  tput bold         # Set text to bold
  echo -e "\n\n\n\t\t*** TERMINAL CRITICAL ERROR ***\n"
  echo -e "\t\tA critical error has occurred.\n"
  echo -e "\t\tDO NOT TOUCH THE KEYBOARD..."
  tput sgr0         # Reset attributes
  read -n 1         # Wait for a key press
  tput clear        # Clear screen again
  tput cnorm        # Show cursor
}
#--------------------------------------------------------------------- LOWERCASE
function lowercase () {
  for i in $1; do
    mv "$i" "$(echo "$i" | tr '[A-Z]' '[a-z]')";
  done
}
#--------------------------------------------------------------------- uppercase
function uppercase () {
  for i in $1; do
    mv "$i" "$(echo "$i" | tr '[A-Z]' '[a-z]')";
  done
}
#------------------------------------------------------------- multiple download
function multiple_download () {
  # Check if a file is provided as an argument
  if [ $# -ne 1 ]; then
    donwload "Usage: $0 <filename>"
    exit 1
  fi

  # File to process
  file="$1"

  # Regular expression for URLs
  url_regex='http[s]?://[^ ]+'

  # Read the file line by line
  while IFS= read -r line; do
    # Check if the line contains a URL
    if echo "$line" | grep -qE "$url_regex"; then
      # Print the entire line
      yt-dlp -cif 18 -o "%(playlist_index)s-%(title)s.%(ext)s" $line
    fi
  done < "$file"
}
#----------------------------------------------------------------- Show net info
function netinfo () {
  echo "--------------- Network Information ---------------"
  /sbin/ifconfig | awk /'inet addr/ {print $2}'
  /sbin/ifconfig | awk /'Bcast/ {print $3}'
  /sbin/ifconfig | awk /'inet addr/ {print $4}'
  /sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
  myip=`lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g' `
  echo "${myip}"
  echo "---------------------------------------------------"
}
#----------------------------------------------------- List all Bashrc functions
function list_functions () {
  # Check if .bashrc exists
  if [ ! -f ~/.bashrc ]; then
    echo ".bashrc file not found!"
    exit 1
  fi

  # List all functions in .bashrc
  grep -E '^[[:space:]]*([[:alnum:]_]+[[:space:]]*\(\)|function[[:space:]]+[[:alnum:]_]+)' ~/.bashrc | awk '{print $1}'
}
#--------------------------------------------------------------- Well Spent Time
function command_not_found_handle () {

  local INSULTS=(
    "To improve the performance of your computer delete system32!"
    "To improve the performance of your computer by deleting the french dictionary : sudo rm -fr /!"
    "(╯°□°）╯︵ ┻━┻"
    "Ask an adult for help."
    "Did you mean: rm -rf / ?"
    "Don't do that!"
    "I Said, Don't do that"
    "Don't tell me what to do, you are not my dad!"
    "Don't use Drug."
    "Drugs are bad mOKAY?"
    "DUM8ASS 5L3RT."
    "Don't you have anything better to do ?!"
    "error code: 1D10T 4T TH3 K3Y80ARD"
    "RAISED ERROR: DUMB_ASS_USER"
    "I think you might be dyslexic, bro."
    "Fake it untill you make it!"
    "Reconsider your life !"
    "Im not a specialist, but I belive you are a ... DUMBASS!"
    "Oh my God, what a terrible command."
    "n00b alert, n00b alert, n00b alert!"
    "Try: dd Bs=1024 if=/dev/zeros of=/dev/sda ... DUMBASS!"
    "Nice try, but NO."
    "NO, I not gonna do that!"
    "Perhaps computers is not for you...pal!"
    "PLEASE STEP AWAY FROM THE KEYBOARD!"
    "QUIT TYPING!"
    "Reconsider your life."
    "See... Your parents were right!"
    "Stop it."
    "This is not a search engine."
    "This is not Windows!"
    "This is not Windows!"
    "This is why nobody likes you."
    "This is why you get to see your children only once a month."
    "This is why you get to see your children only once a month."
    "WHAT ARE YOU DOING??"
    "What if... and bear with me here... you actual type a valid command this time!"
    "What is this...? Amateur hour?"
    "Why are you doing this to me?!"
    "WOW! That was impressively wrong!"
    "Did I ever tell you the definition of insanity?"
    "You are not even wrong!"
    "Y u no speak 636f6d7075746572?"
    "That rug really tied the room together."
    "Am I wrong, Dude?"
    "You're being very undude."
    "Life does not start and stop at your convenience, you miserable piece of shit."
    "Forget it, Donny. You're out of your element!"
    "Fuck it, man, let's go bowling."
    "Nobody fucks with The Jesus."
    "You are entering a world of pain."
    "Yeah, well, you know, that's just, like, your opinion, man."
    "Do you see what happens when you fuck a stranger in the ass?"
    "This is not ‘Nam, this is bowling… There are rules."
    "You Suck!"
    "U MAD BRO ? ¯\_(ツ)_/¯"
    "Yeah! He doesn't even get us man. It is like ... dophins were like ... the computers of the restaurant, ... just think about it. It makes total sense! And it pairs perfectly with oranges man."
    "This you should vote me. I leave power good. Thank you. Thank you. If you vote me I'm hot. What? Taxes they'll be lower son. The democratic vote for me is right thing to do Philadelphia. So do."
    "Hmm ... I feel like you just agreed with me, but you weren't listen to what I was saying."
    "Are you listen to me? I can't tell. Yes, you are listen. You are not understanding."
    "What do you think is happening right now ??"
    "WILD CARD, bitches!"
    "Look at that door, dude. See that door right there? The one marked 'pirate'? You think a pirate lives in there?"
    "So anyway, I started blasting. Bang! Bah! I don't see so good, so I missed. Then they ran away. I ran after them. Bang! Tried to shoot them in the back. But I don't run so good either. Anyway, you guys all think I'm a hero and I'll accept that responsibility."
    "Can I Offer You A Nice Egg In This Trying Time?"
    "Starter car? This car is a finisher car! A transporter of gods! The golden god! I am untethered, and my rage knows no bounds!"
    "I'm a man cheetah! Can we do something with this?"
    "That sounds wrong, but I don't know enough about stars to disprove it."
    "What is your spaghetti policy here?"
    "Are you trying to say spaghetti? Are you taking me for a spaghetti day?"
  )

  # Seed "random" generator

  RANDOM=$(date +%s%N)
  VALUE=$((${RANDOM}%2))
  
  # trap 'if [ $? -eq 0 ]; then
  #     :
  #   elif [ $? -eq 1 ]; then
  #     echo -e $PSE"$General error"
  #   elif [ $? -eq 2 ]; then
  #     echo $PSE"Misuse of shell"
  #   elif [ $? -eq 3 ]; then
  #     echo $PSE"Configuration error"
  #   elif [ $? -eq 4 ]; then
  #     echo $PSE"Network error"
  #   elif [ $? -eq 5 ]; then
  #     echo $PSE"I/O error"
  #   elif [ $? -eq 6 ]; then
  #     echo $PSE"No input file"
  #   elif [ $? -eq 7 ]; then
  #     echo $PSE"Bad data format"
  #   elif [ $? -eq 9 ]; then
  #     echo $PSE"KILL THEMM ALLLL!"
  #   elif [ $? -eq 126 ]; then
  #     echo $PSE"Command not executable"
  #   elif [ $? -eq 127 ]; then
  #     echo $PSE"Command not found"
  #   elif [ $? -eq 130 ]; then
  #     echo $PSE"Script terminated by Ctrl+C"
  #   else
  #     echo $PSE"Unknown error: $?"
  #   fi' DEBUG

  if [[ ${VALUE} -lt 2 ]]; then
    printf "\e[1;30m  \n $(shuf -n 1 -e "${INSULTS[@]}")$(tput sgr0)\n"
    echo -e "\e[1;31m"
    echo " - $1 - is not a fucking cmd."
  fi

  return 127
}
#-------------------------------------------------------------- Monitor Backdoor
function monitor-backdoor( ) {
  # ref: NetworkChuck

  # One-time check
  # pid=$(pgrep $1)
  # lsof -i -P -n | grep $1

  # Or for continuous monitoring
  watch -n 2 "lsof -i -P -n | grep $1"

  # Alternative using netstat
  # netstat -np | grep $1

  # Or using ss (more modern)
  ss -tunp | grep $1
}
#---------------------------------------------------------------- Repeat Command
function repeat(){
  local i max
  max=$1; shift;
  for ((i=1; i <= max ; i++)); do
    eval "$@" > '$@_'$i'.txt';
  done
}
#-------------------------------------------------------------------  Random PWD
function genpwd(){
  tr -dc A-Za-z0-9 < /dev/urandom | head -c ${1:-15} | xargs
}
#------------------------------------------------------------------------ Backup

function backup_vscode () {
  cp "$VSCODE_USER_DIR/settings.json" "$BACKUP_DIR/"
  cp "$VSCODE_USER_DIR/keybindings.json" "$BACKUP_DIR/"
  code --list-extensions > "$EXT_LIST"
  echo "Backup completed: $BACKUP_DIR"
}

function restore_vscode () {
  cp "$BACKUP_DIR/settings.json" "$VSCODE_USER_DIR/"
  cp "$BACKUP_DIR/keybindings.json" "$VSCODE_USER_DIR/"
  echo "Settings and keybindings restored to $VSCODE_USER_DIR"
}

function install_vscode_extensions () {
  if [ -f "$EXT_LIST" ]; then
    cat "$EXT_LIST" | xargs -n 1 code --install-extension
    echo "Extensions installed."
  else
    echo "Extension list not found: $EXT_LIST"
  fi
}

function backup_brave () {
  cp "$BRAVE_USER_DIR" "$BACKUP_DIR/"
  cp "$BRAVE_USER_DIR.bak" "$BACKUP_DIR/"
  echo "Brave Backup completed: $BACKUP_DIR"
}

function backup_bashrc () {
  cp "$HOME/.bashrc" "$BACKUP_DIR"
  echo "BASHRC Backup completed: $BACKUP_DIR"
}

function install_bashrc () {
  cp "$BACKUP_DIR/.bashrc" "$HOME" 
  echo "BASHRC installation completed: $BACKUP_DIR"
}

function backup_menu() {
  # ! To Backup:
  # ! .psqlrc
  # ! .htoprc
  mkdir -p "$BACKUP_DIR"
  
  while true; do
    echo "VSCode Backup / Restore Menu"
    echo "1) Backup .bashrc"  
    echo "2) Install .bashrc"
    echo "3) Backup VSCode config + extensions"
    echo "4) Restore VSCode config"
    echo "5) Install extensions from backup"
    echo "6) Backup Brave"
    echo "q) Exit"
    read -p "Choose an option: " choice
    case $choice in
      1) backup_bashrc ;;
      1) install_bashrc ;;
      3) backup_vscode ;;
      4) restore_vscode ;;
      5) install_vscode_extensions ;;
      6) backup_brave ;;
      q) exit 0 ;;
      *) echo "Invalid option!" ;;
    esac
    echo ""
  done
}

function backup(){
  backup_menu
}
#--------------------------------------------------------------------------- TAR
function tarfile(){
  name_aux=$1;
  user_name=$(whoami);
  name=$(echo $name_aux | tr -d /)
  file_origin_aux=$(pwd);
  file_origin=$(echo $file_origin_aux | tr "/" "~")
  owner=$(whoami);
  day=$(date +"%d"~"%m~"%y"~"%a"~["%H"h"%M"m"%S"s]");
  dest="/home/"$user_name"/Download/Backup_files";
  archive_file="FILE_{"$name"}_FROM_{"$file_origin"}_OWNER_{"$owner"}_AT_{"$day"}.tar";
  echo "Backing up $name to $dest/$archive_file";
  tar -cvzf $archive_file $name;
  mv $archive_file $dest
  echo
  clear
  echo "Backup done"
}
#------------------------------------------------------------------- Backup_Home
function backup_home(){
  VSCODE_USER_DIR = "$HOME/.config/Code/User"
  BACKUP_DIR = "$HOME/backup"
  EXT_LIST = "$BACKUP_DIR/vscode-extensions.txt"
  BRAVE_USER_DIR = "$HOME/.config/BraveSoftware/Brave-Browser/Default/Bookmarks"
  echo "Backing up /home"
  USER=$(whoami);
  rsync -aP --exclude-from=/home/$USER/.ignorelist /home/$USER/ /media/$USER/HDCONTESINI/xBackup/
  clear
  echo "/home/$USER is now safe at /media/$USER/HDCONTESINI/xBackup/";
  echo
}
#------------------------------------------------------------------------ New DF
function mydf(){
  for fs ; do
    if [ ! -d $fs ]
    then
      echo -e $fs" :No such file or directory" ; continue
    fi
    local info=( $(command df -P $fs | awk 'END{ print $2,$3,$5 }') )
    local free=( $(command df -Pkh $fs | awk 'END{ print $4 }') )
    local used=( $(command df -Pkh $fs | awk 'END{ print $3 }') )
    local nbstars=$(( 15 * ${info[1]} / ${info[0]} ))
    local out="["
    for ((j=0;j<15;j++)); do
      if [ ${j} -lt ${nbstars} ]; then
        out=$out"*"
      else
        out=$out"-"
      fi
    done
  done
  out=${info[2]}" "$out"] ( / : Free: "$free" | Used:"$used" )"
  echo $out
}
#------------------------------------------------------------------ Initial Info
function myinfo() {  # Get current host related info.{
  echo -e "\e[1;90m-----------------------------------------------------------------Logged on:$NC"
  echo -e "\e[1;32m"'Machine:\t'$(hostname)
  echo -e "\e[1;32m"'User:\t\t'$(who) -hs | cut -d " " -f1 | sort | uniq
  echo -e "\e[1;90m-------------------------------------------------------Current Date & Time:$NC"
  echo -e "\e[1;32m"$(date '+Today : %A - %d/%m/%y || %nTime: %T')
  echo -e "\e[1;90m--------------------------------------------------------------Memory Space:$NC"
  # echo -e "\e[1;32m"$(mydf) $(pwd)
  user_name=$(whoami);
  media_aux_num=$(ls /media/$user_name/ | wc -l)
  pydf -h / /home/*
  if [ $media_aux_num -gt 1 ]; then
    pydf -h /media/*/*
  fi
  free -h | awk '{if(NR==1 || NR==3)print $0}'

}
#--------------------------------------------------------------------- Functions
function parse_git_branch() {
  echo "\e[1;36m"`
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'`
}
#--------------------------------------------------------------------------- PS1
PROMPT_COMMAND='''
PS1="\[$(tput sgr0)\]
\e[0;32m ↈ  \u@\h - \D{[%d/%m/%y] - %A - %H:%M:%S} ↈ
\[\e[1;33m\]\]${VIRTUAL_ENV:+($(basename "$VIRTUAL_ENV")) } $(parse_git_branch)
\[\e[1;34m\]\[\e[132m\]\`
if [ \$? = "0" ]; then
  echo -e "\\[\\e[32m\\]";
else
  echo -e "\\[\\e[31m\\]";
fi\` \w : \[\e[00m\]"
'''

# ==============================================================================
# == CONFIG FILES
# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC PSQLRC

# \set PROMPT1 '%M:%> %n@%/%R%#%x '
# \set ON_ERROR_ROLLBACK interactive
# \set COMP_KEYWORD_CASE upper
# \set HISTFILE ~/.psql/history- :DBNAME
# q\setenv PSPG_THEME 0
# \pset pager always
# \pset null '(null)'

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC LESS CONFIG

# less syntax highlighting + source-highlight installation
# export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
# export LESS=' -PY'

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC PSQLRC

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/contesini/.lmstudio/bin"
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC FIJI-Plugins



# CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC END
