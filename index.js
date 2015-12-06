'use strict';

let path = require('path');
let dirName = path.dirname;
let relativePath = path.relative;

module.exports = function(module) {
    ['log', 'error'].forEach(function(fnName) {
        module[fnName] = function() {
            let relativeModulePath = relativePath(
                dirName(require.main.filename), this.filename
            );

            return console[fnName].apply(
                console, [].concat.apply([relativeModulePath + ':'], arguments)
            );
        };
    });
};
