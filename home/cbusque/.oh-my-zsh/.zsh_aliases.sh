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
	#showimage cbusque util7 '~/Chase_444_generic_July18_LB_LT_1458x180.jpg'
ssh $1@$2 "cat $3" | display
}
sshpoly()
{
echo "is polyssl/any connect active"
ssh -L20035:localhost:20035 cebus@L4712-04.info.polymtl.ca
}
tp2(){
cd ~/Desktop/cloud/TP2_dave/TP2
./authServer.sh 5001
./loadBalancer.sh 127.0.1.1 5001 5002 true
./server.sh 127.0.1.1 5001 5003 4 0
./client.sh connect 127.0.1.1 5001 cebus cebus
./client.sh execute operations-3216 127.0.1.1 cebus cebus
}
saga(){
echo "   ID	   PIN_NUMBER	NAME	SURNAME	 USERNAME	          EMAIL_ADDRESS	           TOTAL_MILES"
echo "4000070384   49OKTNQqzz   Test    Test     magnus1@tmsoftware.is    magnus1@tmsoftware.is    [INSUFFICIENT]"
echo "4101265770   hQEivTu5jf   Test    Tes      test@test765.com         test@test765.com         [SUFFICIENT]"
echo "0303871022   TnvL8BPWzT	Test	Aia	 adalbolafs	          baramella@gmail.com	   91995"
}
mumbai()
{
	echo "su password : jai@9w!"
ssh -tt cbusque@util7 "ssh jai@smu-000150g"
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
snx -s 67.142.235.252 -u cbusque
}
stopsnx()
{
snx -d
}
startsnx()
{
snx -d
echo '1234' | stoken | sed 's/.*\(........\)/\1/' | snx -s 67.142.235.252 -u cbusque
#stoken
#snx -s 67.142.235.252 -u cbusque
}
snxeu()
{
snx -d;
stoken;
snx -s eu.row44.com -u cbusque;
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
diff ~/.oh-my-zsh/.zsh_aliases.sh ~/gee/home/cbusque/.oh-my-zsh/.zsh_aliases.sh > /dev/null
if [ "$status" = 1 ]
then
cp ~/.oh-my-zsh/.zsh_aliases.sh ~/gee/home/cbusque/.oh-my-zsh/.zsh_aliases.sh
git -C ~/gee/home/cbusque/.oh-my-zsh/ add ~/gee/home/cbusque/.oh-my-zsh/.zsh_aliases.sh
git -C ~/gee/home/cbusque/.oh-my-zsh/ commit -m 'update'
git -C ~/gee/home/cbusque/.oh-my-zsh/ push
fi
}
sshconf()
{

vim ~/.ssh/config
diff ~/.ssh/config ~/gee/home/cbusque/.ssh/config
if [ "$status" = 1 ]
then
cp ~/.ssh/config ~/gee/home/cbusque/.ssh/config
git -C  ~/gee/home/cbusque/ add ~/gee/home/cbusque/.ssh/config
git -C  ~/gee/home/cbusque/ commit -m 'update'
git -C  ~/gee/home/cbusque/ push
fi
}
bashrig()
{
vim .bash_navigation
diff ~/.bash_navigation ~/gee/home/cbusque/.bash_navigation
if [ "$status" = 1 ]
then
cp ~/.bash_navigation ~/gee/home/cbusque/.bash_navigation
git -C cd ~/gee/home/cbusque/ add ~/gee/home/cbusque/.bash_navigation
git -C cd ~/gee/home/cbusque/ commit -m 'update'
git -C cd ~/gee/home/cbusque/ push
fi
}
util7()
{
ssh cbusque@192.168.21.26
}
pbcopy()
{
xclip -selection c
}
rig ()
{
    server="root@192.168.80.$1";
    ssh -q $server -t "[ -e /mnt/media_a/__devwork__/cbusque/ ] || mkdir -p /mnt/media_a/__devwork__/cbusque/";
    scp ~/.bash_navigation $server:/mnt/media_a/__devwork__/cbusque/ || return 1;
    echo -e "Connection to $1 requested...";
    ssh -q $server -t "cd /home/row44;/bin/bash" --rcfile /mnt/media_a/__devwork__/cbusque/.bash_navigation 
}
ovh()
{
  server="$1"
  ssh -q $server -t "[ -e /mnt/media_a/__devwork__/cbusque/ ] || mkdir -p /mnt/media_a/__devwork__/cbusque/";
    scp ~/.bash_navigation $server:/mnt/media_a/__devwork__/cbusque/ || return 1;
    echo -e "Connection to ovh $1 requested...";
    ssh -q $server -t "cd /home/row44;/bin/bash" --rcfile /mnt/media_a/__devwork__/cbusque/.bash_navigation
}
ovh_list()
{
	 ssh -q ovh -t "vsmu_list";
}
viewrig()
{
sshuttle -Hvr row44@192.168.80.$1 192.168.32.0/2
}
