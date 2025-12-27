def is_prime(n):
    """
    fun:
        finding the prime number
    """
    if n <= 1:
        return False  # 0 and 1 are not prime numbers
    for i in range(2, int(n ** 0.5) + 1):
        if n % i == 0:
            return False  # If divisible by any number other than 1 and itself
    return True  # If no divisors are found, it's a prime number


# Test the function
num = int(input("Enter a number: "))
if is_prime(num):
    print(f"{num} is a prime number.")
else:
    print(f"{num} is not a prime number.")
