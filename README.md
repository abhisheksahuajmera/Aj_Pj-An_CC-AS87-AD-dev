# Aj_Pj-An_CC-AS87
This is an example repository of Terraform code.
And it is based on TFC multi-space pattern for env isolating.
It highlights the Major Azure resources like `network` and `compute` and infrastructure in multiple environments with Terraform Cloud & GitHub.

ation.  It will keep the  portions of the application in seperate TFC workspaces and connect them via a `chain-runner` which uses the `tfe_workspace_run` resource to define workspace dependencies between these workspaces.

## Setup or Bootstrap dependencies:
1. Create Service Principle from different azure account depending on the environment.
- Get the azure account specific Secret Keys to connect with TFC.

1. Create a single repo and multi env branch project in GitHub 
  - **Name the branches**: `dev`, `qa` depending on the environment you're creating
  - **GitHub repository**: `Aj_Pj-An_CC-AS87`

1. Create pesonal access token to connect with TFC

1. Create TFC org and project
- To setup a multi-environment deployment workflow, create a Terraform Cloud VCS Driven workspaces refering different environment.
- Do VCS set up within new workspaces to store Azure secret keys and linked to GitHub repo.

1. Go to **Variables** in the left navigation of each environment
  - Add the below **Environment Variables**
    - `ARM_CLIENT_ID`: `app id`
    - `ARM_CLIENT_SECRET`: `password`
    - `ARM_SUBSCRIPTION_ID`: `subscription id`
    - `ARM_TENANT_ID`: `tenant id`
  -  Add the below **Terraform Variables** to override the defaults to be environment specific
    - `environment`: `dev`, `qa` depending on the environment you're creating
    - The placeholder variables allow you to remove environment specific or secret/sensitive variables from version control
1. Click **Queue plan** and **Confirm & apply** for each environment to deploy the infrastructure

## Implement:
1. Setup **root module** as a entry point 
1. Keep the config files specific to environment in config folder
1. Create module folder and start writting nested modules like **networking and storage** to define the infrastructure

## Deployment Workflow
Below is an example deployment workflow you can use to version changes through each environment in a collaborative way.

1. Create and push a feature branch with a proposed change
1. Create a pull request for your feature branch against `master`
  - You should see 3 Terraform plan checks that have changes
1. Deploy your feature branch to `dev`
  - Go to **VCS Integration Setting ** of terraform cloud `dev` environment workspace and refer your feature branch name into **vcs branch**, then click **Update VCS settingsGitHub settings**
  - This will take the source code from perticular branch when we are setting **Plan & Apply** or **Runs** to deploy
  - We can lock the workspace once run is successful
1. Deploy your dev branch to `qa`
  - Go to **VCS Integration Setting ** of terraform cloud `qa` environment workspace and refer your feature branch name into **vcs branch**, then click **Update VCS settingsGitHub settings**
  - This will take the source code from perticular branch when we are setting **Plan & Apply** or **Runs** to deploy
1. Deploy your qa branch to `prod` now that you've tested the change in `dev` and `qa`
  - Merge your pull request
  - Run a Terraform Workflow for **Plan and Apply** of the `prod` environment to deploy
1. Remove your feature branch from **GitHub branch** of `dev` and `qa`

- Inside TFC first apply the `dev` workspace.
- Setup a trigger to run next workspace like,it should trigger the `qa` workspace.

## Enable version control on terraform state files to Manage backend for tfstate files

## Disaster Management or Recovery or Revert Workflow
