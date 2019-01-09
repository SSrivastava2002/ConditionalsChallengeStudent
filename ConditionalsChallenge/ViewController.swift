//
//  ViewController.swift
//  ConditionalsChallenge
//
//  Created by Robert Oppenheimer on 5/18/18.
//  Copyright (c) 2018 MobileMakers. All rights reserved.


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    
    @objc var firstChoiceCost = 0
    @objc var secondChoiceCost = 0
    @objc var thirdChoiceCost = 0
    @objc var fourthChoiceCost = 0

    @objc var totalMoney = Int()
    @objc var stringToReturn = ""

    var clothingItemArray = [ClothingItems]()

    override func viewDidLoad() {
        super.viewDidLoad()
        clothingItemArray.append(ClothingItems(Description: "Jacket", Price: 80))
        clothingItemArray.append(ClothingItems(Description: "Jeans", Price: 60))
        clothingItemArray.append(ClothingItems(Description: "Shirt", Price: 40))
        clothingItemArray.append(ClothingItems(Description: "Hat", Price: 20))

        myTableView.isEditing = true
    }

    @objc func determineOutputMVP() -> String
    {
        setInfo()
        /***************************************************
        * Start Your Code Here For MVP
        ***************************************************/
    if(firstChoiceCost <= totalMoney)
    {
        stringToReturn = " you can purchase your first choice"
        }
    else{
        stringToReturn = "you cannot purchase you first choice"
        }

        /***************************************************
        * End Your Code Here For MVP
        ***************************************************/
        return stringToReturn
    }
    
    @objc func determineOutput1() -> String
    {
        setInfo()
        /***************************************************
         * Start Your Code Here For Stretch #1
         ***************************************************/
        if(firstChoiceCost < totalMoney){
            stringToReturn = " You have plenty of money for your first choice"
        }else if(firstChoiceCost == totalMoney){
            stringToReturn = "you have just enough money for your first choice"
        }else if(firstChoiceCost > totalMoney){
            stringToReturn = " you don't have enough money for your first choice"
        }
        
        
        /***************************************************
         * End Your Code Here For Stretch #1
         ***************************************************/
        return stringToReturn
    }
    
    @objc func determineOutput2() -> String
    {
        setInfo()
        /***************************************************
         * Start Your Code Here For Stretch #2
         ***************************************************/
        var enoughMoney1 = ""
        var enoughMoney2 = ""
        var enoughMoney3 = ""
        var enoughMoney4 = ""
        if totalMoney >= firstChoiceCost
        {
            enoughMoney1 = "\nYou can purchase your first choice"
        }
        if totalMoney >= secondChoiceCost
        {
            enoughMoney2 = "\nYou can purchase your second choice"
        }
        if totalMoney >= thirdChoiceCost
        {
            enoughMoney3 = "\nYou can purchase your third choice"
        }
        if totalMoney >= fourthChoiceCost
        {
            enoughMoney4 = "\nYou can purchase your fourth choice"
        }
        stringToReturn = "\(enoughMoney1) \(enoughMoney2) \(enoughMoney3) \(enoughMoney4)"
    

        /***************************************************
         * End Your Code Here For Stretch #2
         ***************************************************/
        
        return stringToReturn
    }

    @objc func determineOutput3() -> String
    {
        setInfo()
        /***************************************************
        * Start Your Code Here For Stretch #3
        ***************************************************/
        var enoughMoney1 = "You cannot purchase your first choice"
        var enoughMoney2 = "You cannot purchase your second choice"
        var enoughMoney3 = " You cannot purchase your third choice"
        var enoughMoney4 = "You cannot purchase your fourth choice"
        
       if totalMoney >= firstChoiceCost
       {
        enoughMoney1 = "You can purchase your first choice"
        }
        if totalMoney >= secondChoiceCost
        {
            enoughMoney2 = "You can purchase your second choice"
        }
        if totalMoney >= thirdChoiceCost
        {
            enoughMoney3 = "You can purchase your third choice"
        }
        if totalMoney >= fourthChoiceCost
        {
            enoughMoney4 = "You can purchase your fourth choice"
        }
        stringToReturn =  "\(enoughMoney1) \n\(enoughMoney2) \n\(enoughMoney3) \n\(enoughMoney4)"
        /***************************************************
        * End Your Code Here For Stretch #3
        ***************************************************/

        return stringToReturn
    }

    @objc func determineOutput4() -> String
    {
        setInfo()
        /***************************************************
        * Start Your Code Here For Stretch #4
        ***************************************************/
       if totalMoney >= firstChoiceCost + secondChoiceCost + thirdChoiceCost + fourthChoiceCost
       {
        stringToReturn = " you can buy all four items"
        }
        if totalMoney < firstChoiceCost + secondChoiceCost + thirdChoiceCost + fourthChoiceCost
        {
            if totalMoney >= firstChoiceCost
            {
                stringToReturn = "you can buy the first item"
            }
            if totalMoney >= firstChoiceCost + secondChoiceCost
            {
                stringToReturn = "you can buy the first two items"
            }
            if totalMoney >= firstChoiceCost + secondChoiceCost + thirdChoiceCost
            {
                stringToReturn = " you can buy the first three items"
            }
            if totalMoney < firstChoiceCost
            {
                stringToReturn = "you cannot buy anything"
            }
        }

        /***************************************************
        * End Your Code Here For Stretch #4
        ***************************************************/

        return stringToReturn
    }

    @objc func determineOutput5() -> String
    {
        setInfo()
        /***************************************************
        * Start Your Code Here For Stretch #5
        ***************************************************/
        if totalMoney >= firstChoiceCost + secondChoiceCost + thirdChoiceCost + fourthChoiceCost
        {
            stringToReturn = " you can buy all four items \nYou spent \(firstChoiceCost + secondChoiceCost + thirdChoiceCost + fourthChoiceCost) \nYou have \(totalMoney - (firstChoiceCost + secondChoiceCost + thirdChoiceCost + fourthChoiceCost)) left "
        }
        if totalMoney < firstChoiceCost + secondChoiceCost + thirdChoiceCost + fourthChoiceCost
        {
            if totalMoney >= firstChoiceCost
            {
                stringToReturn = " you can buy the first item \nYou spent \(firstChoiceCost) \nYou have \(totalMoney - firstChoiceCost) left"
            }
            if totalMoney >= firstChoiceCost + secondChoiceCost
            {
                stringToReturn = "you can buy the first two items \nYou spent \(firstChoiceCost + secondChoiceCost) \nYou have \(totalMoney - (firstChoiceCost + secondChoiceCost)) left"
            }
            if totalMoney >= firstChoiceCost + secondChoiceCost + thirdChoiceCost
            {
                stringToReturn = "you can buy the first three items \nYou spent \(firstChoiceCost + secondChoiceCost + thirdChoiceCost) \nYou have \(totalMoney - (firstChoiceCost + secondChoiceCost + thirdChoiceCost)) left"
            }
            if totalMoney < firstChoiceCost
            {
                stringToReturn = "you cannot buy anything"
            }
        }

        /***************************************************
        * End Your Code Here For Stretch #5
        ***************************************************/

        return stringToReturn
    }


    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }

    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
    {
        let selectedItem = clothingItemArray[sourceIndexPath.row]
        clothingItemArray.remove(at: sourceIndexPath.row)
        clothingItemArray.insert(selectedItem, at: destinationIndexPath.row)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        let selectedClothingItem = clothingItemArray[indexPath.row]
        cell.textLabel!.text = selectedClothingItem.description + " $\(selectedClothingItem.price)"
        return cell
    }

    @IBAction func whenRefreshPressed(_ sender: UIBarButtonItem) {
        setInfo()
        onSegmentChosenPressed()
    }
    
    @objc func setInfo() {
        totalMoney = (Int)(arc4random_uniform(10)*20 + 20)
        stringToReturn = ""
        navigationItem.title = "You have $\(totalMoney)"
        firstChoiceCost = clothingItemArray[0].price
        secondChoiceCost = clothingItemArray[1].price
        thirdChoiceCost = clothingItemArray[2].price
        fourthChoiceCost = clothingItemArray[3].price
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clothingItemArray.count
    }

    @objc func onSegmentChosenPressed()
    {
        switch mySegmentedControl.selectedSegmentIndex
        {
            case 0:
                myTextView.text = determineOutputMVP()
            case 1:
                myTextView.text = determineOutput1()
            case 2:
                myTextView.text = determineOutput2()
            case 3:
                myTextView.text = determineOutput3()
            case 4:
                myTextView.text = determineOutput4()
            case 5:
                myTextView.text = determineOutput5()
            default:
                print("Error")
            
        }
    }
}

