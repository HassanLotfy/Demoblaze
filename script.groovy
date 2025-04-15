def buildApp() {
    echo "🔧 Building the automation project with Maven..."
    dir('Demoplaza Final Project') {  // Adjust this to match the actual folder name
        bat 'mvn clean compile'
    }
}

def testApp() {
    echo "🧪 Running TestNG tests..."
    dir('Demoplaza Final Project') {
        bat 'mvn test'
    }
}

def deployApp() {
    echo "📦 Archiving reports and logs..."
    dir('Demoplaza Final Project') {
        junit '**/target/surefire-reports/*.xml'
        archiveArtifacts allowEmptyArchive: true, artifacts: '**/target/**/*.log, **/target/screenshots/**'
    }
}

return this
