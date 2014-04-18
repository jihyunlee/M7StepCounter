/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

var app = {
    initialize: function() {
        this.bindEvents();
    },
    bindEvents: function() {
        document.addEventListener('deviceready', this.onDeviceReady, false);
    },
    onDeviceReady: function() {
        if(window.cordova.logger) {
            window.cordova.logger.__onDeviceReady();
        }
        
        app.sc = new M7StepCounter();
        app.isAvailable();
    },
    isAvailable: function() {
        console.log('app.isAvailable');
        app.sc.isAvailable(app.onAvailable, app.generateFailureFunction("isAvailable Failed"));
    },
    onAvailable: function(res) {
        console.log('app.onAvailable', res);
    },
    start: function() {
        
    },
    stop: function() {
        
    },
    generateFailureFunction: function(message) {
        console.log('app.generateFailure', message);
        var func = function(reason) {
            var details = "";
            if (reason) {
                details += ": " + JSON.stringify(reason);
            }
            app.setStatus(message + details);
        };
        return func;
    }
};