//
//  CallKitProviderDelegate.swift
//  1108
//
//  Created by Hualiteq International on 2024/11/11.
//

import Foundation
import CallKit
import linphonesw
import AVFoundation

class CallKitProvdierDelegate : NSObject, CXProviderDelegate {
    func providerDidReset(_ provider: CXProvider) {}

    private let provider: CXProvider
    let mCallController = CXCallController()
    var tutorialContext: PHQ!
    var incomingCallUUIDL: UUID!
    
    init(context: PHQ) {
        tutorialContext = context
        let providerConfiguration = CXProviderConfiguration(localizedName: Bundle.main.infoDictionary!["CFBundleName"] as! String)
        providerConfiguration.supportsVideo = true
        providerConfiguration.supportedHandleTypes = [.generic]
        providerConfiguration.maximumCallsPerCallGroup = 1
        providerConfiguration.maximumCallGroups = 1
        
        provider = CXProvider(configuration: providerConfiguration)
        super.init()
        provider.setDelegate(self, queue: nil)
        
    }
}
