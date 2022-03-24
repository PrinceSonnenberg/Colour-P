//
//  ColorCell.swift
//  Colour P
//
//  Created by Prince. on 2022/03/05.
//

import UIKit

class ColorCell: UICollectionViewCell {
    
    
    @IBOutlet weak var cellLabel: UILabel!
    
    func setLabel(label:String) {
            cellLabel.text = ""
        }
    
    func populateColor()-> [UIColor] {
    
            var hue: Float
            var sat: Float
            var val: Float

        var colourArray : [UIColor] = []
                // there are 10 rows
        for row in 0...9 {
                    // saturation begins at 1 | if Row is 0, then saturation is 0
            sat = min((1.3 - Float((row - 1)) * 0.13), 1)
                    // min -> if a number is larger than 1, we take 1

            val = min((0.2 + Float((row - 1)) * 0.13), 1)
                    // min -> if a number is larger than 1, we take 1

                    // there are 12 columns
            for col in 0...11 {
                        // for each, column, we have to move on the color circle by about 30 degrees
                        // however, I found 25 to be better
                hue = (Float(((col * 25) + 180)%(360))) / 360.0

            let col = UIColor(hue: CGFloat(hue), saturation: CGFloat(sat), brightness: CGFloat(val), alpha: 1.0)
           
             colourArray.append(col)
                
            print ("Hue: \(hue) | Sat: \(sat) | Val: \(val)")
                
            }
               
    }
        return colourArray
    }
    
}
