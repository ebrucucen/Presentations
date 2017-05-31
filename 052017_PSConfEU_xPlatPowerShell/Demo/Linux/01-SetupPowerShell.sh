#install PowerShell using the old and tedious way
firefox https://github.com/PowerShell/PowerShell/releases/latest
wget https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-alpha.18/powershell-6.0.0_alpha.16-1.el7.centos.x86_64.rpm -O /tmp/powershell-6.0.0_alpha.18-1.el7.centos.x86_64.rpm
yum localinstall /tmp/powershell-6.0.0_alpha.18-1.el7.centos.x86_64.rpm

# or the new improved way :-)
# one time setup of repo, now containing all(most all) packages we need!
#Step1: install the wget
sudo yum install -y wget
#Step2: add the microsoft repo to our local: 
wget https://packages.microsoft.com/config/rhel/7/prod.repo -O /etc/yum.repos.d/microsoft.repo
#Step3: check the repo list
sudo yum repolist
#or 
ls -la /etc/yum.repos.d
#Step4: Check what it is done: 
cat ./microsoft.repo

#Step5: List only packages from microsoft: 
sudo yum --disablerepo="*" --enablerepo="packages-microsoft-com-prod" list available

#Step6: Install powershell
yum install -y powershell
powershell
#Step7: which one?
which powershell
/usr/bin/powershell

# in case of bad internet
yum localinstall -y ../Packages/libunwind-1.1-5.el7_2.2.x86_64.rpm
yum localinstall -y ../Packages/uuid-1.6.2-26.el7.x86_64.rpm
yum localinstall -y ../Packages/powershell-6.0.0_alpha.18-1.el7.centos.x86_64.rpm