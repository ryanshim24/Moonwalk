## cd /Users/ryanshim/Code/ionic_templates/tabs ##
Last login: Wed Dec 10 18:04:22 on ttys002
You have new mail.
➜  ~  ls
Applications Desktop      Downloads    Movies       Pictures     hello
Code         Documents    Library      Music        Public
➜  ~  cd Code 
➜  Code  ls
Cheatsheet                   ionic_templates
Circle Icons Pack            learnNode
Cooking                      learning
Final Project                npm-debug.log
Final projet                 todo
Moonwalk                     week0_prep
Nodemon                      week10_advanced
Portfolio                    week1_fundamentals
Resume                       week2_functional_programming
Road_trip                    week3_web_applications
book_club_app-master         week4_production_ready
flatty                       week6_ruby
general_questions.js         week7_rubyContinue
interview_questions.js       week8
ionic                        week9_angular
➜  Code  cd ionic
➜  ionic  cd ..
➜  Code  cd ionic_templates 
➜  ionic_templates  ls
➜  ionic_templates  ionic start tabs tabs
Creating Ionic app in folder /Users/ryanshim/Code/ionic_templates/tabs based on tabs project

Downloading: https://github.com/driftyco/ionic-app-base/archive/master.zip
[=============================]  100%  0.0s

Downloading: https://github.com/driftyco/ionic-starter-tabs/archive/master.zip
[=============================]  100%  0.0s

Update config.xml
Initializing cordova project
Fetching plugin "org.apache.cordova.device" via plugin registry
npm http GET http://registry.cordova.io/org.apache.cordova.device
npm http 304 http://registry.cordova.io/org.apache.cordova.device
Fetching plugin "org.apache.cordova.console" via plugin registry
npm http GET http://registry.cordova.io/org.apache.cordova.console
npm http 304 http://registry.cordova.io/org.apache.cordova.console
Fetching plugin "com.ionic.keyboard" via plugin registry
npm http GET http://registry.cordova.io/com.ionic.keyboard
npm http 304 http://registry.cordova.io/com.ionic.keyboard

Your Ionic project is ready to go! Some quick tips:

 * cd into your project: $ cd tabs

 * Setup this project to use Sass: ionic setup sass

 * Develop in the browser with live reload: ionic serve

 * Add a platform (ios or Android): ionic platform add ios [android]
   Note: iOS development requires OS X currently
   See the Android Platform Guide for full Android installation instructions:
   https://cordova.apache.org/docs/en/edge/guide_platforms_android_index.md.html

 * Build your app: ionic build <PLATFORM>

 * Simulate your app: ionic emulate <PLATFORM>

 * Run your app on a device: ionic run <PLATFORM>

 * Package an app using Ionic package service: ionic package <MODE> <PLATFORM>

For more help use ionic --help or visit the Ionic docs: http://ionicframework.com/docs

➜  ionic_templates  cd tabs 
➜  tabs  ls
bower.json    gulpfile.js   ionic.project plugins       www
config.xml    hooks         package.json  scss
➜  tabs  subl gulpfile.js 
➜  tabs  npm install --save gulp-coffee
npm WARN package.json tabs@1.0.0 No repository field.
npm WARN package.json tabs@1.0.0 No README data
gulp-coffee@2.2.0 node_modules/gulp-coffee
├── merge@1.2.0
├── through2@0.6.3 (xtend@4.0.0, readable-stream@1.0.33)
├── vinyl-sourcemaps-apply@0.1.4 (source-map@0.1.40)
├── coffee-script@1.8.0 (mkdirp@0.3.5)
└── gulp-util@3.0.1 (lodash._reinterpolate@2.4.1, minimist@1.1.0, vinyl@0.4.6, chalk@0.5.1, multipipe@0.1.2, dateformat@1.0.11, lodash.template@2.4.1, lodash@2.4.1)
➜  tabs  ls
bower.json    gulpfile.js   ionic.project package.json  scss
config.xml    hooks         node_modules  plugins       www
➜  tabs  subl .
➜  tabs  mkdir coffee
➜  tabs  cd coffee 
➜  coffee  touch app.coffee
➜  coffee  sudo npm install gulp
Password:
npm WARN package.json tabs@1.0.0 No repository field.
npm WARN package.json tabs@1.0.0 No README data
 
> v8flags@1.0.6 install /Users/ryanshim/Code/ionic_templates/tabs/node_modules/gulp/node_modules/v8flags
> node fetch.js

flags for v8 3.14.5.9 cached.
gulp@3.8.10 ../node_modules/gulp
├── pretty-hrtime@0.2.2
├── interpret@0.3.9
├── deprecated@0.0.1
├── archy@1.0.0
├── v8flags@1.0.6
├── tildify@1.0.0 (user-home@1.1.0)
├── minimist@1.1.0
├── chalk@0.5.1 (escape-string-regexp@1.0.2, ansi-styles@1.1.0, supports-color@0.2.0, has-ansi@0.1.0, strip-ansi@0.3.0)
├── semver@4.1.0
├── orchestrator@0.3.7 (stream-consume@0.1.0, sequencify@0.0.7, end-of-stream@0.1.5)
├── gulp-util@3.0.1 (lodash._reinterpolate@2.4.1, vinyl@0.4.6, lodash.template@2.4.1, dateformat@1.0.11, through2@0.6.3, multipipe@0.1.2, lodash@2.4.1)
├── vinyl-fs@0.3.13 (graceful-fs@3.0.5, strip-bom@1.0.0, defaults@1.0.0, vinyl@0.4.6, mkdirp@0.5.0, through2@0.6.3, glob-stream@3.1.18, glob-watcher@0.0.6)
└── liftoff@0.13.6 (extend@1.3.0, flagged-respawn@0.3.1, resolve@1.0.0, findup-sync@0.1.3)
➜  coffee  cd ..
➜  tabs  gulp watch

Error: Cannot find module 'gulp-util'
    at Function.Module._resolveFilename (module.js:338:15)
    at Function.Module._load (module.js:280:25)
    at Module.require (module.js:364:17)
    at require (module.js:380:17)
    at Object.<anonymous> (/Users/ryanshim/Code/ionic_templates/tabs/gulpfile.js:2:13)
    at Module._compile (module.js:456:26)
    at Object.Module._extensions..js (module.js:474:10)
    at Module.load (module.js:356:32)
    at Function.Module._load (module.js:312:12)
    at Module.require (module.js:364:17)
➜  tabs  sudo npm install
npm WARN package.json tabs@1.0.0 No repository field.
npm WARN package.json tabs@1.0.0 No README data
\
> node-sass@0.9.6 install /Users/ryanshim/Code/ionic_templates/tabs/node_modules/gulp-sass/node_modules/node-sass
> node build.js

`darwin-x64-v8-3.14` exists; testing

  
  ․․․․․․․․․․․․․․․․․․․․․․․․․․

  26 passing (62ms)

Binary is fine; exiting
gulp-rename@1.2.0 node_modules/gulp-rename

shelljs@0.3.0 node_modules/shelljs

gulp-concat@2.4.2 node_modules/gulp-concat
├── through@2.3.6
└── concat-with-sourcemaps@0.1.6 (source-map@0.1.40)

gulp-util@2.2.20 node_modules/gulp-util
├── lodash._reinterpolate@2.4.1
├── minimist@0.2.0
├── vinyl@0.2.3 (clone-stats@0.0.1)
├── chalk@0.5.1 (escape-string-regexp@1.0.2, ansi-styles@1.1.0, supports-color@0.2.0, has-ansi@0.1.0, strip-ansi@0.3.0)
├── lodash.template@2.4.1 (lodash._escapestringchar@2.4.1, lodash.values@2.4.1, lodash.templatesettings@2.4.1, lodash.defaults@2.4.1, lodash.keys@2.4.1, lodash.escape@2.4.1)
├── multipipe@0.1.2 (duplexer2@0.0.2)
├── dateformat@1.0.11 (get-stdin@3.0.2, meow@2.0.0)
└── through2@0.5.1 (xtend@3.0.0, readable-stream@1.0.33)

gulp-minify-css@0.3.11 node_modules/gulp-minify-css
├── memory-cache@0.0.5
├── through2@0.6.3 (xtend@4.0.0, readable-stream@1.0.33)
├── bufferstreams@0.0.2 (readable-stream@1.0.33)
├── clean-css@2.2.21 (commander@2.2.0)
└── gulp-util@3.0.1 (lodash._reinterpolate@2.4.1, minimist@1.1.0, vinyl@0.4.6, chalk@0.5.1, lodash.template@2.4.1, dateformat@1.0.11, multipipe@0.1.2, lodash@2.4.1)

bower@1.3.12 node_modules/bower
├── is-root@1.0.0
├── junk@1.0.0
├── stringify-object@1.0.0
├── which@1.0.8
├── abbrev@1.0.5
├── chmodr@0.1.0
├── osenv@0.1.0
├── opn@1.0.0
├── archy@0.0.2
├── rimraf@2.2.8
├── lru-cache@2.5.0
├── bower-logger@0.2.2
├── bower-endpoint-parser@0.2.2
├── graceful-fs@3.0.5
├── lockfile@1.0.0
├── nopt@3.0.1
├── retry@0.6.0
├── tmp@0.0.23
├── request-progress@0.3.0 (throttleit@0.0.2)
├── q@1.0.1
├── chalk@0.5.0 (escape-string-regexp@1.0.2, ansi-styles@1.1.0, supports-color@0.2.0, strip-ansi@0.3.0, has-ansi@0.1.0)
├── shell-quote@1.4.2 (array-filter@0.0.1, array-reduce@0.0.0, array-map@0.0.0, jsonify@0.0.0)
├── semver@2.3.2
├── bower-json@0.4.0 (intersect@0.0.3, deep-extend@0.2.11, graceful-fs@2.0.3)
├── fstream@1.0.3 (inherits@2.0.1)
├── p-throttler@0.1.0 (q@0.9.7)
├── promptly@0.2.0 (read@1.0.5)
├── mkdirp@0.5.0 (minimist@0.0.8)
├── bower-config@0.5.2 (osenv@0.0.3, graceful-fs@2.0.3, optimist@0.6.1)
├── fstream-ignore@1.0.2 (inherits@2.0.1, minimatch@2.0.1)
├── tar-fs@0.5.2 (pump@0.3.5, tar-stream@0.4.7)
├── decompress-zip@0.0.8 (nopt@2.2.1, mkpath@0.1.0, touch@0.0.2, readable-stream@1.1.13, binary@0.3.0)
├── request@2.42.0 (caseless@0.6.0, json-stringify-safe@5.0.0, forever-agent@0.5.2, aws-sign2@0.5.0, stringstream@0.0.4, oauth-sign@0.4.0, tunnel-agent@0.4.0, qs@1.2.2, node-uuid@1.4.2, mime-types@1.0.2, form-data@0.1.4, bl@0.9.3, tough-cookie@0.12.1, http-signature@0.10.0, hawk@1.1.1)
├── glob@4.0.6 (inherits@2.0.1, once@1.3.1, minimatch@1.0.0)
├── bower-registry-client@0.2.1 (graceful-fs@2.0.3, request-replay@0.2.0, lru-cache@2.3.1, async@0.2.10, mkdirp@0.3.5, request@2.27.0)
├── update-notifier@0.2.0 (semver-diff@0.1.0, string-length@0.1.2, latest-version@0.2.0, configstore@0.3.1)
├── cardinal@0.4.0 (redeyed@0.4.4)
├── mout@0.9.1
├── handlebars@2.0.0 (optimist@0.3.7, uglify-js@2.3.6)
├── inquirer@0.7.1 (figures@1.3.5, through@2.3.6, mute-stream@0.0.4, readline2@0.1.0, lodash@2.4.1, cli-color@0.3.2, rx@2.3.20)
└── insight@0.4.3 (object-assign@1.0.0, async@0.9.0, lodash.debounce@2.4.1, chalk@0.5.1, os-name@1.0.1, tough-cookie@0.12.1, configstore@0.3.1, inquirer@0.6.0)

gulp-sass@0.7.3 node_modules/gulp-sass
├── map-stream@0.1.0
├── gulp-util@3.0.1 (lodash._reinterpolate@2.4.1, minimist@1.1.0, vinyl@0.4.6, chalk@0.5.1, dateformat@1.0.11, lodash.template@2.4.1, through2@0.6.3, multipipe@0.1.2, lodash@2.4.1)
└── node-sass@0.9.6 (get-stdin@3.0.2, object-assign@1.0.0, node-watch@0.3.4, node-sass-middleware@0.3.1, nan@1.3.0, mkdirp@0.5.0, yargs@1.3.3, chalk@0.5.1, mocha@1.21.5, sinon@1.10.3)
➜  tabs  gulp watch
[18:19:43] Using gulpfile ~/Code/ionic_templates/tabs/gulpfile.js
[18:19:43] Starting 'watch'...
[18:19:43] Finished 'watch' after 13 ms

