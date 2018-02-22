node {
  stage ('Build')
    checkout scm

    docker.withRegistry('https://514991545313.dkr.ecr.us-west-2.amazonaws.com') {
      sh 'aws ecr get-login --region us-west-2 | bash'
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