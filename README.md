# Neck on Brunch

[Neck](https://github.com/smalluban/neck) application skeleton.

## Features

* File structure for Neck
* Jade Templating engine
* Stylus CSS language
* Auto reloading on save
* CoffeeScript as main code language

## File Structure

```
├── app                     # Application specific files
│   ├── assets              # Static files that are just copied
│   │   ├── index.html      # HTML skeleton
│   ├── controllers         # Neck screen controllers in subpaths
│   │   ├── example.coffee  # Example flow controller
│   ├── helpers             # Your on helpers (Neck controllers) to use in App
│   ├── models              # Spine models
│   ├── styles              # Stylus css files
│   │   ├── app.styl        # Example globals style file
│   ├── templates           # Jade tempalating files
│   │   ├── app.jade        # Main App View template
│   │   ├── example.jade    # Example flow view
│   └── app.coffee          # App start with this file
├── bower_components        # Packages installed by Bower
├── public                  # Generated final product
├── test                    # Test-related files
├── config.coffee           # Brunch app build configuration
└── package.json            # Project dependencies and configuration
```

## Setup

```
npm install -g brunch
npm install -g bower
brunch new https://github.com/smalluban/neck-skeleton.git app_path
```

## Getting started

To run clean project do in console `npm start`. It will run brunch with auto reload plugin. You can
write your App now.

## Bower components

* jQuery ~ 2.0.3
* Neck ~ 0.1.0