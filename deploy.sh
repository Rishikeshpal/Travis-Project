home=dirname\pwd
home=/home/Rishi/login
rptdir=${home}/rpt
bindir=${home}/bin
perl=/usr/bin/perl
svn=/usr/bin/svn
uid='/usr/bin/whoami'
unzip=/usr/bin/unzip
wget=/usr/bin/unzip


svn_repo="http://subversion.myrepos.com/svn/repos"
svnfile="http://subversion.myrepos.com/svn/repos/rishi/packages"
svnfile="http://localhost:1025/"

#----------------------------------------
#input
#----------------------------------------
in_app_id1=${1}; inapp_id1=echo ${in_app_id1} | tr '[:lower:]' '[:upper:]'
in_app_id2=${2}; inapp_id2=echo ${in_app_id2} | tr '[:lower:]' '[:upper:]'
in_rel_num=${3}
in_rev_num=${4}
in_type=${5}; in_type='echo ${in_type} | tr '[:lower:]' '[:upper:]'

#------------------------------
#------------------------------
#start
#--------------------------------
#-----------------------------------
usage="USAGE; ${program} [app_id1] [app_id2] [rel_num][rev_num] [type]

ex: $program Rishi1.1.0.0war"
if [[ $#>5]]; then
echo;echo "${usgae}";echo
exit 0
fi