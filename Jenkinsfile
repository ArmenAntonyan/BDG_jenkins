pipeline {
    agent any
    stages {
        stage('Build stape') {
              steps{
              script { def customImage = docker.build("my-image:v1", "-f Dockerfile .")
              }
           }
        }
stage('run stape') {
              steps{
              script { sh "docker run -tid -p 8000:80 my-image:v1"
              }
           }
        }

    }
}
