//
//  DeveloperPreview.swift
//  UberSwiftUITutorial
//
//  Created by Yery Castro on 9/8/23.
//

import SwiftUI
import Firebase
import FirebaseFirestore

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let mockTrip = Trip(
        passengerUid: NSUUID().uuidString,
        driverUid: NSUUID().uuidString,
        passengerName: "Stephan Dowless",
        driverName: "Jonh Doe",
        passengerLocation: .init(latitude: 37.123, longitude: -122.1),
        driverLocation: .init(latitude: 37.123, longitude: -122.1),
        pickupLocationName: "Apple Campus",
        dropoffLocationName: "Starbucks",
        pickupLocationAddress: "123 Main St, Palo Alto CA",
        pickupLocation: .init(latitude: 37.456, longitude: -122.15),
        dropoffLocation: .init(latitude: 37.042, longitude: -122.2),
        tripCost: 47.0,
        distanceToPassenger: 1000,
        travelTimeToPassenger: 24,
        state: .rejected)

    let mockUser = User(
        fullname: "Stephan Dowless",
        email: "test@gmail.com",
        uid: NSUUID().uuidString,
        coordinates: GeoPoint(latitude: 37.785834, longitude: -122.406417),
        accountType: .passenger,
        homeLocation: nil,
        workLocation: nil)
}
