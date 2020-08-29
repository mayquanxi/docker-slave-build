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