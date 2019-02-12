//
//  CrawlerURLAVPlayerItem.m
//  TubiCast
//
//  Created by Kid Young on 12/21/18.
//  Copyright © 2018 Yang XiHong. All rights reserved.
//

#import "CrawlerURLAVPlayerItem.h"
#import <AVKit/AVKit.h>

@implementation CrawlerURLAVPlayerItem

+ (CrawlerURLAVPlayerItem *)sharedCrawler
{
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[super alloc] init];
    });
    return _sharedInstance;
}

- (id)init
{
    self = [super init];
    if (self) {
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(playerItemBecameCurrentNotification:) name:@"AVPlayerItemBecameCurrentNotification" object:nil];
        [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(playerItemNewAccessLogEntryNotification:) name:@"AVPlayerItemNewAccessLogEntry" object:nil];
    }
    return self;
}

- (void)dealloc
{
    [NSNotificationCenter.defaultCenter removeObserver:self];
}

- (void)playerItemBecameCurrentNotification:(NSNotification *)notification
{
    AVPlayerItem *playerItem = notification.object;
    self.url = ((AVURLAsset *)playerItem.asset).URL.absoluteString;
//    AVPlayer *player = [playerItem valueForKey:@"player"];
}

- (void)playerItemNewAccessLogEntryNotification:(NSNotification *)notification
{
    AVPlayerItem *playerItem = notification.object;
    self.url = ((AVURLAsset *)playerItem.asset).URL.absoluteString;
//    AVPlayer *player = [playerItem valueForKey:@"player"];
}

@end
