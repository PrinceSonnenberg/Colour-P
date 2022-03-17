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
    
    
}
