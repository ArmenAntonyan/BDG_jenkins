pipeline {
    agent any
    def remot = [:]
    remote.name = "server"
    remote.host = "35.159.53.27"
    remote.allowAnyHosts = true
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
               sshCommand remote: remote, command: 'for i in {1..5}; do echo -n \"Loop \$i \"; date ; sleep 1; done'
            //      { sh "docker run -tid -p 8000:80 image_from_jenkins:v1"
            //   }
           }
        }

    }
}
}
}
