M7 Step Counter Plugin for PhoneGap
-------------

#### Supported Platforms
* iOS7 with <a href="http://www.apple.com/iphone-5s/features" target="_blnak">M7 motion coprocessor</a> (currently only iPhone5s)


#### Installation
    $ cordova plugin add https://github.com/jihyunlee/M7StepCounter.git


#### APIs

+ isAvailable(successCallback, failureCallback)
    - @param successCallback  callback
    - @param failureCallback  callback
    - @return A Boolean indicating whether step-counting support is available on the current device
    - @see                    <a href="https://developer.apple.com/library/ios/documentation/CoreMotion/Reference/CMStepCounter_class/Reference/Reference.html#//apple_ref/occ/clm/CMStepCounter/isStepCountingAvailable" target="_blank">isStepCountingAvailable</a>

+ start(successCallback, failureCallback)
    -  @param successCallback
    -  @param failureCallback
    -  @return
    -  @see <a href="https://developer.apple.com/library/ios/documentation/CoreMotion/Reference/CMStepCounter_class/Reference/Reference.html#//apple_ref/occ/instm/CMStepCounter/startStepCountingUpdatesToQueue:updateOn:withHandler:" target="_blank">startStepCountingUpdatesToQueue:updateOn:withHandler:</a>

+ stop(successCallback, failureCallback)
    -  @param successCallback
    -  @param failureCallback
    -  @return
    -  @see <a href="https://developer.apple.com/library/ios/documentation/CoreMotion/Reference/CMStepCounter_class/Reference/Reference.html#//apple_ref/occ/instm/CMStepCounter/stopStepCountingUpdates" target="_blank">stopStepCountingUpdates</a>

+ getSteps(day, successCallback, failureCallback)
    -  @param day
    -  @param successCallback
    -  @param failureCallback
    -  @return
    -  @see <a href="https://developer.apple.com/library/ios/documentation/CoreMotion/Reference/CMStepCounter_class/Reference/Reference.html#//apple_ref/occ/instm/CMStepCounter/queryStepCountStartingFrom:to:toQueue:withHandler:" target="_blank">startStepCountingUpdatesToQueue:updateOn:withHandler:</a>

#### Reference
- <a href="https://developer.apple.com/library/ios/documentation/CoreMotion/Reference/CMStepCounter_class/Reference/Reference.html" target="_blank">CMStepCounter Class</a> from Apple Developer
