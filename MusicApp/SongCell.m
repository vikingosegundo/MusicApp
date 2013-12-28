//
//  SongCell.m
//  MusicApp
//
//  Created by Manuel Meyer on 28.12.13.
//  Copyright (c) 2013 bit.fritze. All rights reserved.
//

#import "SongCell.h"


@interface SongCell ()
@property (nonatomic, strong) UIImage *speakerImage;
@end

@implementation SongCell

-(void)layoutSubviews
{
    if (!_speakerImage) {
        // http://commons.wikimedia.org/wiki/File:Speaker_Icon.svg
        self.speakerImage = [UIImage imageNamed:@"speaker_icon.png"];
    }
    
    if(!self.isPlaying){
        self.imageView.image = nil;
    } else {
        self.imageView.image = _speakerImage;
        self.imageView.hidden =NO;
    }
    [super layoutSubviews];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    if (!selected) {
        self.isPlaying = NO;
    }
}


-(void)setIsPlaying:(BOOL)isPlaying
{
    _isPlaying = isPlaying;
    [self setNeedsLayout];
}
@end
