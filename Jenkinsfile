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
        dir('build/test') {
          sh "ctest --verbose -C ${env.BUILD_TYPE}"
        }
      }
    }
  }
  post {
    always{
      xunit (
          thresholds: [ skipped(failureThreshold: '0'), failed(failureThreshold: '0') ],
          tools: [ GoogleTest(pattern: 'build/test/test_detail.xml') ]
      )
    }
  }
}