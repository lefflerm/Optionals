//: Playground - noun: a place where people can play

import UIKit

func calculateTip (totalBill: Double, withRating rating: Int) -> Double {
    return totalBill * tipPercentageForRating(rating)
    
}

//Made it its own function
func tipPercentageForRating(rating: Int) -> Double {
    var tipPercentage: Double
    if rating == 5 {
        tipPercentage = 0.25
    } else if rating >= 3 {
        tipPercentage = 0.15
    } else {
        tipPercentage = 0.10
    }
    
    return tipPercentage
}

func showTipAdvice( restaurantTOtal: Double, rating: Int?, restaurantName: String?) {
    var tip: Double
    if rating != nil {
        tip = calculateTip(restaurantTotal, withRating: rating!)
    }
    else {
        //if the rating is nil, you get a 0 rating :3
        tip = calculateTip(restaurantTotal, withRating: 0)
    }
    
    //You didn't use the value you passed for the rating so I changed it cause it was bugging me :3
    
    //checking and unwrapping an optional
   /* if restaurantName != nil {
        print("You went out to eat at \(restaurantName!)")
    } */
    
    //optional binding
    if let restaurantName = restaurantName {
        print("You went out to eat at \(restaurantName)")
    }
    
    print("On a bill of $\(restaurantTotal), you should leave a tip of $\(tip)")
    print("That means you pay $\(restaurantTotal + tip)")
}

let restaurantTotal = 95.00
var restaurantName: String? = "Burger King"
var rating: Int? = 3
//what did you buy at burger king for that much? O.O That sounds good

showTipAdvice(restaurantTotal, rating: rating, restaurantName: restaurantName)
