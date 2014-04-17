//
//  M7StepCounter.h
//  M7 StepCounter Cordova Plugin
//
//  Created by Jihyun Lee on 4/17/2014.
//
//

#ifndef M7StepCounter_h
#define M7StepCounter_h

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <Cordova/CDV.h>

@interface CDVM7StepCounter : CDVPlugin <M7StepDelegate> {
}

- (void) isAvailable:(CDVInvokedUrlCommand*)command;

- (void) start:(CDVInvokedUrlCommand*)command;
- (void) stop:(CDVInvokedUrlCommand*)command;

- (void) getSteps:(CDVInvokedUrlCommand*)command;

@end

#endif