def remote = [:]
    remote.name = "server"
    remote.host = "3.76.45.23"
    remote.allowAnyHosts = true

pipeline {
    agent any
    
    stages {
        stage('Build stape') {
              steps{
                 script {
                withCredentials([string(credentialsId: 'docker_user', variable: 'DOCKER_USER'),
                                 string(credentialsId: 'docker_pass', variable: 'DOCKER_PASS')])
                { sh "echo $DOCKER_PASS | docker login --username $DOCKER_USER --password-stdin"
                docker.withRegistry("https://index.docker.io")
                
                { def customImage = docker.build("${DOCKER_USER}/image_from_jenkins:v1", "-f Dockerfile .")
                customImage.push()
                customImage.push 'latest'
                 }
               }  
                 
              }
           }
        }
stage('run stape') {
              steps{
              script{
               withCredentials([sshUserPrivateKey(credentialsId: 'ssh_user', keyFileVariable: 'identity', passphraseVariable: '', usernameVariable: 'userName')]) {
               remote.user = userName
               remote.identityFile = identity 
               sshCommand remote: remote, command: "docker rm -f from-jenkins"
               sshCommand remote: remote, command: "docker run -tid -p 80:80 --name from-jenkins armenantonyan/image_from_jenkins:v1"

           }
        }

    }
}
}
}
