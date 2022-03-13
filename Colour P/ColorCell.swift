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
            cellLabel.text = label
        }
    
//        func randomColor() -> UIColor {
//
//            var randomRed:CGFloat = 0
//            var randomGreen:CGFloat = 0
//            var randomBlue:CGFloat = 0
//            let nonRandomAlpha:CGFloat = 1.0
//
//            // reject colors that are too dark -- colors //
//            // are rejected 0.35/3 = %11.6 of the time   //
//            while ( randomRed + randomGreen + randomBlue < 0.99) {
//
//                // for each color channel we generate a random number //
//                // generate a type double number with a value that is between 0.0 to 1.0.
//               
//                randomRed = CGFloat(drand48())
//                randomGreen = CGFloat(drand48())
//                randomBlue = CGFloat(drand48())
//                
//            }
//
//            // build and return a color object   //
//            // with the generated random numbers //
//            return UIColor(red: randomRed,
//              green: randomGreen,
//              blue: randomBlue,
//              alpha: nonRandomAlpha)
//
//        }
    
    func populateColor() {
    
            var hue: Float
            var sat: Float
            var val: Float

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
                hue = Float(((col * 25) + 180)%(360))

    
                            }
                }
        }
}
