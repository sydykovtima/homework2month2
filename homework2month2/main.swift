import Foundation
class Shop {
    var name:String
    var ploshad:String
    var geo:String
    var timeWork:String
    var products: [Tovar] = [Tovar]()
init(name: String, ploshad: String, geo: String, timeWork: String) {
        self.name = name
        self.ploshad = ploshad
        self.geo = geo
        self.timeWork = timeWork
    }
    func showInfo(){
        print("Гипер маркет - \(name),\nего площадь - \(ploshad),\nместоположение - \(geo),\nработает до - \(timeWork)")
        for product in products {
            print("товар - \(product.tovar)\nцена - \(product.cost)\nкол - во \(product.shtuk) штук")
        }
    }
    func addTovar(product: Tovar ) {
        products.append(product)
    }
    }
var shop = Shop(name: "globus", ploshad: "1200m^2", geo: "Магистраль", timeWork: "23:00")
var cola = Tovar(cost: 65, tovar: "Кола", shtuk: 200000)
var kefir = Tovar(cost: 55 , tovar: "Кефир", shtuk: 150000)
var chocolate = Tovar(cost: 75 , tovar: "шоколад", shtuk: 50000)
var nitro = Tovar(cost: 35 , tovar: "Нитро", shtuk: 51999)
shop.addTovar(product: cola)
shop.addTovar(product: kefir)
shop.addTovar(product: chocolate)
shop.addTovar(product: nitro)
shop.showInfo()
class AutoShop:Shop {
    var name1:String
    var array:[Tovar] = [Tovar]()
    init(name1:String) {
    self.name1 = name1
        super.init(name: "Автозапчасти", ploshad: "10000km^2", geo: "Суеркулова", timeWork: "20:00")
    }
    override func showInfo() {
     print("Магазин - \(name),\nплощадь - \(ploshad),\nместоположение - \(geo),\n работает до - \(timeWork)\n в магазине есть - много чего")
        for price in array {
            print("предмет - \(price.tovar)\nцена  -  \(price.cost)\nкол - во  \(price.shtuk) штук")
        }
        }
        func AddPrice(array1:Tovar){
            array.append(array1)
        }
    }
//}
var Auto = AutoShop(name1: "Автозапчасти")
var instruments = Tovar(cost: 950 , tovar: "инструменты", shtuk: 600)
var Wheels = Tovar(cost: 350 , tovar: "Колеса", shtuk: 500)
var Key = Tovar(cost: 450 , tovar: "Ключи", shtuk: 1000)
var Nasos = Tovar(cost: 350 , tovar: "Колеса", shtuk: 500)
Auto.AddPrice(array1: Wheels)
Auto.AddPrice(array1: Key)
Auto.AddPrice(array1: Nasos)
Auto.showInfo()
class SecondHand: Shop{
    var name2:String
    var things:[Tovar] = [Tovar]()
    init(name2:String) {
    self.name2 = name2
        super .init(name: "SecondHand", ploshad: "5000M^2", geo: "Орто - Сай", timeWork: "19:00")
    }
    override func showInfo() {
        print("Магазин Одежды - \(name)\nего площадь - \(ploshad), местоположение - \(geo), работает до - \(timeWork)")
        for thing in things {
            print("у нас есть -\(thing.tovar)\nцена \(thing.cost)\nосталось\(thing.shtuk)")
        }
    }
        func addThings(thing:Tovar) {
            things.append(thing)
        }
    }
var secondhand = SecondHand(name2: "SecondHand")
var Hoody = Tovar(cost: 1500 , tovar: "Толстовка", shtuk: 2)
var Sneakers = Tovar(cost: 2000 , tovar: "Кросовки", shtuk: 6)
var Hat = Tovar(cost: 550 , tovar: "Шапка", shtuk: 15)
secondhand.addThings(thing: Hoody)
secondhand.addThings(thing: Sneakers)
secondhand.addThings(thing: Hat)
secondhand.showInfo()
    class Tovar {
        
        var cost:Int
        var tovar:String
        var shtuk:Int
        init(cost: Int, tovar: String, shtuk: Int) {
            self.cost = cost
            self.tovar = tovar
            self.shtuk = shtuk
        }
        func showInfo() {
            print("\(cost), \(tovar), \(shtuk)")
        }
    }

var tovary = Tovar(cost: 0, tovar: "", shtuk: 0)


