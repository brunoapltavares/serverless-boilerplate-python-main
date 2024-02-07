# Serverless Boilerplate Python

This boilerplate uses:

- Poetry, a package manager which makes our life easier with dependencies;
- FastAPI, a framework for defining APIs;
- Serverless, a tool to develop and manage functions dependencies and deployment;
- Github Actions to automatically deploy to production (CI).

## Setup

You need to have installed:

- Poetry (you can follow the step inside [data-etl](https://github.com/mercadofavo/data-etl) project);
- Nodejs;
- NPM.

Then install the packages of the project:

```
poetry install
```

```
npm install
```

Then check your aws credentials in [AWS credentials manager](https://favo-sso.awsapps.com/start#/), replace both `<AWS_ACCESS_KEY_ID>` and `<AWS_SECRET_ACCESS_KEY>` in setup_wsl_linux.sh and run the following:

```
cd ~/code/serverless-boilerplate-python/config-scripts
chmod -x setup_wsl_linux.sh
bash setup_wsl_linux.sh
```

## Run locally

```
npm run dev
```

Then you can go to http://localhost:3000/ and check the result :smile:

## Deploy locally

In order to deploy (and test if everything is ok), you can run the following:

```
npm run deploy:dev
```

## Development

1. You can open a `pull request` and it deploys a development version;
2. When you `merge` it will deploy a production version.
