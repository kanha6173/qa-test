
$frontendUrl = "http://172.17.194.83:31043/"


$response = wget $frontendUrl
#Write-Output "Response from frontend service: "$response

 $content = $response.Content
  #Write-Output "content from wget : "$content
  
  if ($content -match '<h1>(.*?)<\/h1>') {
    $greeting = $matches[1]

  }
  #Write-Output "Message: "$greeting
  
if ($greeting -eq "Hello from the Backend!") {
    Write-Output "Integration test successful: frontend displays correct message and the message is :"$greeting
    exit 0
} else {
    Write-Output "Integration test failed: frontend does not display correct message."
    exit 1
}
