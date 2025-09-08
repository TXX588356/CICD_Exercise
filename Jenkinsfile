pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/TXX588356/CICD_Exercise.git'
            }
        }


stage('Debug JAR') {
    steps {
        bat 'jar tf build\\libs\\hello-world-java-V1.jar | findstr HelloWorld.class'
        bat 'jar xf build\\libs\\hello-world-java-V1.jar META-INF/MANIFEST.MF'
        bat 'type META-INF\\MANIFEST.MF'
    }
}

        stage('Build') {
            steps { bat 'gradlew build'}
        }
        stage('Test') {
            steps { bat 'gradlew test'} 
        }
        stage('Deploy') {
            steps { 
                powershell 'docker build -t deployment_env .'
            }           
        }    
        stage('Production') {
            steps {
                powershell 'docker run deployment_env'
            }
        }
}

post {
        always {
            echo 'Cleaning up workspace'
            deleteDir() // Clean up the workspace after the build
        }
        success {
            echo 'Build succeeded!!!'
            // You could add notification steps here
        }
        failure {
            echo 'Build failed!'
            // You could add notification steps here
        }
    }
}
