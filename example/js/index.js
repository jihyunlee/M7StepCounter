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
        app.sc.isAvailable(app.onAvailable, function(err) {
            console.log('isAvailable Failed');
            document.getElementById('status').innerHTML = "Sorry! This device is not available for this service.";
        });
    },
    onAvailable: function(res) {
        console.log('app.onAvailable', res);
        if(res) {
            document.getElementById('status').innerHTML = "Yay!";
            document.getElementsByClassName('onoffswitch')[0].style.display = 'inline-block';
        }
        else {
            document.getElementById('status').innerHTML = "Sorry! This device does not support.";
            document.getElementsByClassName('onoffswitch')[0].style.display = 'inline-block'; // for test
        }
    },
    start: function() {
        app.sc.start(app.onStart, function(err) {
            console.log('start Failed');
        });
    },
    onStart: function() {
        console.log('app.onStart');
        setInterval(function(){app.getSteps();},1000);
    },
    stop: function() {
        app.sc.stop(app.onStop, function(err) {
            console.log('stop Failed');
        });
    },
    onStop: function() {
        console.log('app.onStop');
    },
    getSteps: function() {
        app.sc.getSteps(0, app.gotSteps, function(err) {
            console.log('getTodaySteps Failed');
        });
    },
    gotSteps: function(res) {
        console.log('app.gotTodaySteps', res);
    },
    getLastweekSteps: function() {

        var weeklySteps = [];

        var getDaySix = function(res) {
            weeklySteps.push(res);
            console.log('weeklySteps',weeklySteps);
            return weeklySteps;
        };
        var getDayFive = function(res) {
            weeklySteps.push(res);
            app.sc.getSteps(6, getDaySix(), function(err) {
                console.log('getDayFive Failed');
            });    
        };
        var getDayFour = function(res) {
            weeklySteps.push(res);
            app.sc.getSteps(5, getDayFive(), function(err) {
                console.log('getDayFive Failed');
            });    
        };
        var getDayThree = function(res) {
            weeklySteps.push(res);
            app.sc.getSteps(4, getDayFour(), function(err) {
                console.log('getDayFour Failed');
            });    
        };
        var getDayTwo = function(res) {
            weeklySteps.push(res);
            app.sc.getSteps(3, getDayThree(), function(err) {
                console.log('getDayThree Failed');
            });    
        };
        var getDayOne = function(res) {
            weeklySteps.push(res);
            app.sc.getSteps(2, getDayTwo(), function(err) {
                console.log('getDayTwo Failed');
            });    
        };

        app.sc.getSteps(1, getDayOne(), function(err) {
            console.log('getDayOne Failed');
        });
    }
};
