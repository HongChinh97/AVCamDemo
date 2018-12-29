//
//  PreviewView.swift
//  AVCamDemo
//
//  Created by admin on 12/28/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import AVFoundation

class PreviewView: UIView {
    var videPreviewLayer: AVCaptureVideoPreviewLayer {
        guard let layer = layer as? AVCaptureVideoPreviewLayer else {
            fatalError("Expected `AVCaptureVideoPreviewLayer` type for layer. Check PreviewView.layerClass implementation.")
        }
        return layer
    }
    
    var session: AVCaptureSession? {
        get {
            
        } set {
            
        }
    }
    
    
}
