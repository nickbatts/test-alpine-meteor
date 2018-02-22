node {
  stage ('Build')
    checkout scm

    def testImage = docker.build("test-image:latest") 

    testImage.inside {
        sh 'ls'
        sh 'echo $PORT'
    }

  stage ('Deploy')
    sh 'ls'
    testImage.push('latest')

  stage ('Cleanup')
    deleteDir()
    sh 'ls'
}