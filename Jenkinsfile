pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker_cer', passwordVariable: 'pass', usernameVariable: 'user')])       {
    		sh """
    		 echo soooooooooooooooooooooooooom3a
    		 docker build . -t som3a97/fromjenkins:v1
    		 docker login -u ${user} -p ${pass}
    		 docker push som3a97/fromjenkins:v1
    		 echo done
    		"""
                }
            }
        }
    }
}
	
