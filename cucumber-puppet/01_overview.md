!SLIDE transition=fade

&nbsp;

!SLIDE transition=fade bullets

# cucumber-puppet #

!SLIDE bullets incremental

# cucumber-puppet #

* test the catalog from cucumber
* small access layer
* mostly your own steps
* well, it is just cucumber...

!SLIDE bullets incremental

# setup

* `gem install cucumber-puppet`
* `cucumber-puppet-gen world`

!SLIDE code

# `cucumber-puppet-gen`

Available generators
    feature     Generate a cucumber feature
    policy      Generate a catalog policy
    testcase    Generate a test case for the test suite
    testsuite   Generate a test suite for puppet features
    world       Generate cucumber step and support files

!SLIDE bullets incremental

# running tests

* `clear;bundle exec cucumber -s -r features/`
* `cucumber`
