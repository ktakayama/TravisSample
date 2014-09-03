//
//  TSJsonModel.m
//  TravisSample
//
//  Created by Kyosuke Takayama on 2014/09/03.
//
//

#import "TSJsonModel.h"

@implementation TSJsonModel

- (instancetype) initWithDictionary:(NSDictionary *)dictionary {
   if(self = [self init]) {
      _identifier = [NSString stringWithFormat:@"%@", dictionary[@"id"]];
      _name       = [NSString stringWithFormat:@"%@", dictionary[@"name"]];
      _comment    = [NSString stringWithFormat:@"%@", dictionary[@"comment"]];
   }
   return self;
}

- (NSString *) description {
   return [NSString stringWithFormat:@"[%@] %@: %@", self.identifier, self.name, self.comment];
}

@end
