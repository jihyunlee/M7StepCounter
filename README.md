M7 Step Counter Plugin for PhoneGap
-------------

##### Supported Platforms
* iOS7 with <a href="http://www.apple.com/iphone-5s/features" target="_blnak">M7 motion coprocessor</a> (currently only iPhone5s)


##### Installation
    $ cordova plugin add https://github.com/jihyunlee/M7StepCounter.git


##### APIs

/*
 *  @method isAvailable
 *
 *  @param successCallback  The delegate that will receive central role events.
 *  @param failureCallback  An optional dictionary specifying options for the manager.
 *
 *  @discussion     The initialization call. The events of the central role will be dispatched on the provided queue.
 *                  If <i>nil</i>, the main queue will be used.
 *                  
 *	@return			A Boolean indicating whether step-counting support is available on the current device

 *  @see            <a href="https://developer.apple.com/library/ios/documentation/CoreMotion/Reference/CMStepCounter_class/Reference/Reference.html#//apple_ref/occ/clm/CMStepCounter/isStepCountingAvailable">CMStepCounter:isStepCountingAvailable
 *
 */
- isAvailable(successCallback, failureCallback)<br/>

- start(successCallback, failureCallback)<br/>
// Return:
- stop
- getSteps


##### Reference
- <a href="https://developer.apple.com/library/ios/documentation/CoreMotion/Reference/CMStepCounter_class/Reference/Reference.html" target="_blank">CMStepCounter Class</a> from Apple Developer
