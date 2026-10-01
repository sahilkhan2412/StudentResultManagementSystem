import Foundation
func studentDetail()-> (name:String, percentage:Double){
    print("Enter Student Name:")
    let firstStudent = readLine()!
    print("Enter Maths marks:")
    let mathsInput = readLine()
    guard let maths = Double(mathsInput!)else{
        print("Invalid marks")
        return ("", -1)
    }
    print("Enter English marks:")
    let englishInput = readLine()
    guard let english = Double(englishInput!)else{
        print("Invalid marks")
        return ("", -1)
    }
    print("Enter Computer marks:")
    let computerInput = readLine()
    guard let computer = Double(computerInput!)else{
        print("Invalid marks")
        return ("", -1)
    }
    print("Enter Science marks:")
    let scienceInput = readLine()
    guard let science = Double(scienceInput!)else{
        print("Invalid marks")
        return ("", -1)
    }
    print("Enter GK marks:")
    let gkInput = readLine()
    guard let gk = Double(gkInput!)else{
        print("Invalid marks")
        return ("", -1)
    }
    print("------------------------------")
    print("------------------------------")
    print("         STUDENT RESULT       ")
    print("------------------------------")
    print("------------------------------")
    print("Name: \(String(describing: firstStudent))")
    print("Maths: \(maths)")
    print("English: \(english)")
    print("Computer: \(computer)")
    print("Science: \(science)")
    print("GK: \(gk)")
    print("------------------------------")
    print("------------------------------")
    let total = totalMarks(maths, english, computer, science, gk)
    print("Total Marks: \(total)")
    let percentage = percentage(total)
    print("Percentage:\(percentage) %")
    let grade = grade(percentage)
    print("Grade:\(grade)")
    let status = status(percentage)
    print("Status:\(status)")
    print("------------------------------")
    print("------------------------------")

    return (firstStudent ,percentage)
}
func totalMarks(_ maths:Double,_ english:Double,_ computer:Double,_ science:Double,_ gk:Double)->Double{
    let total = maths + english + computer + science + gk
    return total
}
func percentage(_ total:Double)->Double{
    let percentage = total * 100 / 500
    return percentage
}
func grade(_ percentage: Double)->String{
    switch percentage{
    case 90...100:
        return "A+"
    case 80..<90:
        return "A"
    case 70..<80:
        return "B"
    case 60..<70:
        return "C"
    case 50..<60:
        return "D"
    case 0..<50:
        return "F"
    default:
        return "Invalid Percentage"
    }
}
func status(_ percentage:Double)->String{
    if percentage >= 50{
        return "PASS"
    }else{
        return "FAIL"
    }
}
print("Enter number of students:")
let input = readLine()
guard let numberOfStudents = Int(input!)else{
    print("Invalid number")
    exit(0)
}
var highestPercentage = 0.0
var topperName = ""
for i in 1...numberOfStudents{
    print("\n STUDENT  \(i)")
let currentPercentage = studentDetail()
    if currentPercentage.percentage > highestPercentage{
        highestPercentage = currentPercentage.percentage
        topperName = currentPercentage.name
    }
}
print("Topper: \(topperName)")
print("Highest Percentage: \(highestPercentage)")



