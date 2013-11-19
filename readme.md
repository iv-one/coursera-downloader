Coursera Videos Downloader
--------------------------

Google chrome extension, that allow you download video materials from [http://coursera.org](http://coursera.org)

![Coursera Videos Downloader](https://github.com/ivan-dyachenko/coursera-downloader/blob/master/readme/github.jpg?raw=true)

Require features
----------------

If you need new features or have any problems or suggestions please add it on [http://github/](https://github.com/ivan-dyachenko/coursera-downloader/issues) !

How to install
--------------

In your terminal run

```
git clone git@github.com:ivan-dyachenko/coursera-downloader.git
```

In Google Chrome open `chrome://extensions/` and click `Load unpacked extension…` button. Next select `coursera-downloader` folder.


How to build
------------

- Install [NodeJS](http://nodejs.org/)
- Install [CoffeeScript](http://coffeescript.org/#installation)

In your terminal run

```
git clone git@github.com:ivan-dyachenko/coursera-downloader.git
cd ./coursera-downloader
npm install
cake
cake build
```