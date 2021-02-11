const path = require('path');
const { config } = require('./wdio.conf.js');

config.services = [
    ['browserstack', {
        browserstackLocal: false
    }]
];


if (process.env.CI) {
    config.outputDir = path.join(__dirname, 'logs');
}

exports.config = config;
