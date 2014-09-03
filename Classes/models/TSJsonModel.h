//
//  TSJsonModel.h
//  TravisSample
//
//  Created by Kyosuke Takayama on 2014/09/03.
//
//

#import <Foundation/Foundation.h>

@interface TSJsonModel : NSObject

@property (nonatomic, copy) NSString *identifier, *name, *comment;

- (instancetype) initWithDictionary:(NSDictionary *)dictionary;

@end
