pipeline {
  agent any
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