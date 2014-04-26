/*
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
 */

#import "CDVM7StepCounter.h"

@implementation CDVM7StepCounter

@synthesize stepCounter;

- (void)pluginInitialize {
    NSLog(@"------------------------------");
    NSLog(@"M7StepCounter Cordova Plugin");
    NSLog(@"(c)2014 Jihyun Lee");
    NSLog(@"------------------------------");
    [super pluginInitialize];
}

- (void) isAvailable:(CDVInvokedUrlCommand*)command
{
    NSLog(@"CDVM7StepCounter -- isAvailable");
    BOOL ret = [CMStepCounter isStepCountingAvailable];
    NSLog(ret ? @"available" : @"not available");
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:ret];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

- (void) start:(CDVInvokedUrlCommand*)command
{
    NSLog(@"CDVM7StepCounter -- start");
    self.stepCounter = [[CMStepCounter alloc] init];
    [self.stepCounter startStepCountingUpdatesToQueue:[NSOperationQueue mainQueue] 
                      updateOn:3
                      withHandler:^(NSInteger numberOfSteps, NSDate *timestamp, NSError *error) {
//                          NSLog(@"%ld %@ %@",(long)numberOfSteps, timestamp, error);
                      }];
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) stop:(CDVInvokedUrlCommand*)command
{   
    NSLog(@"CDVM7StepCounter -- stop");
    [self.stepCounter stopStepCountingUpdates];
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) getSteps:(CDVInvokedUrlCommand*)command
{   
    NSLog(@"CDVM7StepCounter -- getSteps");

    NSInteger day = [[command.arguments objectAtIndex:0] intValue];
    
    NSDate *now = [NSDate date];
    
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *dc = [gregorian components:NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit fromDate:now];
    
    [dc setHour:-24*day];
    NSDate *beginningOfDay = [gregorian dateFromComponents:dc];
    
    [dc setHour:-24*day+23];
    [dc setMinute:59];
    [dc setSecond:59];
    NSDate *endOfDay = [gregorian dateFromComponents:dc];

    [self.stepCounter queryStepCountStartingFrom:beginningOfDay
                      to: day == 0 ? now : endOfDay
                      toQueue:[NSOperationQueue mainQueue]
                      withHandler:^(NSInteger numberOfSteps, NSError *error) {
                        NSLog(@"%zd %@", numberOfSteps, error);
                        CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus : CDVCommandStatus_OK messageAsInt : (int)numberOfSteps];
                        [self.commandDelegate sendPluginResult : pluginResult callbackId : command.callbackId];
                      }];
}
@end