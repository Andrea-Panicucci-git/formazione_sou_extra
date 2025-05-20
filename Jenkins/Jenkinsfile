pipeline {
    agent any

    parameters {
        choice(name: 'ENVIRONMENT', choices: ['DEVELOPMENT', 'PRODUCTION'], description: 'Seleziona Environment!')
    }

    stages {
        stage('Seleziona Environment') {
            steps {
                script {
                    if (params.ENVIRONMENT == 'DEVELOPMENT') {
                        echo "Environment: DEVELOPMENT"
                    } else if (params.ENVIRONMENT == 'PRODUCTION') {
                        echo "Environment: PRODUCTION"
                    } else {
                        echo "Nessun Environment selezionato"
                    }
                }
            }
        }
    }
}
