//
//  GeoPoint.swift
//  UberSwiftUITutorial
//
//  Created by Yery Castro on 17/8/23.
//

import Firebase
import CoreLocation
import FirebaseFirestore


extension GeoPoint {
    func toCoordinate() -> CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: self.latitude, longitude: self.longitude)
    }
}
