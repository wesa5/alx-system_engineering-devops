# client configuration file
$file_content = file('/etc/ssh/ssh_config')
$config = "${file_content}\
    IdentityFile ~/.ssh/school
    PasswordAuthentication yes
"
file {  'school':
  ensure  => 'present',
  path    => '/etc/ssh/ssh_config',
  content => $config
}