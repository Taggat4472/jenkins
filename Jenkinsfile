pipeline {
	agent any
   
    }
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
                sh "sudo docker build -t taggat4472/jenkins:latest ."
	        }
          }
          stage('Push') {
            steps {
                echo 'Pushing docker image'
                sh 'sudo docker login -u taggat4472 -p dckr_pat_cUJ98qCUFljnYMzQ9gJfcw2oC5Q'
                sh "sudo docker push taggat4472/jenkins:lates"
	        }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying the container'
                sh "sudo docker pull taggat4472/jenkins:${params.version}"
                sh "sudo docker run --name jenkins-container -d taggat/jenkins:${params.version}"
	        }
        }
    }
}