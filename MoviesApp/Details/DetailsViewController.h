//
//  DetailsViewController.h
//  MoviesApp
//
//  Created by Mohamed Rabie on 11/8/22.
//

#import <UIKit/UIKit.h>
#import "Movies.h"

NS_ASSUME_NONNULL_BEGIN

@interface DetailsViewController : UIViewController

@property Movies *movies;

@property (weak, nonatomic) IBOutlet UIImageView *movieImage;
@property (weak, nonatomic) IBOutlet UILabel *movieTitle;
@property (weak, nonatomic) IBOutlet UILabel *movieReleaseYear;
@property (weak, nonatomic) IBOutlet UILabel *movieRating;
@property (weak, nonatomic) IBOutlet UILabel *movieGenre;


@end

NS_ASSUME_NONNULL_END
