node {
  stage ('Build')
    checkout scm

    docker.withRegistry('https://514991545313.dkr.ecr.us-west-2.amazonaws.com') {
      sh '~/.local/bin/aws ecr get-login --no-include-email --region us-west-2 | sh'
      def testImage = docker.build("nuovonick/test-image") 

      testImage.inside {
          sh 'ls'
          sh 'echo $PORT'
      }

    stage ('Deploy')
      testImage.push('test')

    stage ('Cleanup')
      deleteDir()
      sh 'ls'

    }
}