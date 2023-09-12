//
//  UberLocation.swift
//  UberSwiftUITutorial
//
//  Created by Yery Castro on 5/8/23.
//

import CoreLocation


struct UberLocation: Identifiable {
    let id = NSUUID().uuidString
    let title: String
    let coordinate: CLLocationCoordinate2D
}
