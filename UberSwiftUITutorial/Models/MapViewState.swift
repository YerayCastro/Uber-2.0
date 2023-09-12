//
//  MapViewState.swift
//  UberSwiftUITutorial
//
//  Created by Yery Castro on 2/8/23.
//

import Foundation

enum MapViewState {
    case noInput
    case searchingForLocation
    case locationSelected
    case polylineAdded
    case tripRequested
    case tripRejected
    case tripAccepted
    case tripCancelledByPassenger
    case tripCancelledByDriver
}
