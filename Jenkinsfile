node {
  stage ('Build')
    checkout scm

    def testImage = docker.build("test-image") 

    testImage.inside {
        sh 'ls'
        sh 'echo $PORT'
    }

  stage ('Deploy')
    sh 'ls'
}