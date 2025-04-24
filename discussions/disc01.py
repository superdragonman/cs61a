
##  Q2 Fizzbuzz
print("****Q2 Fizzbuzz****")
def fizzbuzz(n):
    for i in range(1,n+1):
        if i % 3 == 0 and i % 5 == 0:
            print("fizzbuzz")
        elif i % 3 == 0:
            print("fizz")
        elif i % 5 == 0:
            print("buzz")
        else:
            print(i)
result = fizzbuzz(16)
print(result)

## Q3: Is Prime?
print("****Q3: Is Prime?****")
def isprime(n):
    for i in range(2, n):
        if n % i == 0:
            return False
    return True

print(isprime(7))

##  Q4: Unique Digits
print("****Q4: Unique Digits****")
def unique_digits(n):
    count = 0
    for number in range(0,10):
        if has_digit(n, number):
            count += 1
        else:
            continue
    print(count)

def has_digit(n, k):
    assert 0 <= k < 10
    while n > 0:
        if n % 10 == k:
            return True
        n = n // 10
    return False
unique_digits(8675309)
unique_digits(13173131)
