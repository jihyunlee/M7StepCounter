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
    
    NSLog(@"M7StepCounter Cordova Plugin");
    NSLog(@"(c)2014 Jihyun Lee");

    [super pluginInitialize];

    self.stepCounter = [[CMStepCounter alloc] initWithDelegate:self queue:nil];
}

- (void) isAvailable:(CDVInvokedUrlCommand*)command
{
	CDVPluginResult *pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_NO_RESULT];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void) start:(CDVInvokedUrlCommand*)command
{

}

- (void) stop:(CDVInvokedUrlCommand*)command
{   

}

- (void) getSteps:(CDVInvokedUrlCommand*)command
{   

}
@end