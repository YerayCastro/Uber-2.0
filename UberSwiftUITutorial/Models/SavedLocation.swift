//
//  SavedLocation.swift
//  UberSwiftUITutorial
//
//  Created by Yery Castro on 8/8/23.
//

import Firebase


struct SavedLocation: Codable {
    let title: String
    let address: String
    let coordinates: GeoPoint
}
