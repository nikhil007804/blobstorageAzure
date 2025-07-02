
#  Azure Blob Storage Automation using Terraform & GitHub Actions

This project automates the provisioning of an **Azure Storage Account** and a **Blob Container** using **Terraform**. It also sets up **remote state management** and integrates with **GitHub Actions** for CI/CD deployment.

---

##  What This Project Does

- Creates an Azure **Resource Group**
- Provisions an Azure **Storage Account**
- Creates a **Blob Container**
- Stores Terraform **state file remotely** in Azure Blob Storage
- Uses **GitHub Actions** to deploy on every push

---

##  Project Structure

```
.
├── main.tf                 # Terraform resources
├── provider.tf             # Provider and version settings
├── backend.tf              # Remote backend config
├── variables.tf            # Input variables
├── terraform.tfvars        # Variable values
└── .github/
    └── workflows/
        └── deploy.yml      # GitHub Actions CI/CD workflow
```

---

##  GitHub Secrets Required

Add the following **secrets** in your GitHub repository:

| Secret Name              | Description                           |
|--------------------------|----------------------------------------|
| `AZURE_CLIENT_ID`        | Application (client) ID                |
| `AZURE_CLIENT_SECRET`    | Client secret value                    |
| `AZURE_TENANT_ID`        | Directory (tenant) ID                  |
| `AZURE_SUBSCRIPTION_ID`  | Azure subscription ID                  |
| `ARM_CLIENT_ID`          | Same as AZURE_CLIENT_ID               |
| `ARM_CLIENT_SECRET`      | Same as AZURE_CLIENT_SECRET           |
| `ARM_TENANT_ID`          | Same as AZURE_TENANT_ID               |
| `ARM_SUBSCRIPTION_ID`    | Same as AZURE_SUBSCRIPTION_ID         |

---

##  Remote State Configuration

The `backend.tf` stores the state in a dedicated **Azure Storage Account**:

- **Storage Account**: `tfstate1234`
- **Container**: `tfstate`
- **Key**: `blob-container.terraform.tfstate`

This allows collaboration and keeps state consistent across environments.

---

##  How to Use

1. **Clone this repo**  
   ```bash
   git clone https://github.com/Pratyushaa94/Azure-BlobStorage.git
   cd Azure-BlobStorage
   ```

2. **Create a branch (optional)**  
   ```bash
   git checkout -b feature/blob-cicd
   ```

3. **Push to GitHub**  
   ```bash
   git add .
   git commit -m "Initial setup with Terraform and CI"
   git push -u origin feature/blob-cicd
   ```

4. **GitHub Actions will automatically apply your Terraform code.**

---

##  Tech Used

- **Terraform**
- **Azure CLI**
- **Azure Resource Manager**
- **GitHub Actions**

---

##  Notes

- Make sure your Service Principal (ex : `myapp`) has **Contributor** access.
- This project assumes `terraform.tfstate` is stored remotely and not committed.
- You can destroy resources safely by running `terraform destroy`.

---
