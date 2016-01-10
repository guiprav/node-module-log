# module-log

`module.{log,error}` work like `console.{log,error}`, but prepend messages with paths
to the context modules relative to the program's main module path.

## Installation

    $ npm install --save n2liquid/node-module-log

## Example usage

Consider:

    // sample/index.js:
    require('module-log')(module);

    module.log("This is a test log message.");

    // main.js:
    require('./sample');

If `main.js` is the main module, the output will look like this:

    $ node main.js
    sample/index.js: This is a test log message.

If `sample/index.js` is the main module, the output will look like this:

    $ node sample/index.js
    index.js: This is a test log message.

And so on.

## License

![](https://www.gnu.org/graphics/agplv3-155x51.png)

module-log is free software: you can redistribute it and/or modify it under the terms of the GNU Affero General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

## Exclusion of warranty

module-log is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more details.

A copy of AGPLv3 can be found in [COPYING.](COPYING)
