pipeline {
    agent any
    stages {
        stage('Build stape') {
              steps{
              script { def customImage = docker.build(my-image:${env.BUILD_ID}", "-f Dockerfile .")
              }
           }
        }
    }
}
