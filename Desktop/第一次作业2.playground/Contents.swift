import UIKit

var str = "Hello, playground"
enum Gender{
    case male,female
}
class Person:CustomStringConvertible{
    var firstName:String
    var lastName:String
    var age:Int
    var gender:Gender
    var fullName:String {
        return  lastName+firstName //计算属性
    }
    init(firstName:String, lastName:String, age:Int, gender:Gender)
    {
        self.firstName=firstName
        self.lastName=lastName
        self.age=age
        self.gender=gender
    }
    convenience init(firstName:String)
    {
        self.init(firstName:firstName, lastName:"熊", age:20, gender:Gender.female)
    }
    /*func description()->String{
     
     }*/
    var description:String{
        return "Name:\(fullName) Age:\(age) Gender:\(gender)"
        //协议统一实现属性{get} 在xcode中可以jump看到
    }
    static func ==(x:Person,y:Person)->Bool{
        return x.fullName==y.fullName
    }
    static func !=(x:Person,y:Person)->Bool{
        return x.fullName != y.fullName
    }
}
var person1 = Person(firstName:"猫", lastName:"熊", age:20, gender:Gender.female)
var person2 = Person(firstName:"欢")
var person3 = person1
var person4 =  Person(firstName:"猫", lastName:"熊", age:20, gender:Gender.female)
//print(person1.description)
//print(person2.description)
if( person1 === person3)
{
    print("地址相同")
}
if(person1 == person4)
{
    print("姓名相同")
}
if(person1 != person2)
{
    print("姓名不同")
}
print(person4)


class Teacher:Person{
    var title:String
    init(firstName:String, lastName:String, age:Int, gender:Gender,title:String)
    {
        self.title=title
        super.init(firstName:firstName, lastName:lastName, age:age, gender:gender)
    }
    convenience init(firstName:String)
    {
        self.init(firstName:firstName, lastName:"陈", age:40, gender:Gender.male,title:"特级教师")
    }
    override var description:String{
        return super.description+" title:\(title)"
        //协议统一实现属性{get} 在xcode中可以jump看到
    }
    
}
class Student:Person{
    var stuNo:String
    init(firstName:String, lastName:String, age:Int, gender:Gender,stuNo:String)
    {
        self.stuNo=stuNo
        super.init(firstName:firstName, lastName:lastName, age:age, gender:gender)
    }
    convenience init(firstName:String)
    {
        self.init(firstName:firstName, lastName:"王", age:17, gender:Gender.male,stuNo:"2016110343")
    }
    override var description:String{
        return super.description+" 学号:\(stuNo)"
        //协议统一实现属性{get} 在xcode中可以jump看到
    }
    
}
let t1=Teacher(firstName:"杰")
print(t1)
print(t1.gender)
let t2=Student(firstName:"一川")
print(t2)

