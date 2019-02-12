//
//  CrawlerURLAVPlayerItem.h
//  TubiCast
//
//  Created by Kid Young on 12/21/18.
//  Copyright © 2018 Yang XiHong. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CrawlerURLAVPlayerItem : NSObject

@property (nonatomic, copy) NSString *url;

+ (instancetype)alloc NS_UNAVAILABLE;
+ (instancetype)allocWithZone:(struct _NSZone *)zone NS_UNAVAILABLE;

+ (CrawlerURLAVPlayerItem *)sharedCrawler;

@end

NS_ASSUME_NONNULL_END
