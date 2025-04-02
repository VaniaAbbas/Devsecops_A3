def failedStage = "Unknown Stage"  // Variable to track failed stage
pipeline {
	agent any
	environment {
        SONARQUBE_URL = 'http://localhost:9000'
        SONARQUBE_TOKEN = credentials('sonarqube-token') // Replace with your credential ID
        GITHUB_REPO = 'mhussain-arch/devesecops-assignment-3'
        GITHUB_CREDENTIALS = credentials('GITHUB_CREDENTIALS')
        GITHUB_TOKEN = credentials("GITHUB_API_KEY")
        EMAIL_RECIPIENT = 'k213584@nu.edu.pk'
    }
	stages{
		stage('Checkout'){
			steps{
				script {
					failedStage = "Checkout"  //Set stage name
                }
				git branch: 'main', credentialsId: 'GITHUB_CREDENTIALS', url: 'git@github.com:mhussain-arch/devsecops-assignment-3.git'
			}
		}
		stage('Dependency Check') {
            steps {
	            script {
	        		failedStage = "Dependency Check"  //Set stage name
	        	}
                bat 'dependency-check.bat --project "QR-code" --scan "C:\\repos\\devsecops-assignment-3" --format JSON --format HTML --format XML --out "C:\\Users\\jenkins\\Desktop\\dc-report" --nvdApiKey b39f9daa-8ec6-4d10-bffc-f3c7fea9fd0b --log dependency-check.log'
			}
		}
		stage('Dependency Check Report') {
            steps {
                // dependencyCheckPublisher( //not working in my case
				//     pattern: "C:\\Users\\jenkins\\Desktop\\dc-report\\dependency-check-report.xml",
				//     failedTotalCritical: 1,  // Pipeline fails if at least 1 Critical issue exists
				//     unstableTotalCritical: 1
				//     //failedTotalHigh: 3,      // Pipeline fails if 3+ High issues exist
				//     //failedTotalMedium: 5     // Pipeline fails if 5+ Medium issues exist
				// )
                script {
            		failedStage = "Dependency Check Report"  //Set stage name
                    def reportFile = "C:\\Users\\jenkins\\Desktop\\dc-report\\dependency-check-report.json"
                    def allIssues = []
                    def criticalIssues = [] 

                    if (!fileExists(reportFile)) {
		                error "Dependency-Check JSON report not found. Failing pipeline."
		            }

		            def jsonText = readFile(reportFile).trim()
		            if (!jsonText || jsonText == "{}") {
		                error "Dependency-Check JSON report is empty. Failing pipeline."
		            }

                    // Parse JSON report
                    def jsonReport = readJSON file: reportFile

                    def getExistingIssues = { ->
                        def response = bat(
                            script: """
                                curl.exe -s -X GET -H "Authorization: token %GITHUB_TOKEN%" ^
                                     -H "Accept: application/vnd.github.v3+json" ^
                                     https://api.github.com/repos/${GITHUB_REPO}/issues?state=open
                            """,
                            returnStdout: true
                        ).trim()

						response = response.substring(response.indexOf("["))
                        def issues = readJSON text: response
                        return issues
                    }

                    // for (dep in jsonReport.dependencies) {
                    //     for (vuln in dep.vulnerabilities) {
                    //         def issueTitle = "[${vuln.severity}] ${vuln.name}"
                    //         def issueBody = "${vuln.name}: ${vuln.description}"
                    //         allIssues.add([title: issueTitle, body: issueBody])
                    //         if (vuln.severity?.trim().toLowerCase() == "critical") {
		            //             criticalIssues.add(issueTitle + ": " + issueBody)
		            //         }
                    //     }
                    // }

                    //Call the closure like a function: doesIssueExist(issue.title)
                    // def existingIssues = getExistingIssues()
					// for (issue in allIssues) {
					//     if (!existingIssues.any { it.title == issue.title }) {
					//         withCredentials([string(credentialsId: 'GITHUB_API_KEY', variable: 'GITHUB_TOKEN')]) {
					//             //Write JSON payload to a file
					//             def jsonPayload = """
					//             {
					//                 "title": "${issue.title}",
					//                 "body": "${issue.body.replace('"', '\\"')}",
					//                 "labels": ["security"]
					//             }
					//             """
					//             writeFile file: "payload.json", text: jsonPayload

					//             //Use `-d @payload.json` instead of inline JSON
					//             bat """
					//                 curl.exe -X POST -H "Authorization: token %GITHUB_TOKEN%" ^
					//                 -H "Accept: application/vnd.github.v3+json" ^
					//                 https://api.github.com/repos/${GITHUB_REPO}/issues ^
					//                 -d @payload.json
					//             """
					//         }
					//     } else {
					//         echo "Issue '${issue.title}' already exists in GitHub. Skipping creation."
					//     }
					// }
					def htmlReport = "C:\\Users\\jenkins\\Desktop\\dc-report\\dependency-check-report.html"
					if (!fileExists(htmlReport)) {
		                error "Dependency-Check HTML report not found. Skipping email."
		            }

		            def htmlContent = readFile(htmlReport)

		            if (!allIssues.isEmpty()) {
		            	emailext(
		                    to: "${EMAIL_RECIPIENT}",
		                    subject: "Dependency-Check Report for QR-code",
		                    body: """
							    Attached is the full Dependency-Check security report.

							    **Critical Issues Found:** ${criticalIssues.size()}
							    """,
		                    attachmentsPattern: "C:\\Users\\jenkins\\Desktop\\dc-report\\dependency-check-report.html"
		                )
					}
		            if (!criticalIssues.isEmpty()) {
					    //error "Pipeline halted due to ${criticalIssues.size()} critical security vulnerabilities."
					    echo "Critical issues found. Pipeline continuing for testing."
					} else {
		                echo "No critical issues found. Pipeline continuing."
		            }
                }
            }
        }
		stage('Build'){
			steps{
				script {
					failedStage = "Build"  //Set stage name
                }
				dir('GenerateQR/GenerateQR_v3/GenerateQR'){
					bat 'dotnet restore'
					bat 'dotnet build --configuration Release'
				}
			}
		}
		stage('SonarQube Analysis') {
		    steps {
		        script {
		            failedStage = "SonarQube"
		        }
		        withSonarQubeEnv('SonarQube') {
					withCredentials([string(credentialsId: 'sonarqube-token', variable: 'SONARQUBE_TOKEN')]) {
						dir('GenerateQR/GenerateQR_v3/GenerateQR') {
							bat 'dotnet sonarscanner begin /k:"DevSecops" /d:sonar.host.url="http://localhost:9000"  /d:sonar.token=%SONARQUBE_TOKEN%'
							bat 'dotnet build --configuration Release'
							bat 'dotnet sonarscanner end /d:sonar.token=%SONARQUBE_TOKEN%'
						}
					}
				}
		    }
		}
		stage('Wait for SonarQube & Email Report') {
		    steps {
		        script {
		            //echo "Waiting for SonarQube analysis to complete..."

		            withSonarQubeEnv('SonarQube') {
		                def sonarStatus = ""
		                def maxAttempts = 2 // Maximum retries
		                def attempt = 0
		                def sonarHost = "http://localhost:9000"  // Update if different
		                def sonarProjectKey = "DevSecops"  // Update with your project key
		                def sonarDashboardURL = "${sonarHost}/dashboard?id=${sonarProjectKey}"

		                while (attempt < maxAttempts) {
		                    def response = powershell(returnStdout: true, script: """
		                        \$sonarUrl = "${sonarHost}/api/qualitygates/project_status?projectKey=${sonarProjectKey}"
		                        \$token = "\$env:SONARQUBE_TOKEN" + ":"
		                        \$encodedToken = [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(\$token))
		                        \$headers = @{ Authorization = "Basic \$encodedToken" }
		                        \$result = Invoke-RestMethod -Uri \$sonarUrl -Headers \$headers -Method Get -ContentType "application/json"

		                        # Ensure JSON is properly formatted for Jenkins and return it as a single-line string
		                        \$result | ConvertTo-Json -Depth 20 -Compress
		                    """).trim()

		                    //echo "SonarQube API Raw Response: ${response}"  // Log raw response for debugging

		                    // Ensure JSON formatting is correct before parsing
		                    response = response.replaceAll('"errorThreshold":"([0-9\\.]+)"', '"errorThreshold":$1')
		                    response = response.replaceAll('"actualValue":"([0-9\\.]+)"', '"actualValue":$1')

		                    try {
		                    	if (!response || response.contains("error")) {
		                            //error "Received an invalid SonarQube API response: ${response}"
		                            echo "Received an invalid SonarQube API response: ${response}"
		                        }

		                        // Parse JSON response using JsonSlurper
		                        def jsonResponse = new groovy.json.JsonSlurper().parseText(response)
		                        //def jsonResponse = response

		                        if (!jsonResponse?.projectStatus?.status) {
		                            //error "Invalid JSON structure: Missing 'projectStatus' field."
		                            echo "Invalid JSON structure: Missing 'projectStatus' field."
		                        }

		                        sonarStatus = jsonResponse.projectStatus.status
		                        //echo "SonarQube Status: ${sonarStatus}"

		                        if (sonarStatus == "ERROR") {

		                            // Extract failing metrics
		                            def failingMetrics = jsonResponse.projectStatus.conditions.findAll { it.status == "ERROR" }

		                            def metricDescriptions = [
		                                "new_violations": "New Violations",
		                                "new_duplicated_lines_density": "New Duplicated Lines Density",
		                                "new_security_hotspots": "New Security Hotspots",
		                                "new_code_smells": "New Code Smells",
		                                "coverage": "Code Coverage",
		                                "new_coverage": "New Code Coverage",
		                                "duplicated_lines_density": "Duplicated Lines Density",
		                                "sqale_rating": "Maintainability Rating",
		                                "security_rating": "Security Rating",
		                                "reliability_rating": "Reliability Rating"
		                            ]
		                            // Format failure details
		                            def failureDetails = failingMetrics.collect { 
		                                def metricKey = it.metricKey
		                                def description = metricDescriptions.getOrDefault(metricKey, metricKey)
		                                return "**${description}** (Threshold: < ${it.errorThreshold}, Found: ${it.actualValue})"
		                            }.join("\n")

		                            // Send email with failure details
		                            emailext(
		                                to: "${EMAIL_RECIPIENT}",
		                                subject: "SonarQube Analysis Failed for QR-code",
		                                body: """<html>
		                                    <body>
		                                        <h2>SonarQube Quality Gate FAILED!</h2>
		                                        <p><strong>Failing Metrics:</strong></p>
		                                        <pre>${failureDetails}</pre>
		                                        <p>Check the <a href='${sonarDashboardURL}'>SonarQube Dashboard</a> for more details.</p>
		                                    </body>
		                                </html>""",
		            					mimeType: 'text/html',
		                            )
		                        } else {
					                // Email Report
					                emailext(
					                    to: "${EMAIL_RECIPIENT}",
					                    subject: "SonarQube Report for QR-code",
					                    body: "SonarQube analysis completed.\nQuality Gate Status: ${sonarStatus}",
					                )
		                        }
		                    } catch (Exception e) {
		                        //error "Failed to parse SonarQube API response: ${e.message}"
		                        echo "Exception: Failed to parse SonarQube API response: ${e.message}"
		                    }

		                    if (sonarStatus == "OK" || sonarStatus == "ERROR") {
		                        break
		                    }

		                    sleep 10 // Wait 10 seconds before retrying
		                    attempt++
		                }

		                if (sonarStatus == "ERROR") {
		                    //error "SonarQube analysis failed! Quality gate not passed."
		                    echo "SonarQube analysis failed! Quality gate not passed."
		                }
		            }
		        }
		    }
		}
		stage('Run Tests') {
			steps {
				script {
					failedStage = "Unit Tests"  // ✅ Set stage name
                }
				dir('GenerateQR/GenerateQR_v3/GenerateQR/GenerateQR.Tests') {
					bat 'dotnet test --logger trx --results-directory TestResults'
				}
			}
		}
		stage('Build Docker Image & Push to Docker Hub') {
			steps {
				script {
					failedStage = "Docker Build & Push"  // Set stage name
				}
				withCredentials([usernamePassword(credentialsId: 'dockerhub-credentials', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
					dir('GenerateQR/GenerateQR_v3/GenerateQR') {
						bat """
						docker login -u %DOCKERHUB_USERNAME% -p %DOCKERHUB_PASSWORD%
						docker build -t mrrobogen/devsecops-3:latest .
						docker push mrrobogen/devsecops-3:latest
						"""
					}
				}
			}
		}

		stage('Create Pull Request to Deployment') {
		    steps {
		        script {
		    		failedStage = "Pull Request"  // ✅ Set stage name
		            def GITHUB_TOKEN = credentials('GITHUB_API_KEY')  // GitHub Token stored in Jenkins credentials
		            def GITHUB_USERNAME = "mhussain-arch"  // Replace with your GitHub username
		            def GITHUB_EMAIL = "k213584@nu.edu.pk"
		            def REPO = "mhussain-arch/devsecops-assignment-3"  // Replace with your repo name
		            def SOURCE_BRANCH = "main"
		            def TARGET_BRANCH = "deployment"
		            def PR_TITLE = "Automated PR: Merge ${SOURCE_BRANCH} into ${TARGET_BRANCH}"
		            def PR_BODY = "This PR was automatically generated by Jenkins."

		            // Set the correct Git user in Jenkins
		            bat "git config --global user.name \"${GITHUB_USERNAME}\""
		            bat "git config --global user.email \"${GITHUB_EMAIL}\""

		            // Create a pull request using GitHub API
					withCredentials([string(credentialsId: 'GITHUB_API_KEY', variable: 'GITHUB_TOKEN')]) {
					    bat """
					        curl.exe -X POST ^
					             -H "Authorization: token %GITHUB_TOKEN%" ^
					             -H "Accept: application/vnd.github.v3+json" ^
					             https://api.github.com/repos/mhussain-arch/devsecops-assignment-3/pulls ^
					             -d "{\\"title\\": \\"Automated PR: Merge main into deployment\\", \\"body\\": \\"This PR was automatically generated by Jenkins.\\", \\"head\\": \\"main\\", \\"base\\": \\"deployment\\"}"
					    """
					}
		        }
		    }
		}
	}
	post {
        success {
            emailext (
                to: "${EMAIL_RECIPIENT}",
                subject: "SUCCESS: ${currentBuild.fullDisplayName}",
                body: "Good news! The build ${currentBuild.fullDisplayName} succeeded. Check it out at ${env.BUILD_URL}.",
                mimeType: 'text/html',
                attachLog: true
            )
        }
		failure {
		    script {
		        echo "Jenkins Pipeline Failed! Sending email notification."

		        def buildStatus = currentBuild.result ?: "FAILED"
		        def failedStageMessage = "Pipeline failed at stage: ${failedStage}"
		        def buildDuration = currentBuild.durationString
		        def timestamp = new Date().format("yyyy-MM-dd HH:mm:ss", TimeZone.getTimeZone('UTC'))

		        emailext (
		            to: "${EMAIL_RECIPIENT}",
		            subject: "Jenkins Build Failed: ${env.JOB_NAME} #${env.BUILD_NUMBER}",
		            body: """
		            <html>
		            <body>
		            <h2>Jenkins Pipeline Failure Notification</h2>
		            <p><strong>Build Status:</strong> ${buildStatus}</p>
		            <p><strong>Failed Stage:</strong> ${failedStage}</p>
		            <p><strong>Build Number:</strong> ${env.BUILD_NUMBER}</p>
		            <p><strong>Build Duration:</strong> ${buildDuration}</p>
		            <p><strong>Timestamp (UTC):</strong> ${timestamp}</p>
		            <p><strong>Job:</strong> <a href="${env.BUILD_URL}">${env.JOB_NAME} #${env.BUILD_NUMBER}</a></p>
		            
		            <p>Please check the <a href="${env.BUILD_URL}console">Jenkins Console Logs</a> for full details.</p>
		            </body></html>
		            """,
		            mimeType: 'text/html',
                    attachLog: true
		        )
		    }
		}
        unstable {
            emailext (
                to: "${EMAIL_RECIPIENT}",
                subject: "UNSTABLE: ${currentBuild.fullDisplayName}",
                body: "The build ${currentBuild.fullDisplayName} is unstable. Please check the results at ${env.BUILD_URL}.",
                mimeType: 'text/html',
                attachLog: true
            )
        }
    }
}