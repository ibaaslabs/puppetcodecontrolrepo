# This code fragment downloads tomcat 8.0 then starts the service
#
class { 'tomcat': }
class { 'java': }

tomcat::instance { 'test':
  source_url => 'https://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.0.M26/bin/apache-tomcat-9.0.0.M26.tar.gz'}

-> tomcat::service { 'default': }
