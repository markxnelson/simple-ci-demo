pipeline {
    agent any

    environment {
        DB_USER = credentials('db-user')
        DB_PWD = credentials('db-pwd')

        DB_SYS_USER = credentials('db-sys-user')
        DB_SYS_PWD = credentials('db-sys-pwd')

        DB_URL = credentials('db-url')
    }

    stages {
        stage('Set up permissions') {
            steps {
                sh """
                    sql ${DB_SYS_USER}/${DB_SYS_PWD}@${DB_URL} @src/sys__user_privs_for_teq.sql ${DB_USER}
                """
            }
        }
        stage('Deploy procedures') {
            steps {
                sh """
                    sql ${DB_USER}/${DB_PWD}@${DB_URL} @src/create_topic.sql
                """
            }
        }
    }
}