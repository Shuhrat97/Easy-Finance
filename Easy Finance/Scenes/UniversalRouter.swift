//
//  UniversalRouter.swift
//  Easy Finance
//
//  Created by Shuhrat Nurov on 25/06/23.
//

import SwiftUI

class UniversalRouter: ObservableObject {
    @Published var startRouting: Bool = false
    
    var scene: AnyView? {
        didSet {
            startRouting = scene != nil
        }
    }
}
