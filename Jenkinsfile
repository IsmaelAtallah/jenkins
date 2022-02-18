pipeline {
    agent {label 'test' }

    stages {
        stage('Hello') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker_cer', passwordVariable: 'pass', usernameVariable: 'user')])       {
    		sh """
    		 docker build . -t som3a97/fromjenkins:v4
    		 docker login -u ${user} -p ${pass}
    		 docker push som3a97/fromjenkins:v4
    		 echo done
    		"""
                }
            }
        }
        stage('Hello') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker_cer', passwordVariable: 'pass', usernameVariable: 'user')])       {
    		sh """
    		 kubectl apply -f app.yml
    		"""
                }
            }
        }
    }
}
	
