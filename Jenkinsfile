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
                sshagent(['deploy_user']) {
                    sh "scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@18.220.0.59:/tomcat/webapps"
                }
            }
        }
    }
}
