foo()
{
 ls ; ll ; pwd
}
wcode()
{
  	echo "Airline | JET | NAS | ICE | SWA | FD |"
	echo " CODE   | 9w  | dy  | fi  | wn  | fz |"
	echo " airCode|     |ei,ln|     |     | fdb|"
	echo " DEV    | 14  | 22  |  8  |  3  | 17 |"
	echo " PROD   | 13  | 6?  |  2  |  4  | 19 |"
}
credit()
{
	echo "		5437030792090341"
	echo "	   	     03 / 21"
	echo "	               386"
}
t2d ()
{
    TIMESTAMP=$1;
    TZ=UTC date -d @$TIMESTAMP
}
wrig()
{
	fping 192.168.80.{1..22}
}
encompass()
{
sshpass -p encompass ssh root@10.5.0.172 
}
sw()
{
	telnet towel.blinkenlights.nl
}
showimage()
{
	#showimage $(whoami) util7 '~/Chase_444_generic_July18_LB_LT_1458x180.jpg'
ssh $1@$2 "cat $3" | display
echo "   ID	   PIN_NUMBER	NAME	SURNAME	 USERNAME	          EMAIL_ADDRESS	           TOTAL_MILES"
echo "4000070384   49OKTNQqzz   Test    Test     magnus1@tmsoftware.is    magnus1@tmsoftware.is    [INSUFFICIENT]"
echo "4101265770   hQEivTu5jf   Test    Tes      test@test765.com         test@test765.com         [SUFFICIENT]"
echo "0303871022   TnvL8BPWzT	Test	Aia	 adalbolafs	          baramella@gmail.com	   91995"
}
mumbai()
{
	echo "su password : jai@9w!"
ssh -tt $(whoami)@util7 "ssh jai@smu-000150g"
}
ACE()
{
	echo 'ssh jetairway'
ssh root@142.44.213.152
}
rigurl()
{
ssh root@192.168.80.$1 'cat /usr/local/row44/config/*.cfg| grep -i portal_url | head -1'
}
gee()
{
gee-disconnect-vpn.sh
gee-connect-vpn.sh
snx -d
stoken
snx -s 67.142.235.252 -u $(whoami)
}
stopsnx()
{
snx -d
}
startsnx()
{
snx -d
stoken | sed 's/.*\(........\)/\1/' | snx -s 67.142.235.252 -u $(whoami)
#stoken
#snx -s 67.142.235.252 -u $(whoami)
}
snxeu()
{
snx -d;
stoken;
snx -s eu.row44.com -u $(whoami);
}
view_tail(){
#TAILNAME=$1
echo 'reaching' $1
sshuttle -e 'ssh -J util7' -Hvr row44@$(ssh util7 host ${1}g | awk '{print $NF}') 192.168.32.0/22 --dns
}
arig()
{
fping 192.168.80.{1..25}
}
aliase()
{
vim ~/.oh-my-zsh/.zsh_aliases.sh
source ~/.oh-my-zsh/.zsh_aliases.sh
diff ~/.oh-my-zsh/.zsh_aliases.sh ~/gee/home/$(whoami)/.oh-my-zsh/.zsh_aliases.sh > /dev/null
if [ "$status" = 1 ]
then
cp ~/.oh-my-zsh/.zsh_aliases.sh ~/gee/home/$(whoami)/.oh-my-zsh/.zsh_aliases.sh
git -C ~/gee/home/$(whoami)/.oh-my-zsh/ add ~/gee/home/$(whoami)/.oh-my-zsh/.zsh_aliases.sh
git -C ~/gee/home/$(whoami)/.oh-my-zsh/ commit -m 'update'
git -C ~/gee/home/$(whoami)/.oh-my-zsh/ push
fi
}
sshconf()
{

vim ~/.ssh/config
diff ~/.ssh/config ~/gee/home/$(whoami)/.ssh/config
if [ "$status" = 1 ]
then
cp ~/.ssh/config ~/gee/home/$(whoami)/.ssh/config
git -C  ~/gee/home/$(whoami)/ add ~/gee/home/$(whoami)/.ssh/config
git -C  ~/gee/home/$(whoami)/ commit -m 'update'
git -C  ~/gee/home/$(whoami)/ push
fi
}
bashrig()
{
vim .bash_navigation
diff ~/.bash_navigation ~/gee/home/$(whoami)/.bash_navigation
if [ "$status" = 1 ]
then
cp ~/.bash_navigation ~/gee/home/$(whoami)/.bash_navigation
git -C cd ~/gee/home/$(whoami)/ add ~/gee/home/$(whoami)/.bash_navigation
git -C cd ~/gee/home/$(whoami)/ commit -m 'update'
git -C cd ~/gee/home/$(whoami)/ push
fi
}
pbcopy()
{
xclip -selection c
}
rig ()
{
    server="root@192.168.80.$1";
    ssh -q $server -t "[ -e /mnt/media_a/__devwork__/$(whoami)/ ] || mkdir -p /mnt/media_a/__devwork__/$(whoami)/";
    scp ~/.bash_navigation $server:/mnt/media_a/__devwork__/$(whoami)/ || return 1;
    echo -e "Connection to $1 requested...";
    ssh -q $server -t "cd /home/row44;export PATH=/usr/local/row44/utils/bin/:$PATH;/bin/bash" --rcfile /mnt/media_a/__devwork__/$(whoami)/.bash_navigation 
}
util7(){
ssh util7
}
ovh()
{
  server="$1"
  ssh -q $server -t "[ -e /mnt/media_a/__devwork__/$(whoami)/ ] || mkdir -p /mnt/media_a/__devwork__/$(whoami)/";
    scp ~/.bash_navigation $server:/mnt/media_a/__devwork__/$(whoami)/ || return 1;
    echo -e "Connection to ovh $1 requested...";
    ssh -q $server -t "cd /home/row44;/bin/bash" --rcfile /mnt/media_a/__devwork__/$(whoami)/.bash_navigation
}
ovh_list()
{
	 ssh -q ovh -t "vsmu_list";
}
viewrig()
{
sshuttle -Hvr row44@192.168.80.$1 192.168.32.0/2
}
vcdiff(){
# $1 = numero du rig
# $2 = numero de VC
# $3 = grep du airline 
#	pour SWA => N
#	pour JET => V
# 	pour ICE => T
# https://confluence.geemedia.com/display/OPSUPPORT/Airline+cheat+sheet
mkdir -p  ~/vc/$2
scp row44@192.168.80.$1:/mnt/media_a/__devwork__/$(whoami)/vc/$2/\*.tar.bz2 ~/vc/$2 ;
VC="$(ls -t ~/vc/$2 | head -1)"
scp ~/vc/$2/$VC util7:~ ;
#to improve: select a good tail and vcdiff on it
ssh util7 << EOF
TAIL="\$(/home/$(whoami)/bin/besttail $3)" ;
echo \$TAIL ;
THEDIFF="\$(vcdiff ~/$VC \${TAIL}g)";
echo \$THEDIFF ;
EOF
}
