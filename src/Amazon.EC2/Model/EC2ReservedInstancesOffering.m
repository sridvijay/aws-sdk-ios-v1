/*
 * Copyright 2010-2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

#import "EC2ReservedInstancesOffering.h"


@implementation EC2ReservedInstancesOffering

@synthesize reservedInstancesOfferingId;
@synthesize instanceType;
@synthesize availabilityZone;
@synthesize duration;
@synthesize usagePrice;
@synthesize fixedPrice;
@synthesize productDescription;
@synthesize instanceTenancy;
@synthesize currencyCode;


-(id)init
{
    if (self = [super init]) {
        reservedInstancesOfferingId = nil;
        instanceType                = nil;
        availabilityZone            = nil;
        duration                    = nil;
        usagePrice                  = nil;
        fixedPrice                  = nil;
        productDescription          = nil;
        instanceTenancy             = nil;
        currencyCode                = nil;
    }

    return self;
}



-(NSString *)description
{
    NSMutableString *buffer = [[NSMutableString alloc] initWithCapacity:256];

    [buffer appendString:@"{"];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"ReservedInstancesOfferingId: %@,", reservedInstancesOfferingId] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"InstanceType: %@,", instanceType] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"AvailabilityZone: %@,", availabilityZone] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"Duration: %@,", duration] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"UsagePrice: %@,", usagePrice] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"FixedPrice: %@,", fixedPrice] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"ProductDescription: %@,", productDescription] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"InstanceTenancy: %@,", instanceTenancy] autorelease]];
    [buffer appendString:[[[NSString alloc] initWithFormat:@"CurrencyCode: %@,", currencyCode] autorelease]];
    [buffer appendString:[super description]];
    [buffer appendString:@"}"];

    return [buffer autorelease];
}



-(void)dealloc
{
    [reservedInstancesOfferingId release];
    [instanceType release];
    [availabilityZone release];
    [duration release];
    [usagePrice release];
    [fixedPrice release];
    [productDescription release];
    [instanceTenancy release];
    [currencyCode release];

    [super dealloc];
}


@end