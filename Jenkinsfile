pipeline {
	agent {
		dockerfile {
			label 'host'
			filename 'Dockerfile'
			dir '.'
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