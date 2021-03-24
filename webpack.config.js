const path = require("path");
const LiveReloadPlugin = require("webpack-livereload-plugin");

module.exports = {
    resolve: {
        alias: {
            "@": path.resolve("resources/js"),
        },
    },
    devServer: {
        host: "0.0.0.0",
        port: 8080,
    },
};
