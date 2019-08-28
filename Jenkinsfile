node{

   def app
    
   stage('Cloning the repository'){
    
    /* colne the repository into workspace */
        
        checkout scm
    }
    
    stage('Build image'){
    
        app = docker.build("buddha1/python-hello-world")
 
    }
    
    stage('Push image'){
    
    /* first you have to register with dockerhub then only you can push , second parameter is your credential for docker hub login*/
        
        docker.withRegistry('https://registry.hub.docker.com','docker-hub'){
        
            app.push("${env.BUILD_NUMBER}")
            app.
        }
        
        echo "pushing docker build to docker hub"
    }
}
