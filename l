class CoffeeHouse
{
     static scan = java.util.Scanner(java.io.BufferedInputStream@56cbfb61);
#rproduct/add-on = 0.0;
#milk = 0.0;
#cream=0.0;
    #latte = 0.0;
    #Coffee_Count = 0;
    // Default Constructor Initialization...
    this.coffee_powder = 0;
    this.milk = 0;
    this.water = 0;
    SetIngredient()
    {
        // Calling for Filling Ingredient...
        console.log("\nFilling...");
        this.coffee_powder = 500.0;
        this.milk = 1;
        this.water = 2;
        console.log("Filling Completed.");
    }
    GetIngredient()
    {
        // To Get Status
        console.log("Available Coffee Power(Gram) " + String.format("%.1f",this.coffee_powder));
        console.log("Available Milk(Liter) " + String.format("%.1f",this.milk));
        console.log("Available Water(Liter) " + String.format("%.1f",this.water));
    }
    CleanMachine()
    {
        // Initialization with Null In order to Clean Machine
        console.log("\nCleaning Machine...");
        this.coffee_powder = 0;
        this.milk = 0;
        this.water = 0;
        console.log("Cleaning Completed.");
    }
    makecoffee()
    {
        // Coffee Selection Menu
        console.log("\n ------------------ ");
        console.log("|   Select Type:   |\n ------------------ \n| 1:  Black Coffee |\n| 2:  Milk Coffee  |\n| 0   to Discard   |");
        console.log(" ------------------ \n");
        var t = CoffeeMachine.scan.next().charAt(0);
        switch (t) {
            case '1':
                this.BlackCoffee();
                // Call to BlackCoffee Method
                break;
            case '2':
                this.MilkCoffee();
                // Call to MilkCoffee Method
                break;
            case '0':
                break;
        }
    }
    BlackCoffee()
    {
        if (this.coffee_powder >= 10 && this.water >= 0.2)
        {
            console.log("\nMaking Black Coffee...");
            console.log("\nTaking 10gm of Coffee Powder.");
            this.coffee_powder = this.coffee_powder - 10;
            console.log("Taking 0.2 liter of Water.");
            this.water = this.water - 0.2;
            console.log("\nYour Black Coffee is Ready.");
            this.Coffee_Count++;
        }
        else 
        {
            console.log("\nAvailable Coffee Power(Gram) " + String.format("%.1f",this.coffee_powder));
            console.log("Available Water(Liter) " + String.format("%.1f",this.water));
            console.log("\nSome Iteams Are Not Available, Please Fill before Making Coffee.");
        }
    }
    MilkCoffee()
    {
        if (this.coffee_powder >= 10 && this.milk >= 0.4 && this.water >= 0.2)
        {
            console.log("\nMaking Milk Coffee...");
            console.log("\nTaking 10gm of Coffee Powder.");
            this.coffee_powder = this.coffee_powder - 10;
            console.log("Taking 0.4 Liter of Milk.");
            this.milk = this.milk - 0.4;
            console.log("Taking 0.2 liter of Water.");
            this.water = this.water - 0.2;
            console.log("\nYour Milk Coffee is Ready.");
            this.Coffee_Count++;
        }
        else 
        {
            console.log("\nAvailable Coffee Power(Gram) " + String.format("%.1f",this.coffee_powder));
            console.log("Available Milk(Liter) " + String.format("%.1f",this.milk));
            console.log("Available Water(Liter) " + String.format("%.1f",this.water));
            console.log("\nSome Iteams Are Not Available, Please Fill before Making Coffee.");
        }
    }
    start()
    {
        // public Start to accese all private method of this class
        console.log(" ----------------------------------------------------------------");
        console.log("|                   Coffee Machine By Manikant                   |");
        console.log(" ----------------------------------------------------------------");
        // System.out.println("Currently We Have Following Operations, Select as your Need:- ");
        console.log("\nCurrent Status: ");
        this.GetIngredient();
        var t = true;
        while (t)
        {
            console.log("\n -------------------------------- ");
            console.log("|1:     Status of Ingredient     |\n -------------------------------- \n|2:      Fill Ingredient         |\n -------------------------------- \n|3:       Clean Machine          |\n -------------------------------- \n|4:        Make Coffee           |\n -------------------------------- \n|5: How many Coffee We have made?|\n -------------------------------- \n|6:        Exit                  |");
            console.log(" -------------------------------- \n\n");
            var c = CoffeeMachine.scan.next().charAt(0);
            switch (c) {
                case '1':
                    console.log("------------- Status ------------");
                    this.GetIngredient();
                    console.log("---------------------------------");
                    break;
                case '2':
                    this.SetIngredient();
                    break;
                case '3':
                    this.CleanMachine();
                    break;
                case '4':
                    this.makecoffee();
                    break;
                case '5':
                    console.log("\nWe Have Made " + this.Coffee_Count + " Coffees.");
                    break;
                case '6':
                    console.log("\nExiting...\n");
                    t = false;
                    break;
            }
        }
    }
}
class MakeCoffee
{
    static main(args)
    {
        var scan = java.util.Scanner(java.io.BufferedInputStream@56cbfb61);
        console.log("\nWants to Start Mechine Y or N ?");
        var d = ' ';
        d = scan.next().charAt(0);
        if (d == 'Y' || d == 'y')
        {
            var cm = new CoffeeMachine();
            // Instances For CoffeMachine
            cm.start();
            // In order to call All Private Method Calling Public mathod
            console.log("Shutting Down...\n");
        }
        else 
        {
            console.log("Shutting Down...\n");
        }
    }
}
MakeCoffee.main([]);
