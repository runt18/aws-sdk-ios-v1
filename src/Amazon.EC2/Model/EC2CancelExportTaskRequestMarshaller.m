/*
 * Copyright 2010-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

#import "EC2CancelExportTaskRequestMarshaller.h"

@implementation EC2CancelExportTaskRequestMarshaller

+(AmazonServiceRequest *)createRequest:(EC2CancelExportTaskRequest *)cancelExportTaskRequest
{
    AmazonServiceRequest *request = [[EC2Request alloc] init];

    [request setParameterValue:@"CancelExportTask"           forKey:@"Action"];
    [request setParameterValue:@"2013-10-15"   forKey:@"Version"];

    [request setDelegate:[cancelExportTaskRequest delegate]];
    [request setCredentials:[cancelExportTaskRequest credentials]];
    [request setEndpoint:[cancelExportTaskRequest requestEndpoint]];
    [request setRequestTag:[cancelExportTaskRequest requestTag]];

    if (cancelExportTaskRequest != nil) {
        if (cancelExportTaskRequest.exportTaskId != nil) {
            [request setParameterValue:[NSString stringWithFormat:@"%@", cancelExportTaskRequest.exportTaskId] forKey:[NSString stringWithFormat:@"%@", @"ExportTaskId"]];
        }
    }


    return [request autorelease];
}

@end

