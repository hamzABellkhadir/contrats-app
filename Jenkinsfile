pipeline {
	agent any
	stages {
		stage('build') {
			steps {
                	echo 'test app'
			}
		}
    	stage('Run Docker Compose File') {
        	steps {
        	        sh 'sudo docker-compose build'
        	        sh 'sudo docker-compose up -d'
                	echo 'docker is running ...'
        	}
    	}
    	stage('Test') {
        	steps {
                	echo 'Testing..'
        	}
    	}
    	stage('Deploy') {
    		steps {
                	echo 'Deploying....'
        	}
    	}
   }
}
