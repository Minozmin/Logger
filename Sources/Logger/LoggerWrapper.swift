//
//  LoggerWrapper.swift
//
//
//  Created by hehuimin on 2023/10/30.
//

import Foundation

public struct LoggerWrapper<Base> {
    public let base: Base
    
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol Loggerable {
    associatedtype WrapperType
    
    var lg: WrapperType { get }
}

public extension Loggerable {
    var lg: LoggerWrapper<Self> {
        LoggerWrapper(self)
    }
}
