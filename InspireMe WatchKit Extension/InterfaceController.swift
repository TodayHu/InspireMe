//
//  InterfaceController.swift
//  InspireMe WatchKit Extension
//
//  Created by Vineet Tiwari on 2015-03-06.
//  Copyright (c) 2015 vinny.co. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    // hook into quotes label
    @IBOutlet weak var quoteLable:WKInterfaceLabel!
    
    var quotes = ["If opportunity doesn't knock, build a door.", "Whether you think you can or you cannot, you are right.", "Pain is inevitable suffering in not."]
    
    var quoteIndex = 0;

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        self.quoteLable.setText("Inspire Me!")
    }
    
    // adding the slider
    
    // hook into show more button
    @IBAction func showMore() {
    
        
        // set labels text
        self.quoteLable.setText( quotes[quoteIndex] )
        
        // update quote index so that the next time we are setting the lable we will set the text of the lable to the next quote in the quote array
        quoteIndex++
        
        if quoteIndex == 2 {
            quoteIndex = 0 
        }
    }
    
}
