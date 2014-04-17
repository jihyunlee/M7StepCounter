//
//  M7StepCounter.m
//  M7 Step Counter Cordova Plugin
//
//  Created by Jihyun Lee on 4/17/2014.
//
//

#import "M7StepCounter.h"

@interface CDVM7StepCounter()
@end

@implementation CDVM7StepCounter

- (void)pluginInitialize {
    
    NSLog(@"M7 Step Counter Cordova Plugin");
    NSLog(@"(c)2014 Jihyun Lee");

    [super pluginInitialize];
}

#pragma mark - Cordova Plugin Methods

- (void) isAvailable:(CDVInvokedUrlCommand*)command {
    NSLog(@"isAvailable");
    CDVPluginResult *pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) start:(CDVInvokedUrlCommand *)command {    
    NSLog(@"start");
    CDVPluginResult *pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_NO_RESULT];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) stop:(CDVInvokedUrlCommand*)command {
    NSLog(@"stop");
    CDVPluginResult *pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) getSteps:(CDVInvokedUrlCommand*)command {
    NSLog(@"getSteps");
    CDVPluginResult *pluginResult = nil;    
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

#pragma mark - M7StepDelegate 

@end