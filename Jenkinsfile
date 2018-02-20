podTemplate(label: 'docker',
  containers: [containerTemplate(name: 'docker', image: 'docker:1.11', ttyEnabled: true, command: 'cat')],
  volumes: [hostPathVolume(hostPath: '/var/run/docker.sock', mountPath: '/var/run/docker.sock')]
  ) {

node('docker') {
    stage('Clone repository') {
        checkout scm
    }

    stage('Build image') {
        #docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-cred'){container('docker'){
        sh "cat /home/jenkins/.dockercfg; docker build -t ${image} ."}
	}
        }
    }
}
