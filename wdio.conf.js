const path = require('path');
const wdioParallel = require('wdio-cucumber-parallel-execution');
const argv = require("yargs").argv;
const fs = require('fs-extra')
const { hooks } = require('./src/support/hooks');

// The below module is used for cucumber html report generation
const reporter = require('cucumber-html-reporter');
const currentTime = new Date().toJSON().replace(/:/g, "-");
var browserstack = require('browserstack-local');

const sourceSpecDirectory = `./src/features/`;
const tmpSpecDirectory = `${sourceSpecDirectory}/tmp`;
const parallelExecutionReportDirectory = `./report/`;

let featureFilePath = `${tmpSpecDirectory}/*.feature`;
const is_parallel_execution = (argv.parallel === 'true')

let specs_folder = []
if (is_parallel_execution)
  specs_folder = ['./src/features/tmp/*.feature']
else
  specs_folder = ['./src/features/*.feature']

  if(typeof process.env.BROWSERSTACK_BUILD_NAME !== 'undefined') {
      build_suffix = process.env.BROWSERSTACK_BUILD_NAME;
  }
  else {
    build_suffix = '101';
  }

exports.config = {

  user: process.env.BROWSERSTACK_USERNAME || 'BROWSERSTACK_USERNAME',
  key: process.env.BROWSERSTACK_ACCESS_KEY || 'BROWSERSTACK_ACC_KEY',
  specs: specs_folder,
  maxInstances: 100,
  commonCapabilities: {
   "project" : "WebDriverIO Cucumber BrowserStack Boilerplate",
   "build" : "WebdriverIO cucumber BrowserStack - " + process.env.BROWSERSTACK_BUILD_NAME,
   "name": 'parallel_test',
  },

  host: 'hub.browserstack.com',
  execArgv:['--max_old_space_size=256'],


    //
    // ====================
    // Runner Configuration
    // ====================
    //
    // WebdriverIO allows it to run your tests in arbitrary locations (e.g. locally or
    // on a remote machine).
    runner: 'local',

    // Patterns to exclude.
    exclude: [
        // 'path/to/excluded/files'
    ],
    //
    // ============
    // Capabilities
    // ============
    // Define your capabilities here. WebdriverIO can run multiple capabilities at the same
    // time. Depending on the number of capabilities, WebdriverIO launches several test
    // sessions. Within your capabilities you can overwrite the spec and exclude options in
    // order to group specific specs to a specific capability.
    //
    // First, you can define how many instances should be started at the same time. Let's
    // say you have 3 different capabilities (Chrome, Firefox, and Safari) and you have
    // set maxInstances to 1; wdio will spawn 3 processes. Therefore, if you have 10 spec
    // files and you set maxInstances to 10, all spec files will get tested at the same time
    // and 30 processes will get spawned. The property handles how many capabilities
    // from the same test should run tests.
    //
    //maxInstances: 50,
    //
    // If you have trouble getting all important capabilities together, check out the
    // Sauce Labs platform configurator - a great tool to configure your capabilities:
    // https://docs.saucelabs.com/reference/platforms-configurator
    //
    capabilities: [{
      "os" : "Windows",
      "os_version" : "10",
      "browserName" : "Chrome",
      "browser_version" : "latest",
      "browserstack.local" : "true",
      }, {
        "os" : "Windows",
        "os_version" : "10",
        "browserName" : "Firefox",
        "browser_version" : "latest",
        "browserstack.local" : "true",
      }, {
        "os" : "Windows",
        "os_version" : "10",
        "browserName" : "Edge",
        "browser_version" : "latest",
        "browserstack.local" : "true",
        "browserstack.chrome.driver": "88.0.705.50",
      }
      , {
        "os" : "OS X",
        "os_version" : "Catalina",
        "browserName" : "Safari",
        "browser_version" : "13.0",
        "browserstack.local" : "true",
        }
    ],
    //
    // ===================
    // Test Configurations
    // ===================
    // Define all options that are relevant for the WebdriverIO instance here
    //
    // Level of logging verbosity: trace | debug | info | warn | error | silent
    logLevel: 'error',
    outputDir: path.join(__dirname, '/logs'),
    //
    // Set specific log levels per logger
    // loggers:
    // - webdriver, webdriverio
    // - @wdio/applitools-service, @wdio/browserstack-service,
    //   @wdio/devtools-service, @wdio/sauce-service
    // - @wdio/mocha-framework, @wdio/jasmine-framework
    // - @wdio/local-runner, @wdio/lambda-runner
    // - @wdio/sumologic-reporter
    // - @wdio/cli, @wdio/config, @wdio/sync, @wdio/utils
    // Level of logging verbosity: trace | debug | info | warn | error | silent
    // logLevels: {
    //     webdriver: 'info',
    //     '@wdio/applitools-service': 'info'
    // },
    //
    // If you only want to run your tests until a specific amount of tests have failed use
    // bail (default is 0 - don't bail, run all tests).
    bail: 0,
    //
    // Set a base URL in order to shorten url command calls. If your `url` parameter starts
    // with `/`, the base url gets prepended, not including the path portion of your baseUrl.
    // If your `url` parameter starts without a scheme or `/` (like `some/path`), the base url
    // gets prepended directly.
    baseUrl: 'http://localhost:8082',
    //
    // Default timeout for all waitFor* commands.
    waitforTimeout: 30000,
    //
    // Default timeout in milliseconds for request
    // if browser driver or grid doesn't send response
    connectionRetryTimeout: 90000,
    //
    // Default request retries count
    connectionRetryCount: 3,
    //
    // Test runner services
    // Services take over a specific job you don't want to take care of. They enhance
    // your test setup with almost no effort. Unlike plugins, they don't add new
    // commands. Instead, they hook themselves up into the test process.
    // services: [],
    //
    // Framework you want to run your specs with.
    // The following are supported: Mocha, Jasmine, and Cucumber
    // see also: https://webdriver.io/docs/frameworks.html
    //
    // Make sure you have the wdio adapter package for the specific framework installed
    // before running any tests.
    framework: 'cucumber',
    //
    // The number of times to retry the entire specfile when it fails as a whole
    // specFileRetries: 1,
    //
    // Whether or not retried specfiles should be retried immediately or deferred
    // to the end of the queue specFileRetriesDeferred: false,
    //
    // Test reporter for stdout.
    // The only one supported by default is 'dot'
    // see also: https://webdriver.io/docs/dot-reporter.html
    reporters: ['dot',   [ 'cucumberjs-json', {
                jsonFolder: './report/',
                language: 'en',
            },
        ]],
    //
    // If you are using Cucumber you need to specify the location of your step definitions.
    cucumberOpts: {
        // <boolean> show full backtrace for errors
        backtrace: false,
        // <string[]> module used for processing required features
        requireModule: ['@babel/register'],
        // <boolean< Treat ambiguous definitions as errors
        failAmbiguousDefinitions: true,
        // <boolean> invoke formatters without executing steps
        // dryRun: false,
        // <boolean> abort the run on first failure
        failFast: false,
        // <boolean> Enable this config to treat undefined definitions as
        // warnings
        ignoreUndefinedDefinitions: false,
        // <string[]> ("extension:module") require files with the given
        // EXTENSION after requiring MODULE (repeatable)
        name: [],
        // <boolean> hide step definition snippets for pending steps
        snippets: true,
        // <boolean> hide source uris
        source: true,
        // <string[]> (name) specify the profile to use
        profile: [],
        // <string[]> (file/dir) require files before executing features
        require: [
            './src/steps/given.js',
            './src/steps/then.js',
            './src/steps/when.js',
            // Or search a (sub)folder for JS files with a wildcard
            // works since version 1.1 of the wdio-cucumber-framework
            // './src/**/*.js',
        ],
        // <string> specify a custom snippet syntax
        snippetSyntax: undefined,
        // <boolean> fail if there are any undefined or pending steps
        strict: true,
        // <string> (expression) only execute the features or scenarios with
        // tags matching the expression, see
        // https://docs.cucumber.io/tag-expressions/
        tagExpression: 'not @Pending',
        // <boolean> add cucumber tags to feature or scenario name
        tagsInTitle: false,
        // <number> timeout for step definitions
        timeout: 60000,
    },
    // Code to start browserstack local before start of test
 onPrepare: function (config, capabilities) {
   fs.removeSync(parallelExecutionReportDirectory);
   // If parallel execution is set to true, then create the Split the feature files
   // And store then in a tmp spec directory (created inside `the source spec directory)
   if (is_parallel_execution) {
       wdioParallel.performSetup({
           sourceSpecDirectory: sourceSpecDirectory,
           tmpSpecDirectory: tmpSpecDirectory,
           cleanTmpSpecDirectory: true
       });
   } else {
     fs.removeSync(tmpSpecDirectory);
   }

   console.log("Connecting local");
   return new Promise(function (resolve, reject) {
     exports.bs_local = new browserstack.Local();
     exports.bs_local.start({ 'key': exports.config.key }, function (error) {
       if (error) return reject(error);

       console.log('Connected. Now testing...');
       resolve();
     });
   });


 },
  beforeSession: function (config, capabilities, specs) {

    browser.maximizeWindow();
  },

  afterSession: function (config, capabilities, specs) {

   },

 // Code to stop browserstack local after end of test
 onComplete: function (capabilties, specs) {

   try{
          let consolidatedJsonArray = wdioParallel.getConsolidatedData({
              parallelExecutionReportDirectory: parallelExecutionReportDirectory
          });

          let jsonFile = `${parallelExecutionReportDirectory}report.json`;
          fs.writeFileSync(jsonFile, JSON.stringify(consolidatedJsonArray));

          var options = {
              theme: 'bootstrap',
              jsonFile: jsonFile,
              output: `tests/reports/html/report-${currentTime}.html`,
              reportSuiteAsScenarios: true,
              scenarioTimestamp: true,
              launchReport: true,
              ignoreBadJsonFile: true
          };

          reporter.generate(options);
      } catch(err){
          console.log('err', err);
      }

      return new Promise(function(resolve, reject){
        exports.bs_local.stop(function() {
          console.log("Binary stopped");
          resolve();
        });
      });
 }

};

// Code to support common capabilities
exports.config.capabilities.forEach(function(caps){
  for(var i in exports.config.commonCapabilities) {
    caps[i] = caps[i] || exports.config.commonCapabilities[i];
  }
});
