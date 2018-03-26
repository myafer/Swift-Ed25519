//
//  Seed.swift
//  Swift-Ed25519
//
//  Created by 口贷网 on 2017/9/8.
//  Copyright © 2017年 Afer. All rights reserved.
//

import Cocoa

class Seed: NSObject {
    private let buffer: [UInt8]
    
    init(unchecked bytes: [UInt8]) {
        self.buffer = bytes
    }
    
    public init(bytes: [UInt8]) throws {
        guard bytes.count == 32 else {
            throw Ed25519Error.invalidSeedLength
        }
        buffer = bytes
    }
    
    public convenience override init() {
        var buffer = [UInt8](repeating: 0, count: 32)
        
//        let result =
        _ = buffer.withUnsafeMutableBufferPointer {
            ed25519_create_seed($0.baseAddress)
        }
//        guard result == 0 else {
//            throw Ed25519Error.seedGenerationFailed
//        }
        
        self.init(unchecked: buffer)
    }
    
    public var bytes: [UInt8] {
        return buffer
    }

}
