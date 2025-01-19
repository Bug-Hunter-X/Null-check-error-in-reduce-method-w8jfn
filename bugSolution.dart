```dart
List<int?> nullableNumbers = [1, 2, null, 4, 5];
int? nullableSum = nullableNumbers.fold<int?>(0, (previousValue, element) => previousValue! + element!); // handles null values gracefully
print(nullableSum); // Output: 12

//alternative solution using where to filter null values
int? sum2 = nullableNumbers.where((element) => element != null).fold(0,(sum, element)=> sum + element); //alternative sum without nulls
print(sum2); //12

//another alternative using a for loop
int? sum3 = 0;
for (var element in nullableNumbers) {
  if (element != null) {
    sum3 = sum3! + element;
  }
}
print(sum3); //12
```