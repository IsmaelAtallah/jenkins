pipeline {
    agent {label 'test' }

    stages {
        stage('Build image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker_cer', passwordVariable: 'pass', usernameVariable: 'user')])       {
    		sh """
    		    docker build . -t som3a97/fromjenkins:v5
    		    docker login -u ${user} -p ${pass}
    		    docker push som3a97/fromjenkins:v5
    		    echo done
    		"""
                }
            }
        }
        stage ('deploy app'){
            steps {
                sh """
                kubectl apply -f app.yml
                echo done
            """
            }
        }
        }
    }

	
