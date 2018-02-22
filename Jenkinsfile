node {
  stage ('Build')
    checkout scm

    docker.withRegistry('https://514991545313.dkr.ecr.us-west-2.amazonaws.com') {

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
}