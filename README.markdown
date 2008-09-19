ToSlug
======

This plugin adds a to_slug method to String instances. With this method you 
can easily generate a slug from any string. Slugs can be used for URLs, since
all 'dangerous' characters have been filtered out.

Examples
--------

    "Hello World".to_slug
    # => "hello-world"

    "The World is Beautiful!".to_slug 
    # => "the-world-is-beautiful"

It handles unicode characters too:

    "aëòúi".to_slug 
    # => "aeoui"

And underscores are left intact:

    "Please leave my_underscores_intact".to_slug
    # => "please-leave-my_underscores_intact"

See the specs for more (complex) examples.

Installation
------------

Using Rails plugin installer script:

    script/plugin install git://github.com/ludo/to_slug.git

Or as a submodule in a Git repository:

    git submodule add git://github.com/ludo/to_slug.git vendor/plugins/to_slug

Copyright (c) 2008 Cubicphuse, released under the MIT license