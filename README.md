M7 Step Counter Plugin for PhoneGap
-------------

#### Supported Platforms
* iOS7 with <a href="http://www.apple.com/iphone-5s/features" target="_blnak">M7 motion coprocessor</a> (currently only iPhone5s)


#### Installation
    $ cordova plugin add https://github.com/jihyunlee/M7StepCounter.git


#### APIs

+ isAvailable(successCallback, failureCallback)<br/>
    - @param successCallback  callback
    - @param failureCallback  callback
    - @return A Boolean indicating whether step-counting support is available on the current device
    - @see                    <a href="https://developer.apple.com/library/ios/documentation/CoreMotion/Reference/CMStepCounter_class/Reference/Reference.html#//apple_ref/occ/clm/CMStepCounter/isStepCountingAvailable">CMStepCounter:isStepCountingAvailable</a>

+ start(successCallback, failureCallback)<br/>
    -  @param successCallback
    -  @param failureCallback
    -  @return
    -  @see

+ stop
    -  @param successCallback
    -  @param failureCallback
    -  @return
    -  @see
    -  
+ getSteps
    -  @param day
    -  @param successCallback
    -  @param failureCallback
    -  @return
    -  @see

#### Reference
- <a href="https://developer.apple.com/library/ios/documentation/CoreMotion/Reference/CMStepCounter_class/Reference/Reference.html" target="_blank">CMStepCounter Class</a> from Apple Developer
