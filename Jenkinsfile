pipeline {
    agent any

 stages {
     
	    stage ('Docker Image') {
         steps {
             sh "docker build -t webimage:$BUILD_ID ."
         }
     }
	  stage ('Docker Deploy') {
         steps {
	     sh ' /root/docker.sh '
             sh "docker run -d --name $BUILD_ID-server -p 80:80 webimage:$BUILD_ID"
         }
     }
 }
}
