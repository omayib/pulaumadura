//
//  MaduraEngine.swift
//  maduracoba
//
//  Created by qiscus on 12/27/16.
//  Copyright © 2016 qiscus. All rights reserved.
//

import Foundation

public class Madura:UIViewController{

    public var bebek: String = ""
    
    public func setup(bebek:String) {
        self.bebek = bebek
        let engine = AgoraRtcEngineKit.sharedEngine(withAppId: "12312", delegate: self)
    }
    
}

extension Madura: AgoraRtcEngineDelegate {
    
    public func rtcEngineConnectionDidInterrupted(_ engine: AgoraRtcEngineKit!) {
        
    }
    
    public func rtcEngineConnectionDidLost(_ engine: AgoraRtcEngineKit!) {
        
    }
    
    public func rtcEngine(_ engine: AgoraRtcEngineKit!, didOccurError errorCode: AgoraRtcErrorCode) {
        //
    }
    
    public func rtcEngine(_ engine: AgoraRtcEngineKit!, firstRemoteVideoDecodedOfUid uid: UInt, size: CGSize, elapsed: Int) {
      
    }
    
    //first local video frame
    public func rtcEngine(_ engine: AgoraRtcEngineKit!, firstLocalVideoFrameWith size: CGSize, elapsed: Int) {
      
    }
    
    //user offline
    public func rtcEngine(_ engine: AgoraRtcEngineKit!, didOfflineOfUid uid: UInt, reason: AgoraRtcUserOfflineReason) {

    }
    
    //video muted
    public func rtcEngine(_ engine: AgoraRtcEngineKit!, didVideoMuted muted: Bool, byUid uid: UInt) {
      
    }
    
    //remote stat
    public func rtcEngine(_ engine: AgoraRtcEngineKit!, remoteVideoStats stats: AgoraRtcRemoteVideoStats!) {
     
    }
    
    //data channel
    public func rtcEngine(_ engine: AgoraRtcEngineKit!, receiveStreamMessageFromUid uid: UInt, streamId: Int, data: Data!) {
        
    }
    
    public func rtcEngine(_ engine: AgoraRtcEngineKit!, didOccurStreamMessageErrorFromUid uid: UInt, streamId: Int, error: Int, missed: Int, cached: Int) {
        print("Data channel error: \(error), missed: \(missed), cached: \(cached)\n")
    }
}
