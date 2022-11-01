pipeline {
    agent any
  //triggers {pollSCM('* * * * *')}
  stages {
    stage('Checkout') {
      steps {
        // Get some code from a GitHub repository
        git branch: "main", url: 'https://github.com/jasdhiratrevature/BankAPI_2.git'
      }
    }
        stage('Build') {
      steps {
       // bat 'chmod a+x mvn'
        bat 'mvn clean package -DskipTests=true'
      }

          post {
        always {
          archiveArtifacts 'target/*.jar'
        }
          }
        }
        stage('DockerBuild') {
      steps {
        bat 'docker build -t jasdhiratrevature/BankAPI:latest .'
      }
        }

  }
}