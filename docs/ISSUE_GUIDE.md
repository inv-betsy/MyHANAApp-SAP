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