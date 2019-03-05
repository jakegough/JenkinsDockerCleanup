properties([pipelineTriggers([cron('H 23 * * *')])]) // ruh nightly at 11pm

library 'JenkinsBuilderLibrary'

helper.gitHubUsername = 'jakegough'
helper.gitHubRepository = 'JenkinsDockerCleanup'
helper.gitHubTokenCredentialsId = 'github-personal-access-token-jakegough'

helper.run('linux && make && docker', {
    stage ('Prune') {
        sh "scripts/docker_prune.sh"
    }
}
