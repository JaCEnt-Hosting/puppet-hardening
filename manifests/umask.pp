class hardening::umask {

  exec { 'echo "umask 027" >> /etc/sysconfig/init':
    path => "/usr/bin:/usr/sbin:/bin",
    unless => 'grep "umask 027" /etc/sysconfig/init',
  }

}
