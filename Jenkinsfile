pipeline {
  agent {
    docker {
      image 'node'
      args '-u root:sudo'
    }
    
  }
  stages {
    stage('Build') {
      steps {
        sh '''#!/bin/bash

cd src/
meteor build ../build --directory'''
      }
    }
  }
}