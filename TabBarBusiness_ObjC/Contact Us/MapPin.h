//
//  MapPin.h
//  TabBarBusiness_ObjC
//
//  Created by Shivam Patel on 23/12/19.
//  Copyright © 2019 Shivam Patel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MapPin : NSObject <MKAnnotation> {
    
    CLLocationCoordinate2D coordinate;
    
    
}
@property (nonatomic,assign) CLLocationCoordinate2D coodinate;






@end

NS_ASSUME_NONNULL_END
