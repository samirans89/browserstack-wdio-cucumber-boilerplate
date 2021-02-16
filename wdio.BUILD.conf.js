const path = require('path');
const { config } = require('./wdio.conf.js');

config.services = [
    [
        'static-server',
        {
            port: 8082,
            folders: [
                { mount: '/', path: path.join(__dirname, 'demo-app') },
            ],
        },
    ],
    ['browserstack', {
        browserstackLocal: false
    }]
];

//config.path = '/';
config.beforeFeature = () => {
    /**
     * check if static website is up and cancel if not
     */
    browser.url('/');
    const pageTitle = browser.getTitle();
    if (pageTitle !== 'DEMO APP') {
        console.error(`Demo app is not up, found ${pageTitle}`);
        console.log(browser.getPageSource());
        //process.exit(1);
        throw new Error(`Demo app is not up, found ${pageTitle}`);
    }

    var yourscript = exec('sh running_local_binary_processes.sh',
            (error, stdout, stderr) => {
                console.log(stdout);
                console.log(stderr);
                if (error !== null) {
                    console.log(`exec error: ${error}`);
                }
            });
};

if (process.env.CI) {
    config.outputDir = path.join(__dirname, 'logs');
}

exports.config = config;
