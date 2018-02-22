node {
  stage ('Build')
    checkout scm

    docker.withRegistry('https://514991545313.dkr.ecr.us-west-2.amazonaws.com/battsnicknuovo
') {
      sh 'aws ecr get-login --no-include-email --region us-west-2 | sh'
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