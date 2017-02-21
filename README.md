# REAL ESTATE WITH PURPOSE

## Local

* ```git clone``` [https://github.com/the-difference-engine/real-estate-with-purpose.git]

* ```bundle install```

* ```rake db:create```

* ```rake db:migrate```

* To start server: ```rails server```

* To run tests: ```rspec spec```

* Rails version 5.0

### Dependencies

##### This app uses the Paperclip gem and requires ImageMagick. To ensure that it does, on your command line, run ```which convert``` (one of the ImageMagick utilities). This will give you the path where that utility is installed. For example, it might return ```/usr/local/bin/convert```.

##### Then, in your environment config file, let Paperclip know to look there by adding that directory to its path.

##### In development mode, you might add this line to config/environments/development.rb):

Paperclip.options[:command_path] = "/usr/local/bin/"

* If you're on Mac OS X, you'll want to run the following with Homebrew:

```brew install imagemagick```

##### If you are dealing with pdf uploads or running the test suite, you'll also need to install GhostScript. On Mac OS X, you can also install that using Homebrew:

```brew install gs```

##### If you are on Ubuntu (or any Debian base Linux distribution), you'll want to run the following with apt-get:

```sudo apt-get install imagemagick -y```

### Environment Variables

* ```touch .env```

#### SimplyRETS API

* USERNAME

* PASSWORD

#### Google Maps API

* GOOGLE
