node {
	stage('Clone Git') {
		git credentialsId: '59743fd1-bdd5-4fb2-af09-e241a010ae48', url: 'git@github.com:SorenTheSmed/ca-project.git'
	}
	
	stage('Docker build') {
		sh 'docker build .'
	}


	stage('Predefined tests') {
		sh 'python tests.py'
	}
}