import Foundation // needed for readLine

// ================= CONSTANTS =================
let PLATE_PRICE: Float = 12.0 // price of a plate
let WRAP_PRICE: Float = 10.0 // price of a wrap
let MEAT_EXTRA: Float = 2.0  // extra cost for meat
let DRINK_PRICE: Float = 3.0 // price of a drink
let HST: Float = 0.13  // tax rate (13%)
let VEG:Float = 0.0 // no extra cost for veg

//function for reading input

// Function to calculate type cost
func getTypeCost(_ type: String) -> Float {
    if type == "plate" { // if user entered "plate"
        return PLATE_PRICE // return plate price
    } else { // otherwise
        return WRAP_PRICE // return wrap price
    }
} // end of getTypeCost function

// Function to calculate filling cost
func getFillingCost(_ filling: String) -> Float {
    if filling == "meat" { // if user entered "meat"
        return MEAT_EXTRA // return meat extra cost
    } else { // otherwise
        return 0.0 // no extra cost
    }
} // end of getFillingCost function

// Function to calculate drink cost
func getDrinkCost(_ drink: String) -> Float {
    if drink == "yes" { // if user entered "yes"
        return DRINK_PRICE // return drink price
    } else { // otherwise
        return 0.0 // no extra cost
    }
} // end of getDrinkCost function

// main function
func main() {
    print("Welcome to the Shawarma Shop!") // welcome message

    var total: Float = 0.0 // store total

    // asks user for type choice and calculates total
    while true { // loop until input is valid
        print("Do you want a Shawarma plate or wrap? (plate/wrap)") 
        if let type = readLine() { // read input safely
            if type == "plate" || type == "wrap" {
                 // check if input is valid
                total += getTypeCost(type) 
                // add type cost
                break // exit loop
            } else { // invalid input
                print("Invalid shawarma type. Please try again.") 
                // error message
            }
        }
    } // end of type input loop

    // asks user for filling choice and calculates total
    while true { // loop until input is valid
        print("Do you want meat or vegetables? (meat/veg)")
        if let filling = readLine() { // read input safely
            if filling == "meat" || filling == "veg" { // check if input is valid
                total += getFillingCost(filling) // add filling cost
                break // exit loop
            } else { // invalid input
                print("Invalid filling choice. Please try again.")
                 // error message
            }
        }
    } // end of filling input loop

    //asks user for drink choice and calculates total
    while true { // loop until input is valid
        print("Do you want a drink? (yes/no)")
        if let drink = readLine() {
    let drinkLower = drink.lowercased() // convert input to lowercase
    if drinkLower == "yes" || drinkLower == "no" {
        total += getDrinkCost(drinkLower) // use lowercase for function
        break
    } else {
        print("Invalid drink choice. Please try again.")
    }
}
    } // end of drink input loop

    // calculate tax and final total
    let taxAmount = total * HST // calculate tax amount
    let totalWithTax = total + taxAmount // add tax to total

    print("Your total including HST is:")
    print(String(format: "$%.2f", totalWithTax)) 
    // print result with 2 decimals

} // end of main function

// run the program
main() // call main function
