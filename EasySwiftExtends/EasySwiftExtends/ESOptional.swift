//
//  ESOptional.swift
//  EasySwiftExtends
//
//  Created by Imac Webpro 2 on 4/05/17.
//  Copyright © 2017 webprogramo. All rights reserved.
//

import UIKit


extension Optional
{
    @discardableResult
    func ifSome(_ handler: (Wrapped) -> Void) -> Optional {
        switch self {
        case .some(let wrapped): handler(wrapped); return self
        case .none: return self
        }
    }
    @discardableResult
    func ifNone(_ handler: () -> Void) -> Optional {
        switch self {
        case .some: return self
        case .none(): handler(); return self
        }
    }
}
