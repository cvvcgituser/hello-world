pipeline {
    agent any
    tools {
        maven 'vishnu'
    }
    environment {
    DOCKERHUB_CREDENTIALS = credentials('dockerhub_token')
    }

    stages {
        stage ("build") {
            steps {
                sh "mvn clean install package"
            }
        }
        stage ("publish") {
            steps {
                sh "docker build -t cvvcacs5658/test_repo:$BUILD_NUMBER ."
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
                sh 'docker push cvvcacs5658/test_repo:$BUILD_NUMBER'
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
