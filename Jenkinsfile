node {
  stage ('Build')
    checkout scm

    docker.withRegistry('https://514991545313.dkr.ecr.us-west-2.amazonaws.com') {
      sh '~/.local/bin/aws ecr get-login --no-include-email --region us-west-2 | sh'
      def testImage = docker.build("nuovonick/test-image") 
      //def devImage = docker.build("nuovonick/test-image", "-f Dockerfile-dev .") 

      testImage.inside {
          sh 'ls'
          sh 'echo $PORT'
          sh 'echo $WORKSPACE'
      }

    stage ('Deploy')
      testImage.push('latest')
      //devImage.push('dev')

    stage ('Cleanup')
      deleteDir()
      sh 'ls'

    }
}