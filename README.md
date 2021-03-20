# spark-hello-world

## getting started
`git clone https://github.com/aaronogan/spark-hello-world.git`

optionally, use provided setup
NOTE: this installs spark and necessary packages - please read script before proceeding
`cd spark-hello-world`
`sudo ./setup.sh`

## build and run
`sbt package`
`start-master.sh`
`spark-submit ./target/scala-2.11/hello_2.11-0.1.jar`
`stop-master.sh`
