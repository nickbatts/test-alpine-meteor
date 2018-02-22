pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
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