//
//  Movies.h
//  MoviesApp
//
//  Created by Mohamed Rabie on 11/8/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movies : NSObject

@property NSString *title;
@property NSString *image;
@property double *rating;
@property int releaseYear;
@property NSArray *genre;
    
@end

NS_ASSUME_NONNULL_END
