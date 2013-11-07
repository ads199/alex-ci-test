CI Test
============

CI test with NodeJS and Codeship

Needs following setup commands on Codeship :

```
# By default we use the Node.js version set in your package.json or 0.10.18
# You can use nvm to install any Node.js version.
# i.e.: nvm install 0.8.22
nvm install 0.10.18
nvm use 0.10.18
npm install -d
npm install coffee-script
npm install mocha
# Install grunt-cli for running your tests or other tasks
# npm install grunt-cli
```

Test commands

```
npm test
```

Environment variables

```
APP_ENV=test
```
