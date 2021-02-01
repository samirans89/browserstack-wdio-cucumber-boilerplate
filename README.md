BrowserStack WebDriverIO Cucumber Boilerplate
====================

[![Build Status](https://travis-ci.org/webdriverio/cucumber-boilerplate.svg?branch=master)](https://travis-ci.org/webdriverio/cucumber-boilerplate)

***

Boilerplate project to run WebdriverIO tests with [Cucumber](https://cucumber.io/) and brings **true** [BDD](http://en.wikipedia.org/wiki/Behavior-driven_development) to JavaScript. Instead of writing complicated test code that only developers can understand, Cucumber maps an ordinary language to code and allows to start with the test process in the early stages of your product development.

## Requirements

- Node version 8 or higher
- A preconfigured Selenium Grid, preinstalled browser driver or cloud provider account

Although this project works fine with NPM we recommend to use Yarn (>= 1.0.0) instead,  due to its speed & solid dependency locking mechanism. To keep things simple we use yarn in this guide, but feel free to replace this with NPM if that is what you are using.

Also this project doesn't cover setting up a proper test environment. You need to download specific browser driver yourself and run the prior starting tests or use a cloud provider like [SauceLabs](https://saucelabs.com/).

## Quick start


Install the dependencies (`yarn install`)



## Features

- Super simple setup
- Full integration with [WebdriverIO](http://webdriver.io/)
- Over 150 predefined steps that cover almost everything you need, you can start writing tests right away
- Easy integration with cloud services like [BrowserStack](https://browserstack.com/)
- Easy to run tests in parallel with scale.


# How to run the test

Start the local web server and run tests:

```sh
$ yarn run test
```
