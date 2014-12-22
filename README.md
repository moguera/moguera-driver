# Mogera::Driver

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'mogera-driver'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mogera-driver

## Usage

### generate

    $ mogera g(enerate) user ${NAME} (-r ${ROLE}) (-d describe)
    $ mogera g category ${NAME} (-d describe)
    $ mogera g tag ${NAME1} ${NAME2} (-d describe)
    $ mogera g image ${NAME} -p ${IMAGE_PATH} (-d describe)
    $ mogera g post ${NAME} -u ${USER_NAME} -c ${CATEGORY_NAME}
                            -t ${TAG_NAME1} ${TAG_NAME2} (-f UPLOAD_FILE_PATH)

### info

    $ mogera i(nfo) user ${ID}
    $ mogera i category ${ID}
    $ mogera i tag ${ID}
    $ mogera i image ${ID}
    $ mogera i post ${ID}

### update

    $ mogera u(pdate) user ${ID} -n ${NAME} -r ${ROLE} -d ${DESC}
    $ mogera u category ${ID} -n ${NAME} -d ${DESC}
    $ mogera u tag ${ID} -n ${NAME}
    $ mogera u image ${ID} -n ${NAME} -f ${FILE_PATH} -d ${DESC}
    $ mogera u post ${ID} -n ${NAME} -u ${USER} -c ${CATEGORY}
                          -t ${TAG1} ${TAG2} -f ${PATH}
        
### destroy

    $ mogera d(estroy) user ${ID}
    $ mogera d category ${ID}
    $ mogera d tag ${ID}
    $ mogera d image ${ID}
    $ mogera d post ${ID}

### fire(publish)

    $ mogera fire ${ID}

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mogera-driver/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
