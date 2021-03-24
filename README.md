Run `./setup.sh` to start the application and install dependencies.

The Jetpack installer resets the webpack config which breaks HMR so pull down the config
`git checkout webpack.config.js`

Start HMR with `/vendor/bin/sail npm run hot`
