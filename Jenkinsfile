pipeline {
  agent { dockerfile {
    args '-v ${PWD}:/build'
  } }
  environment {
    BUILD_TYPE = 'Release'
  }
  stages {
    stage('configure') {
      steps {
        sh "cmake -B build -DCMAKE_BUILD_TYPE=${env.BUILD_TYPE}"
      }
    }
    stage('build') {
      steps {
        sh "cmake --build build --config ${env.BUILD_TYPE}"
      }
    }
    stage('test') {
      steps {
        dir('build') {
          sh "ctest -C ${env.BUILD_TYPE}"
        }
      }
    }
  }
}