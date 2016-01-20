//
//  TypeHelper.swift
//  ReSwift
//
//  Created by Benjamin Encz on 11/27/15.
//  Copyright © 2015 DigiTales. All rights reserved.
//

import Foundation

/**
 Method is only used internally in ReSwift to cast the generic `StateType` to a specific
 type expected by reducers / store subscribers.
*/
func withSpecificTypes<SpecificStateType, Action>(state: StateType,
    action: Action, @noescape function: (state: SpecificStateType, action: Action)
    -> SpecificStateType) -> StateType {

    guard let specificStateType = state as? SpecificStateType else { return state }

    return function(state: specificStateType, action: action) as! StateType
}
