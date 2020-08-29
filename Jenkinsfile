pipeline {
	agent {
		dockerfile {
			label 'host'
			filename 'Dockerfile'
			dir '.'
			args '--tag jenkins/hello-world'
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