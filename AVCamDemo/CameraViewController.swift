//
//  ViewController.swift
//  AVCamDemo
//
//  Created by admin on 12/28/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import AVFoundation
import Photos

class CameraViewController: UIViewController, AVCaptureFileOutputRecordingDelegate {
    func fileOutput(_ output: AVCaptureFileOutput, didFinishRecordingTo outputFileURL: URL, from connections: [AVCaptureConnection], error: Error?) {
        <#code#>
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        <#code#>
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private enum SessionSetupResult {
        case sussess
        case notAuthorized
        case configurationFailed
    }
    private let session = AVCaptureSession()
    private var isSessionRunning = false
    // Communicate with the session and other session objects on this queue.
    private let sessionQueue = DispatchQueue(label: "session queue")
    
     private var setupResult: SessionSetupResult = .sussess
    
     @objc dynamic var videoDeviceInput: AVCaptureDeviceInput!
    
    @IBOutlet weak var previewView: PreviewView!
    
    // Call this on the session queue.
    /// - Tag: ConfigureSession
    private func configureSession() {
        if setupResult != .sussess {
            return
        }
        session.beginConfiguration()
        /*
         We do not create an AVCaptureMovieFileOutput when setting up the session because
         Live Photo is not supported when AVCaptureMovieFileOutput is added to the session.
         */
        
        session.sessionPreset = .photo
        // Add video input.
        do {
            var defaultVideoDevice: AVCaptureDevice?
            // Choose the back dual camera if available, otherwise default to a wide angle camera.
            if let dualCameraDevice = AVCaptureDevice.default(.builtInDualCamera, for: .video, position: .back) {
                defaultVideoDevice = dualCameraDevice
            } else if let backCameraDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .back) {
                defaultVideoDevice = backCameraDevice
            } else if let frontCameraDevice = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front)
            
        }
    }

}

