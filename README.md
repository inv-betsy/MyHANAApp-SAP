# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch`
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

## Run the services

cds bind -2 MyHANAApp-Organization-dev:SharedDevKey
<!-- Use the command cds bind -2 MyHANAApp-Organization-dev:SharedDevKey to tell CAP to bind to this same HANA Cloud HDI service instance that we bound to earlier in the SAP HANA Projects view. -->

## To Start the CAP service locally

cds watch --profile hybrid

## Issues

1. Login to Cloud Foundry
2. Start SAP HANA Cloud
3. Bind the services
4. Deploy
5. cf services