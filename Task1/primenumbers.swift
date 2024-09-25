func isPrime(number: Int) -> Bool{
    
   // Checking if number for 1 or 0
   // 1 and 0 are not prime number.
   // So, if num is 1 or 0, then return false
   // Which means the number is not prime number
   if(number == 1 || number == 0){
      return false
   }

   // For loop starts from 2 to num - 1
   for j in 2..<number{

   // Checking the num is divisible by j, if yes
   // then the num is not prime number
      if (number % j == 0){
         return false
      }
   }
   // Else num is prime number
   return true
}

for num in 1 ... 100{
    if isPrime(number:num){ // Calling function
        print(num)
    }
}
