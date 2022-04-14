pipeline {
    agent any

 stages {
     
	    stage ('Docker Image') {
         steps {
             sh "docker build -t $JOB_NAME:BUILD_ID ."
         }
     }
	  stage ('Docker Deploy') {
         steps {
             sh "docker run -d --name $JOB-NAME-server -p 80:80 $JOB_NAME:BUILD_ID"
         }
     }
 }
}
