node {

   def registryProjet='docker.io/hawkitsu/'
   def IMAGE="${registryProjet}nginx:version-${env.BUILD_ID}"

    stage('Clone') {
          checkout scm
    }

    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }

    stage('Run') {
          img.withRun("--name run-$BUILD_ID -p 8000:80") { c ->
       
          }
    }

    stage('Push') {
          docker.withRegistry('https://localhost:5000', 'user_id') {
              img.push 'latest'
              img.push()
          }
    }

}

