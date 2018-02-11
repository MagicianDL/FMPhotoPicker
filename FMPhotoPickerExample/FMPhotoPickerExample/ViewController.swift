//
//  ViewController.swift
//  FMPhotoPickerExample
//
//  Created by c-nguyen on 2018/01/25.
//  Copyright © 2018 Tribal Media House. All rights reserved.
//

import UIKit
import FMPhotoPicker

class ViewController: UIViewController, FMPhotoPickerViewControllerDelegate {
    func fmPhotoPickerController(_ picker: FMPhotoPickerViewController, didFinishPickingPhotoWith photos: [UIImage]) {
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func open(_ sender: Any) {
        // init with default options
//        let config = FMPhotoPickerConfig()
        
        // init with custom options
        let config = FMPhotoPickerConfig(mediaTypes: [.image],
                                         maxImageSelections: 10,
                                         maxVideoSelections: 10)
        
        let vc = FMPhotoPickerViewController(config: config)
        vc.delegate = self
        self.present(vc, animated: true)
        

        
    }
    
}

