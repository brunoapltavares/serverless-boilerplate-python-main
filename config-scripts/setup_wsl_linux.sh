#1 /bin/bash
#
# /HEADER/
# Providing all the tools for reproducing code
#
#-------------------------------------------------------------------------------
# OS check so it only runs on GNU/Linux
#-------------------------------------------------------------------------------
OS_CHECK=$(uname -o)
if [ "${OS_CHECK}" != "GNU/Linux" ]; then
    echo "This script was made for the GNU/Linux system and you are using: ${OS_CHECK}"
    exit 1
else
    echo "You are using: ${OS_CHECK}"
fi
#-------------------------------------------------------------------------------
# Check if aws credentials has already been configured
#-------------------------------------------------------------------------------
echo '##########################################################'
echo 'Have you already configured aws credentials? (y or n)'
echo '##########################################################'
read answer
if [[ $answer =~ ^[Yy]$ ]]; then
    exit 1
else
    echo '[default]' >>~/.aws/credentials
    echo 'aws_access_key_id = <AWS_ACCESS_KEY_ID>' >>~/.aws/credentials
    echo 'aws_secret_access_key = <AWS_SECRET_ACCESS_KEY>' >>~/.aws/credentials
    echo 'AWS credentials have been configured.'
fi
