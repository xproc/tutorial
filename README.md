# XProc tutorial [![Build Status](https://magnum.travis-ci.com/xquery/xproc-tutorial.svg?token=UNXhdYp7dYgp5Vyh8ZNz&branch=master)](https://magnum.travis-ci.com/xquery/xproc-tutorial)

Start reading
* [xproc-tutorial (asciidoc)](https://github.com/xquery/xproc-tutorial/blob/master/tutorial/tutorial.asciidoc)
* [xproc-tutorial (pdf)](https://github.com/xquery/xproc-tutorial/blob/master/tutorial/asciidoc/tutorial.asciidoc)

Download
* [xproc-tutorial (zip)](https://github.com/xquery/xproc-tutorial/releases/latest) 

Other
* [XProc specification (github)](https://github.com/xproc)


## How to use this Tutorial

You may download the tutorial with the latest release always available [here](https://github.com/xquery/xproc-tutorial/releases/latest)

## How to contribute to this tutorial

* fork this repository
* edit docbook source
* to view output on edited changes, run gradle
* commit
* create pull request

## How to publish tutorial

run gradle which will pull down XProc and build from docbook source

```
gradle
```

publish artifacts are generated into the dist directory

## Goal of this Tutorial

The goal is to provide a high quality tutorial that will be an entry point to learning XProc. 

Additionally, we want to provide a reference publishing workflow using XProc with github for for publishing books with docbook.

workflow
* author tutorial in docbook, commit
* generate asciidoc (or markdown) for publishing directly to github
* generate pdf, html etc targets 
* enable continuous publishing workflow with github

ideas
* other targets (saxon-ce help)
* xquerydoc in docbook ?

# magic incantations 

## generate oath token for .travis.yml
```
curl -X POST -u xquery -H "Content-Type: application/json" -d "{\"scopes\":[\"repo_deployment\",\"repo\",\"public_repo\"],\"note\":\"xproc-tutorial publish\"}" https://api.github.com/authorizations
```
## tag
```
git tag v0.0.1
```

## push tags
```
git push origin --tags
```

## delete tag
```
git tag -d tagname
git push origin :refs/tags/tagname
```
