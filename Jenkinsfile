pipeline {
	agent any 
    
    stages {
        stage('Checkout'){
            steps {
                echo 'Cloning repository'
                git url: 'https://github.com/Taggat4472/jenkins', branch: 'main'
              }
          }
          stage('Build') {
            steps {
                echo 'Building docker image'
                sh "docker build -t taggat4472/jenkins:latest ."
	        }
          }
          stage('Push') {
            steps {
                echo 'Pushing docker image'
                sh 'docker login -u taggat4472 -p TMT447293hnz'
                sh "docker push taggat4472/jenkins:latest"
	        }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the container'
                sh "docker pull taggat4472/jenkins:latest"
                sh "docker run --name jenkins-container -d taggat4472/jenkins:latest"
	        }
        }
    }
}