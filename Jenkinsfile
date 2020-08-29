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
			sh ''
		}
	}
}