//create new image with tag jenkins/jenkins_docker_slave
pipeline {
	agent {
	  dockerfile {
	    additionalBuildArgs '--tag jenkins/jenkins_docker_slave'
	    args '-p 2002:22'
	    dir '.'
	    filename 'Dockerfile'
	  }
	}
	stages {
		stage('TEST') {
			steps {
				sh 'ls -l'
			}
		}
	}
}

//http://192.168.168.1:8080/job/docker-slave-build/directive-generator/   #use pipeline systax for create agent dockerfile