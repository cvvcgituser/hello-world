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
                sh "docker build -t cvvcacs5658/test_repo:webapp-latest ."
            }
        }
        stage ("deploy") {
            steps { 
                sshagent(['deploy_user']) {
                    sh "scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@18.220.0.59:/home/ec2-user/tomcat/webapps"
                }
            }
        }
    }
}
