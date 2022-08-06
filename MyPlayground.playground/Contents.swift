import UIKit

var Name = "Mahdi"
var BirthdayYear = 2005
var CurrentYear = 2022
var age = CurrentYear - BirthdayYear


// في المتغير الذي اسمه age ، قم بعملية حسابية بسيطة لحساب عمرك، من خلال استخدام متغير birthdayYear

print(" Hello my name is \(Name) and my age is \(age) ")

//قم بعمل if ، وطباعة ما إذا كان يمكنك المشاركة في مبادرة الكويت تبرمج أو لا، حيث أن من شروط المبادرة أن يكون عمر الطالب من ١٤ إلى ١٨

if age >= 14 || age <= 18
{
    print("🔥wellcome to kuwait codes🔥")
    
}
else
{
print("😩goodbye from kuwait codes")
}


//الآن قم بعملية الجمع بين المتغير الأول والثاني وضع النتيجة في متغير ثالث جديد من نوع Double

var Numb1 = "8"
var Numb2 = 4
var DoubleNumb : Double

DoubleNumb = (Double(Numb1) ?? 0) + Double(Numb2)

