pipeline {
    agent any
    stages {
        stage('Build stape') {
              steps{
                 script {
                withCredentials([string(credentialsId: 'docker_user', variable: 'DOCKER_USER'),
                                 string(credentialsId: 'docker_pass', variable: 'DOCKER_PASS')])
                {sh "echo ${DOCKER_PASS} | docker login --username ${DOCKER_USER} --password-stdin"
                docker.whitRegistery("https://index.docker.io")
                
                { def customImage = docker.build("${DOCKER_USER}/image_from_jenkins:v1", "-f Dockerfile .")
                customImage.push()
                castomImage.push 'latest'
                }
                }  
                 
              }
           }
        }
// stage('run stape') {
//               steps{
//               script { sh "docker run -tid -p 8000:80 image_from_jenkins:v1"
//               }
//            }
//         }

    }
}
