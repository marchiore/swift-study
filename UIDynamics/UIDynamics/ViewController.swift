//
//  ViewController.swift
//  UIDynamics
//
//  Created by Matheus Marchiore on 11/16/14.
//  Copyright (c) 2014 Matheus Marchiore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var ImageView: UIImageView!
    var dynamicAnimator = UIDynamicAnimator()
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if let dynamicAnimator = UIDynamicAnimator(referenceView: self.view) as UIDynamicAnimator!{
            
            let gravityBehavior = UIGravityBehavior(items: [self.ImageView])
            dynamicAnimator.addBehavior(gravityBehavior)
            
            let collisionBehavior = UICollisionBehavior(items: [self.ImageView])
            
            collisionBehavior.translatesReferenceBoundsIntoBoundary = true
            
            dynamicAnimator.addBehavior(collisionBehavior)
            self.dynamicAnimator = dynamicAnimator
        }
        
        
        
        
    }


}

