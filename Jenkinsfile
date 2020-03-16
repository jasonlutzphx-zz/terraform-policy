node {
    checkout scm
    docker.image('hashicorp/terraform:0.12.20').inside('--rm --entrypoint=""') {
        withEnv(['TF_IN_AUTOMATION=true', 'TF_INPUT=false']) {
            stage('initialize') {
                sh 'terraform init'
            }
            stage('plan') {
                sh 'terraform plan'
            }
        }
    }
}
