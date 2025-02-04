# qa-test
# Setup and Deployment Guide for qa-test Project on Minikube

This combined README.md provides a comprehensive guide for setting up, deploying, verifying, and automating the `qa-test` project on Minikube using PowerShell in a structured and organized manner. Adjust the paths, script names, and additional notes according to your specific setup and requirements.

## Prerequisites

1. **Minikube:** Ensure Minikube is installed and configured to run with the Hyper-V driver.
2. **kubectl:** Install `kubectl` to manage Kubernetes clusters.
3. **Git:** Install Git to clone the repository.
4. **Windows OS:** Ensure you have a Windows operating system installed.
5. **PowerShell:** PowerShell is included by default in most versions of Windows. Ensure PowerShell is installed and accessible from the command line.

## Steps for deploying app in Minikube

To set up and deploy the `qa-test` project on Minikube, follow these steps:

# 1. Clone the repository and navigate to the project directory
git clone https://github.com/Vengatesh-m/qa-test
cd qa-test

# 2. Start Minikube with the Hyper-V driver and specify the virtual switch
minikube start --vm-driver=hyperv --hyperv-virtual-switch=minikube

# 3. Apply Kubernetes deployment configurations for backend and frontend services
kubectl apply -f backend-deployment.yaml
kubectl apply -f frontend-deployment.yaml

# 4. Check the status of deployed pods
kubectl get pods

# 5. Get the URL to access the frontend service
minikube service frontend-service

# Use wget or a web browser to verify the deployment
wget <frontend-service-url>
--------------------------------------------------------------------------------
## Steps for running Automating script

# 1. Open PowerShell

- **Option 1:** Open PowerShell from the Start menu.
  
  - Search for `PowerShell` or `Windows PowerShell` in the Start menu.
  - Click on `Windows PowerShell` or `PowerShell` to open it.

- **Option 2:** Open PowerShell from the Run dialog.
  
  - Press `Win + R` to open the Run dialog.
  - Type `powershell` and press `Enter` to open PowerShell.

# 2. Navigate to the Directory Containing the Script

Use `cd` (Change Directory) command to navigate to the directory where your PowerShell script (`test1.ps1`) file is located.

cd C:\Path\To\Your\Script\Directory (under `qa-test` directory)

# 3. Run the PowerShell Script

Once you are in the correct directory, run the PowerShell script by typing its name along with the .ps1 extension.

.\test1.ps1

# 4. Validation

if the output of script is "Integration test successful: frontend displays correct message." Then, the frontend correctly displays the message returned by the backend.

Note - You can also view the code by opening the test1.ps1 using Notepad.