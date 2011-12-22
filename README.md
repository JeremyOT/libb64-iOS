libb64-iOS
==========
libb64-iOS is a lightweight objective-c wrapper around libb64 for easy base 64 encoding and decoding on iOS.

It is implemented as a category on NSData with two methods:

`-(NSString*)stringByBase64Encoding` - creates an `NSString` by base64 encoding the data stored in the `NSData` object.
`+(NSData*)dataByBase64DecodingString:(NSString*)base64String` - creates an `NSData` by base64 decoding the data stored in `base64String`.

