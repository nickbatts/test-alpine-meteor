node {
  stage "Prepare environment"
    checkout scm

    def testImage = docker.build("test-image") 

    testImage.inside {
        sh 'ls'
        sh 'echo $PORT'
    }
}