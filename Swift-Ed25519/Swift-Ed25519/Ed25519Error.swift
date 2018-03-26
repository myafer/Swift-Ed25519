//
//  Ed25519Error.swift
//  Swift-Ed25519
//
//  Created by 口贷网 on 2017/9/8.
//  Copyright © 2017年 Afer. All rights reserved.
//

public enum Ed25519Error: Error {
    case seedGenerationFailed
    case invalidSeedLength
    case invalidScalarLength
    case invalidPublicKeyLength
    case invalidPrivateKeyLength
    case invalidSignatureLength
}
