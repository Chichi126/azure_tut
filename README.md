# azure_tut

## Understanding Azure Service Tools for Data Engineers

(kindly note that this will be updated on each milestone)

## Tools Used
- Terminal/iTerm for the CLI
- Terraform
- Azure Console
- Vscode

## Steps to Create a Resource Group and Storage Account Using the CLI

### Using the bash command I created them through Vscode 

### 1. Log in to Azure

### 2. Create a New Resource Group

### 3. Confirm the Resource Group Exists

### 4. Create a New Storage Account

### 5. Confirm the Storage Account Exists

follow the CLI link here


## Understanding the Key Clients in Azure Data Lake

While the initial steps were straightforward, the real challenge was understanding the various clients used in Azure Data Lake. Once I understood their roles, the process became much clearer. Here’s a brief overview:

### 1. Service Client (`DataLakeServiceClient`)
This is your entry point for interacting with the Data Lake service. The service client is responsible for authenticating your requests and establishing a connection to your Azure storage account.

### 2. File System Client (`FileSystemClient`)
Operating under the service client, the file system client allows you to create, manage, and delete file systems, which are similar to containers in Blob storage. This client is essential for managing your file structure within the Data Lake.

### 3. Directory Client (`DataLakeDirectoryClient`)
The directory client is created from the file system client. It helps you manage directories within the file system, enabling you to create, delete, and manage both directories and files. This is the client you use when you need to interact with specific folders and files in your Data Lake.

### Process Flow
The workflow typically follows this sequence:

`DataLakeServiceClient >> FileSystemClient >> DataLakeDirectoryClient >> Upload`

Each client is crucial for the next step in the process:
- **Service Client**: Connects to Azure.
- **File System Client**: Manages your containers (file systems).
- **Directory Client**: Handles your directory and file operations, leading to the final step of uploading your files.

