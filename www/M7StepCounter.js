var exec = require('cordova/exec');

var M7StepCounter = function() {
    this.serviceName = "M7StepCounter";
};

M7StepCounter.prototype.isAvailable = function(successCallback, failureCallback) {
    exec(successCallback, failureCallback, this.serviceName, "isAvailable", []);
};
M7StepCounter.prototype.start = function(successCallback, failureCallback) {
    exec(successCallback, failureCallback, this.serviceName, "start", []);
};
M7StepCounter.prototype.stop = function(successCallback, failureCallback) {
    exec(successCallback, failureCallback, this.serviceName, "stop", []);
};
M7StepCounter.prototype.getSteps = function(successCallback, failureCallback) {
    exec(successCallback, failureCallback, this.serviceName, "getSteps", []);
};

module.exports = M7StepCounter;