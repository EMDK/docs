# Readme


## About This Repo
This repository contains the developer documentation to Zebra's EMDK for Android.


## Viewing The Documentation
The documentation can be viewed by opening your browser and going to `http://emdk.github.io/docs/[version]/`. Where `[version]` is replaced by the version of the EMDK release. ex:

[http://emdk.github.io/docs/3.1](http://emdk.github.io/docs/3.1)

You can also browse to [http://emdk.github.io/docs](http://emdk.github.io/docs) and select the version of documentation you wish to view

## Reporting Issues
You can report issues on the documentation by [filing an issue](https://github.com/EMDK/docs/issues). 

> You must have a GitHub account to file issues

## Contributing
The source of the documentation is in the `gh-pages` branch under a version specific folder. Checkout this branch and work in the `source` folder below the specific version that is editing.

* version
  * source
    *sub folders

Each guide is developed in Markdown format (not GitHub flavored markdown) 

> The `edge` folder is used to host beta or pre-release documentation for versions that may not be available to the general public

### Generating 
Running the command

	rake docs_generate version=[Version-Folder-Name]

Where `[Version-Folder-Name]` is the version you wish to generate. If `version` is left out it will use the `edge` folder by default.

ex:

	rake docs_generate version=3.1
