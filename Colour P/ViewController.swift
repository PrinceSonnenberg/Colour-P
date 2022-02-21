//
//  ViewController.swift
//  Colour P
//
//  Created by Prince. on 2022/02/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    
    @IBOutlet weak var colourCollection: UICollectionView!
    
    @IBOutlet weak var dropperBtn: UIButton!
    
    @IBOutlet weak var colourSegments: UISegmentedControl!
    
    @IBOutlet weak var opacityLevel: UISlider!
    
    @IBOutlet weak var pickedColour: UILabel!
    
    @IBOutlet weak var opacityPercentage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        colourCollection.dataSource = self
        
        self.view.layoutIfNeeded() //loads before viewdidload
        
    }

    @IBAction func opacitySlider(_ sender: UISlider){
        
        print(opacityLevel.value)
        let roundedValue = Int(opacityLevel.value)
        opacityPercentage.text = "\(roundedValue)%"
        
    }
    
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 13
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 13
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCell", for: indexPath) //as? CellColor
        
        collectionViewLayoutModification()
        cell.contentView.backgroundColor = randomColor()
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        pickedColour.backgroundColor = randomColor()
        
    }
    
    func randomColor() -> UIColor {

        var randomRed:CGFloat = 0.0
        var randomGreen:CGFloat = 0.0
        var randomBlue:CGFloat = 0.0
        let nonRandomAlpha:CGFloat = 1.0

        // reject colors that are too dark -- colors //
        // are rejected 0.35/3 = %11.6 of the time   //
        while ( randomRed + randomGreen + randomBlue < 0.30) {

            // for each color channel we generate a random number //

            randomRed = CGFloat(drand48())
            randomGreen = CGFloat(drand48())
            randomBlue = CGFloat(drand48())
        }

        // build and return a color object   //
        // with the generated random numbers //
        return UIColor(red: randomRed,
          green: randomGreen,
          blue: randomBlue,
          alpha: nonRandomAlpha)

    }

    func collectionViewLayoutModification() -> UICollectionViewFlowLayout {
        
        // determine the amount of items in the row.
            //4
        //1
        let rowItems = 13

        let cellWidth = self.colourCollection.bounds.width / CGFloat(rowItems)

        // create the layout of the grid
        //2
        let myLayout = UICollectionViewFlowLayout()
        myLayout.itemSize = CGSize(width: cellWidth, height: cellWidth)

        //3
        myLayout.sectionInset = UIEdgeInsets.zero
        myLayout.minimumLineSpacing = 1
        myLayout.minimumInteritemSpacing = 0


        colourCollection.collectionViewLayout = myLayout
        
        return myLayout
        
    }
    
    
}

