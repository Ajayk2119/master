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
	     sh " docker stop $BUILD_ID-server, docker rm $BUILD_ID-server "
             sh "docker run -d --name $BUILD_ID-server -p 80:80 webimage:$BUILD_ID"
         }
     }
 }
}
