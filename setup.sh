# install dependencies
apt install default-jdk scala -y
java -version; javac -version; scala -version

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

