sudo wget https://apt.puppetlabs.com/puppet-release-bionic.deb
sudo dpkg -i puppet-release-bionic.deb
sudo apt-get update
sudo apt-get install puppet-agent
export PATH=/opt/puppetlabs/bin:$PATH
