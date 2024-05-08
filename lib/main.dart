
import 'dart:io';

void main() {
  // Take input for the dimensions of the arrays
  stdout.write('Enter the number of rows for the arrays: ');
  int rows = int.parse(stdin.readLineSync()!);
  stdout.write('Enter the number of columns for the arrays: ');
  int columns = int.parse(stdin.readLineSync()!);

  // Take input for the first array
  List<List<int>> array1 = [];
  stdout.writeln('Enter elements for the first array:');
  for (int i = 0; i < rows; i++) {
    stdout.write('Row ${i + 1}: ');
    String rowInput = stdin.readLineSync()!;
    List<int> row = rowInput.split(' ').map(int.parse).toList();
    if (row.length != columns) {
      print('Invalid number of elements in row. Please try again.');
      return;
    }
    array1.add(row);
  }

  // Take input for the second array
  List<List<int>> array2 = [];
  stdout.writeln('Enter elements for the second array:');
  for (int i = 0; i < rows; i++) {
    stdout.write('Row ${i + 1}: ');
    String rowInput = stdin.readLineSync()!;
    List<int> row = rowInput.split(' ').map(int.parse).toList();
    if (row.length != columns) {
      print('Invalid number of elements in row. Please try again.');
      return;
    }
    array2.add(row);
  }

  // Calculate the sum of the arrays
  List<List<int>> sumArray = [];
  for (int i = 0; i < rows; i++) {
    List<int> rowSum = [];
    for (int j = 0; j < columns; j++) {
      rowSum.add(array1[i][j] + array2[i][j]);
    }
    sumArray.add(rowSum);
  }

  // Display the sum array
  print('\nSum of the two arrays:');
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < columns; j++) {
      stdout.write('${sumArray[i][j]} ');
    }
    print('');
  }
}