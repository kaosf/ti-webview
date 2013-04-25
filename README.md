# Titanium WebView Application

## Versions

* Java: Oracle JDK 6
* Titanium Mobile SDK: 3.1.0.GA
* Node.js: 0.8.19
* Titanium CLI: 3.0.23
* Alloy: 1.0.0
* Grunt: 0.4.1
* grunt-cli: 0.1.7

## Preparation for development

Install Oracle JDK 6 and [Node.js](http://nodejs.org/).

I recommend you to install Node.js with [Nodebrew](https://github.com/hokaccha/nodebrew).

```sh
nodebrew install-binary v0.8.19
nodebrew use v0.8.19
```

Install [Titanium CLI](https://github.com/appcelerator/titanium), [Alloy](https://github.com/appcelerator/alloy) and [Grunt (grunt-cli)](http://gruntjs.com/) with npm.

```sh
npm install -g titanium@3.0.23 alloy@1.0.0 grunt-cli@0.1.7
```

Log in and install Titanium Mobile SDK with Titanium CLI.

If you are using Ubuntu (or other Linux distribution), you need to install `unzip` package. Execute `sudo apt-get install unzip` before going to the next step.

```sh
ti login
ti sdk install 3.1.0.GA
```

At last, you only have to install some Node.js packages for Grunt.

```sh
npm install
```

## Build

### Android application

```sh
grunt
```

`<project-directory>/build/android/bin/app.apk` is generated. You can use it as you like!

### iOS application

Coming soon... Would you wait for me a little?

(If you can, make Pull Request.)

# License

[Apache License v2.0](http://www.apache.org/licenses/LICENSE-2.0)
