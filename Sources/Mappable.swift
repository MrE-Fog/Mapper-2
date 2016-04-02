//
//  Mappable.swift
//  Topo
//
//  Created by Oleg Dreyman on 27.03.16.
//  Copyright © 2016 Oleg Dreyman. All rights reserved.
//

import InterchangeData
import Foundation

public protocol Mappable: InterchangeDataInitializable {
    
    init(map: Mapper) throws
    
}

extension Mappable {
    public init(interchangeData: InterchangeData) throws {
        try self.init(map: interchangeData.mapper)
    }
}

extension Mappable {
    
    public static func makeWith(interchangeData interchangeData: InterchangeData) -> Self? {
        do {
            return try self.init(map: interchangeData.mapper)
        } catch {
            return nil
        }
    }
    
}