# run sed command with puppet to fix the mistake of file name
#.php instead of .phpp in wp-settings.php
exec { 'fix file name':
  command  => 'sed -i "s/class-wp-locale.phpp/class-wp-locale.php/g" /var/www/html/wp-settings.php',
  provider => 'shell'
}
