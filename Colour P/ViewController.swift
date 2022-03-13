//
//  ViewController.swift
//  Colour P
//
//  Created by Prince. on 2022/02/21.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {


    @IBOutlet weak var colourCollection: UICollectionView!
    @IBOutlet weak var dropperBtn: UIButton!
    @IBOutlet weak var colourSegments: UISegmentedControl!
    @IBOutlet weak var opacityLevel: UISlider!
    @IBOutlet weak var pickedColour: UIView!
    @IBOutlet weak var opacityPercentage: UILabel!
    
    var randomC = ColorCell()
    
    var pickedColourcell = UIColor()
    
    var celllabels = [" ", " ", " ", ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        sliderSettings()
        colourCollection.dataSource = self
        self.view.layoutIfNeeded() //loads before viewdidload
        //collectionViewLayoutModification()
        randomC.populateColor()
    }

    @IBAction func opacitySlider(_ sender: UISlider){
        
        print(opacityLevel.value)
        let roundedValue = Int(opacityLevel.value)
        opacityPercentage.text = "\(roundedValue)%"
        opacityLevel.minimumValue = 0
        opacityLevel.maximumValue = 100
        
    }
    
    
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 13
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "colorCell", for: indexPath) as? ColorCell
        
        //ColorCell.populateColor(cell!)
        
        return cell!
        
    }
    
    
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
//        {
//            return CGSize(width: 5, height: 5
//            )
//        }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

      
        
    }
    class CustomSlider: UISlider {
        override func trackRect(forBounds bounds: CGRect) -> CGRect {
            let point = CGPoint(x: bounds.minX, y: bounds.midY)
            return CGRect(origin: point, size: CGSize(width: bounds.width, height: 35))
        }
    }
    
    

    //creat rgb base vals, insert in loop, return colour=
    


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
        myLayout.minimumInteritemSpacing = 1


        colourCollection.collectionViewLayout = myLayout
        
        return myLayout
        
    }
    
    
    func sliderSettings(){
        
        opacityLevel.setMinimumTrackImage(UIImage(named: "sliderback"),for: .normal)
        opacityLevel.setMaximumTrackImage(UIImage(named: "sliderback"),for: .normal)
        opacityLevel.value = 100
        opacityLevel.isEnabled = true
    }
}




