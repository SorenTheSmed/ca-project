node {
	stage('Clone Git') {
		git credentialsId: '59743fd1-bdd5-4fb2-af09-e241a010ae48', url: 'git@github.com:SorenTheSmed/ca-project.git'
	}
	
	stage('Docker build') {
		sh 'docker build -t codechan .'
	}


	stage('Predefined tests') {
		sh 'docker run codechan python /usr/src/app/tests.py'
	}

	stage('update') {
		sh 'docker tag codechan:latest smeden/codechan:latest'
		sh 'docker login -u smeden -p Pgbc8rpe7c7'
		sh 'docker push smeden/codechan:latest'
	}
}