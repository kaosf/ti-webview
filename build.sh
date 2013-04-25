#! /bin/sh

# try
(
  set -e

  cp tiapp.xml tiapp.xml.bk
  if [ ! -e env ]; then echo "env does not exist." 2>&1; exit 1; fi
  HOSTNAME=$(cat env | grep 'hostname:' | awk '{print $2}')
  sed -e "s/<property name=\"hostname\" type=\"string\">.*\?<\/property>/<property name=\"hostname\" type=\"string\">${HOSTNAME}<\/property>/" tiapp.xml -i

  ti build -p android -b -s 3.1.0.GA
)
# catch
[ $? -eq 0 ] || (
  RET=$?
  echo 'error!' 2>&1
  exit $RET
)
# finally
{
  RET=$?
  if [ -e tiapp.xml.bk ]; then
    mv tiapp.xml.bk tiapp.xml
  fi
  exit $RET
}
