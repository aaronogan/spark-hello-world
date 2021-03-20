# install dependencies
apt install default-jdk scala -y
java -version; javac -version; scala -version

# install sbt
echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
apt-get update
apt-get install sbt

# if spark has been installed, exit
if [ -d /opt/spark ]; then
  echo "spark already installed"
  exit
fi

# download and unzip spark
wget https://downloads.apache.org/spark/spark-3.1.1/spark-3.1.1-bin-hadoop2.7.tgz
tar xvf spark-*

# move spark to /opt/spark
mv spark-3.1.1-bin-hadoop2.7 /opt/spark

