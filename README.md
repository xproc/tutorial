# tutorial [![Build Status](https://magnum.travis-ci.com/xquery/xproc-tutorial.svg?token=UNXhdYp7dYgp5Vyh8ZNz&branch=master)](https://magnum.travis-ci.com/xquery/xproc-tutorial)

The goal is to provide a high quality tutorial that will be an entry point to learning XProc in both the first five minutes and first day scenariosg. 

Additionally, we want to provide a reference publishing workflow using XProc with github for for publishing books with docbook.

workflow
* author tutorial in docbook, commit
* generate asciidoc (or markdown) for publishing directly to github
* generate pdf, html etc targets 
* enable continuous publishing workflow with github

ideas
* other targets (saxon-ce help)
* xquerydoc in docbook ?


# incant to generate oath token
curl -X POST -u xquery -H "Content-Type: application/json" -d "{\"scopes\":[\"repo_deployment\",\"repo\",\"public_repo\"],\"note\":\"xproc-tutorial publish\"}" https://api.github.com/authorizations

#github incants

 to delete tag
 git tag -d tagname
 git push origin :refs/tags/tagname
