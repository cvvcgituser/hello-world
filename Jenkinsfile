pipeline {
    agent any
    tools {
        maven 'vishnu'
    }

    stages {
        stage ("build") {
            steps {
                sh "mvn clean install package"
            }
        }
        stage ("test") {
            steps {
                echo "testing the application"
            }
        }
        stage ("deploy") {
            steps { 
                echo "deploying the apllication"
            }
        }
    }
}
