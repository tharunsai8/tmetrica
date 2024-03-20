pipeline {
  agent any
  tools {
    jdk 'openjdk'
    maven 'Maven'
  }
  options {
    skipDefaultCheckout(true)
    disableConcurrentBuilds()
  }
  stages {
    stage('Git Checkout') {
      steps {
        // Clean before build
        cleanWs()
        // We need to explicitly checkout from SCM here
        checkout scm
      }
    }
    stage('MVN Build') {
      steps {
        script {
          sh """
          mvn clean install
          """
        }
      }
    }
    stage('Docker Build & Push') {
      steps {
        script {
          sh """
          sudo chmod 777 /var/run/docker.sock
          docker build -t tharunsai8/tmetric:${BUILD_NUMBER} .
          docker push tharunsai8/tmetric:${BUILD_NUMBER}
          """
        }
      }
    }
    stage('K8s Deploy') {
      steps {
        script {
          sh """
          sed -i 's/JENKINS_DOCKER_IMAGE/tharunsai8\\/tmetric:${BUILD_NUMBER}/g' K8s/timetrica-deployment.yaml
          /usr/local/bin/kubectl apply -f K8s/
          """
        }
      }
    }
  }
}
