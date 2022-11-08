//
//  Movies.h
//  MoviesApp
//
//  Created by Mohamed Rabie on 11/8/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Movies : NSObject{

    NSString *title;
    NSString *image;
    double *rating;
    int releaseYear;
    NSArray *genre;
}
@end

NS_ASSUME_NONNULL_END
