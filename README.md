# Example App for Info3  - HTW Application

This is an example app for the Rails Labs in Info3 HTW Berlin WS2017/18.

Travis Build Status: [![Build Status](https://travis-ci.org/htw-imi-info3/rails-dash-ws2017.svg?branch=master)](https://travis-ci.org/htw-imi-info3/rails-dash-ws2017)

- this only checks if the database seeds can be loaded.


## How to push a change

The master branch is now closed for direct pushes. To commit a change, create a
new branch, push the branch to repository, wait for the travis checks to pass,
create a pull request, and merge your pull request:

    git checkout -b branch-for-change
    ... make your changes ...
    git add .  (or the changes you want to commit! . is a filename...)
    git status  (check if only the changes you want to commit are staged)
    git commit -m "edited README"
    git push origin branch-for-change

go to github (note: there is a gem hub which enables)
    hub browse

and create and merge the pull request.
