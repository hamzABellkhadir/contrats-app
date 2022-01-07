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