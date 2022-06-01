pipeline {
    agent any

    environment {
        DB_USER = credentials('db-user')
        DB_PWD = credentials('db-pwd')
        DB_URL = credentials('db-url')
    }

    stages {
        stage('Deploy procedures') {
            steps {
                sh """
                    sql ${DB_USER}/${DB_PWD}@${DB_URL} @src/create_topic.sql
                """
            }
        }
    }
}