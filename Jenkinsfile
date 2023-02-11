pipeline{
    agent any
    stages {
        stage('Setup python virtual env')
        {
            sh '''
            chmod +x envsetup.sh
            ./envsetup.sh
            '''
        }
        stage('Setting up Gunicorn setup')
            steps {
                sh '''
                chmod +x gunicorn.sh
                '''
            }
        stage('setup NGINX')
        {
            steps {
                sh '''
                chmod +x nginx.sh
                ./nginx.sh
                '''
            }
        }
    }
}
