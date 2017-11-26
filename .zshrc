# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export EDITOR=/usr/bin/vim
export PYTHONPATH=$PYTHONPATH:/root/dS.fS.Python/dS.fS.Modulos/
LS_COLORS='no=01;32:fi=01;33:di=01;31:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:ex=01;90'
export LS_COLORS

export HISTTIMEFORMAT='%F %T '

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="bullet-train"
ZSH_THEME="nicoulaj"
#ZSH_THEME="nicoulaj"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
#DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(vi-mode)
plugins=(git)
plugins=(colored-man-pages)
#plugins=(fasd)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH:/opt/mongodb/bin:$PATH:/opt/node-v5.0.0/bin:/$HOME/dS.fS.android/android-studio/bin/:/opt/:/opt/node-v6/bin/:/usr/sbin/:/sbin/:/usr/local/sbin/:/usr/sbin/:/opt/tmux/
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.


#Cambios sacados del libro
autoload -U promptinit # initialize the prompt system promptinit
setopt autocd
hash -d www=/var/www
hash -d dir_apache=/etc/apache2/
# Alias {{{1
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="vim ~/.zshrc"
alias bashconfig="vim ~/.bashrc"
alias version_kernel='uname -r'
alias name_kernel='uname -s'
alias c="clear"
alias v="vim"
alias ':q'="exit"
alias echo="echo -e"
alias dir_info="dir -ld"
alias open="gnome-open"

alias findorphans="find / -nouser -ls"

alias mkdir="mkdir -p"
alias cp="cp -rp"
alias inmutable="chattr -i"
alias ver_atributos="lsattr"
alias encontrar_sgid="find / -perm +2000 2>/dev/null"
alias encontrar_stickyBits="find / -perm +1000 2>/dev/null"

#alias de instalacion
alias instalar="aptitude install"
alias desinstalar="aptitude remove"
alias purgar="aptitude --purge remove"
alias actualizar="aptitude update && aptitude upgrade"
alias buscarPaquete="apt-cache search"
alias solucionar_dpkg-lock="fuser -vki /var/lib/dpkg/lock; rm -f /var/lib/dpkg/lock; dpkg --configure -a; apt-get autoremove"
alias paquetes_instalados="dpkg -l | grep"

#alias isos
alias mount_linux+="mount -t iso9660 -o loop Linx+.iso"
alias mount_json="mount -t iso9660 -o loop /root/Videos/curso_json.iso"
alias mount_less-sass="mount -t iso9660 -o loop /root/Videos/less_sass/less_sass.iso"
alias mount_bootstrap="mount -t iso9660 -o loop /root/Videos/bootstrap3/bootstrap3.iso"
alias mount_wordpress_personalizacion="mount -t iso9660 -o loop /root/Videos/wordpress_personalizacion.iso"
alias mount_nmap="mount -t iso9660 -o loop /root/Videos/PluralSight_Network_Security_Testing_With_NMAP/nmap.iso"

#Alias para tmux

alias tmux="TERM=screen-256color-bce tmux"       
#alias tmux="TERM=xterm-256color tmux"       
#alias tmux="tmux -2"         #para que no se distorcione vim
alias tn='tmux new -s' 
alias ta='tmux attach -t' 
alias ts='tmux switch -s' 
alias tl='tmux list-sessions'

#Alias para decomprimir
alias descomprimir_tar_gz='tar -zxvf'
#Alias para reducir el tamaño de la particion boot
alias limpiar_boot="dpkg --get-selections|grep 'linux-image*'|awk '{print $1}'|egrep -v \"linux-image-$(uname -r	)|linux-image-generic\" |while read n;do apt-get -y remove $n;done"

alias cd_wav_a_mp3="(for FILE in *.wav ; do ffmpeg -i '$FILE' -f mp3 -ab 192000 '`basename '$FILE' .wav`.mp3' || break; done)"
alias song_wav_a_mp3="ffmpeg -i 'track.wav' -f mp3 -ab 192000 'track.mp3'"


#Python{{{1

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Proyectos_py
#source /usr/local/bin/virtualenvwrapper.sh

alias py="python"
alias py3="python3.2"
function get_python_version(){
    python -V | gawk '{print $1}'
}
#Ruby{{{1
function get_ruby_version(){
    ruby -v | gawk '{print $1 " " $2}'
}
#Assembly:{{{1
function compilando_linkeando(){
    name_file=`echo $1 | cut -d . -f 1`
    nasm -f elf64 $1 -o $name_file.o
    ld $name_file.o -o $name_file
    ./$name_file
}
alias gdb='gdb -q -tui'

#Alias security
alias openvas_url="firefox https://localhost:9392"   
alias dradis_url="firefox https://localhost:3004"    


#Configuraciones avanzadas{{{1
#ejecutara tmux como terminal default{{{2
[[ $- != *i* ]] && return
[[ $TERM != screen* ]] && exec tmux -2
#configuracion de qfc{{{2
#[[ -s "$HOME/.qfc/bin/qfc.sh" ]] && source "$HOME/.qfc/bin/qfc.sh"
#qfc_quick_command 'cd' '\C-f' 'cd $0'                                    
#qfc_quick_command 'vim' '\C-p' 'vim $0'


#nmap: numero de host online{{{2
function hosts_up(){
    nmap -sA `(ip -4 addr | grep 'brd' | awk '{print $2}')` | grep 'done' | gawk '{print $6}' | tr -d '('
}
alias nmap_host="nmap -sA `(ip -4 addr | grep 'brd' | awk '{print \$2}')` | grep 'done' | gawk '{print \$6}' | tr -d '('"

#lists zombie process{{{2
function zombie() {
    ps aux | awk '{if ($8=="Z") { print $2 }}'
}

#strip comments from config files{{{2
function justconfig() {
    sed -e '/^[[:space:]]*#/d;/^[[:space:]]*;/d;s/\r//g;/^[[:space:]]*$/d' "$1"
}
function verContenido(){
    cat "$1" | grep -v "#" | egrep -v '^[[:space:]]*$'
}
### Create short urls via http://goo.gl using curl(1).
## Contributed back to grml zshrc
## API reference: https://code.google.com/apis/urlshortener/
function zurl() {
    if [[ -z $1 ]]; then
        print "USAGE: $0 <URL>"
        return 1
    fi
    local url=$1
    local api="https://www.googleapis.com/urlshortener/v1/url"
    local data
## Prepend "http://" to given URL where necessary for later output.
    if [[ $url != http(s|)://* ]]; then
        url="http://$url"
    fi
    local json="{\"longUrl\": \"$url\"}"
    data=$(curl --silent -H "Content-Type: application/json" -d $json $api)
## Match against a regex and print it
    if [[ $data =~ '"id": "(http://goo.gl/[[:alnum:]]+)"' ]]; then
        print $match
    fi
}
# Show newest files {{{2
newest (){
    find . -type f -printf '%TY-%Tm-%Td %TT %p\n' | \
    grep -v cache | \
    grep -v ".hg" | grep -v ".git" | \
    sort -r | \
    less
}

#Virtualizacion:{{{2
alias test_kvm="egrep -c '(vmx|svm)' /proc/cpuinfo"         #1, soporta kvm

#Alias Iquall Networks:{{{2
alias mostrar_filesModificados="ls -latch"
alias agregar_path="export PATH=$PATH:."
alias miIP="ip -4 addr | grep 'brd' | awk '{print \$2}'"
alias ports='ss -antulp'        #to quickly list all TCP/UDP port on the server

#Firewall
alias iptList='iptables -L -v -n --line-numbers'
alias iptListIN='iptables -L INPUT -v -n --line-numbers'
alias iptListOUT='iptables -L OUTPUT -v -n --line-numbers'
alias iptListFW='iptables -L FORWARD -v -n --line-numbers'

#Debug
alias header="curl -I"

#Comodida
alias h="history"
alias hg="history | egrep"
alias j="jobs -l"
alias mountt="mount |column -t"          #mount de forma legible
alias nowTime='date +"%T"'              #mostrar la hora
alias nowDate='date +"%d-%m-%y"'        #mostrar la fecha

#info mem
alias meminfo='free -m -l -t'           #en mega, total(ram+swap), detail
alias psmem="ps auxf | sort -nr -k 4"   #k es el campo, 
alias psmem10="ps auxf | sort -nr -k 4 | head -10"
#info cpu
alias pscpu="ps auxf | sort -nr -k3"
alias pscpu10="ps auxf | sort -nr -k3 | head -10"

#info hw
alias cpuinfo='lscpu'
alias cpuinfo_old='less /proc/cpuinfo'

#info hd
alias du1="du -d 1"
alias du2="du -h --max-depth=1"

alias usage="du -ch | grep total"   #Grabs the disk usage in the current directory
alias usage="du -ch 2> /dev/null | tail -1 | gawk '{print $1}'" 

alias totalusage="df -hl --total | grep total"      #Gets the total disk usage on your machine
alias partusage='df -hlT --exclude-type=tmpfs --exclude-type=devtmpfs'      #Shows the individual partition usages without the temporary memory values
alias most='du -hsx * | sort -rh | head -10'        ##Gives you what is using the most space. Both directories and files. Varies on current directory
alias tam_directorio="du . -h --max-depth=1 | sort -rh" ## list folders by size in current directory
alias top15_size-directorios="du -hsm * | sort -hr | head 10"

#monitereo
alias fastping='ping -c 100 -s.2'
alias fuser="fuser -v"
alias cantidad_openFiles="lsof | wc -l"
alias tiempo-encendida="uptime -p"
alias hora_que_se_prendio="uptime -s"
#pendiente
alias nunca_logearon="lastlog | egrep  '\[Nunca||Never\]' | gawk '{print \$1}'"

#Grep
alias accedido="grep -c "
#el color de grep, grep_colors, never,always, auto
#opcion l, me lista solo el file en donde hay coincidencia
#L lo contrario que l
#grep -m 10 'ERROR:' *.log, para de leer despues de 10 coincidencias. nos ayuda a diferencir entre pervasive y intermitentes errores
#-q(sin output, util en script: 0 hubo coincidencias, 1 no hubo, 2 no se pudo ejecutar), -o(imprimir solo el texto que coincide en vez de toda la linea
#-s descarta cualquier mensaje de error resultante.b
#-o, solo muestra la coincidencia
#-H incluye le nombe del archivo antes que la linea
#-h lo opuesto
#-T inserta un tab antes de cada matching line
#-A <n>, after context, imprimira tres lineas despues de cualquier linea que contenga una coincidencia
#-B <n>, before-context
#-C <n>, context
#

#Alias servidores:
alias tiempo="curl http://wttr\.in/argentina"
alias conectarme_vpn-iquall="/root/dS.fS.Iquall-Network/VPNconfig/./conectar.sh"
#alias pass_wifi="awk -F= '/^(psk|id)/{print $2}' /etc/NetworkManager/system-connections/\"$(iwgetid -r)\""

transfer() { 
    if [ $# -eq 0 ]; then 
        echo "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; 
        return 1; 
    fi
    tmpfile=$( mktemp -t transferXXX ); 
    if tty -s; then 
        basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); 
        curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; 
    else 
        curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; 
    fi; 
    cat $tmpfile; 
    rm -f $tmpfile; 
}

alias top_por_cpu="top -o %CPU"
alias top_por_mem="top -o %MEM"
alias top_por_user="top -u "
function matar_procesos_de_usuario(){
    kill -9 $(lsof -t -u $1)
}

#ssh() {
#    if [ "$(ps -p $(ps -p $$ -o ppid=) -o comm=)" = "tmux" ]; then
#        tmux rename-window "$(echo $*)"
#        command ssh "$@"
#        tmux set-window-option automatic-rename "on" 1>/dev/null
#    else
#        command ssh "$@"
#    fi
#}
#limpieza de tabla:
#ulimit -c unlimited > /dev/null 2>&1
#
alias abrir_directorio="gnome-open "

crear_nota(){
    v -c ":Note $1"
}

#Alias Snoop consulting:{{{2
