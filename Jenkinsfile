pipeline {
    agent any

    environment {
        DB_USER = credentials('db-user')
        DB_PWD = credentials('db-pwd')

        DB_SYS_USER = credentials('db-sys-user')
        DB_SYS_PWD = credentials('db-sys-pwd')

        DB_URL = credentials('db-url')
        PDB_NAME = credentials('pdb')
    }

    stages {
        stage('Set up permissions') {
            steps {
                sh """
                    sql ${DB_SYS_USER}/${DB_SYS_PWD}@${DB_URL} as sysdba @src/sys__user_privs_for_teq.sql ${DB_USER} ${PDB_NAME}
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