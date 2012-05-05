//
//  NSData+Base64.m
//
//  Created by Jeremy Olmsted-Thompson on 12/21/11.
//  Copyright (c) 2011 JOT. All rights reserved.
//

#import "NSData+Base64.h"
#import "cencode.h"
#import "cdecode.h"

@implementation NSData (Base64)

-(NSString*)stringByBase64Encoding {
    base64_encodestate state;
    base64_init_encodestate(&state);
    int outsize = (int)(ceil([self length] / 3.0) * 4.0);
    char output[outsize];
    int encoded = base64_encode_block([self bytes], [self length], output, &state);
    base64_encode_blockend(output + encoded, &state);
    return [[[NSString alloc] initWithBytes:output length:outsize encoding:NSASCIIStringEncoding] autorelease];
}

+(NSData*)dataByBase64DecodingString:(NSString*)base64String {
    base64_decodestate state;
    base64_init_decodestate(&state);
    char output[[base64String length] / 4 * 3];
    int decoded = base64_decode_block([base64String cStringUsingEncoding:NSASCIIStringEncoding], [base64String length], output, &state);
    return [[[NSData alloc] initWithBytes:output length:decoded] autorelease];
}

@end
