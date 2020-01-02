import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  String result;

  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}

// Note that Futures are not the main thing however,
// they are a promise that you'll get the main thing after
// the task is completed

//Future<Object> , the can be specific to return object directly or any kind
// dataType even void

// if a task is to return Future<String>,
// it means it promises to return a String in the "Future" only when the task is
// completed

// note that "await" is used on the part of code or method that needs be waited
// upon to complete
// in place of await we can use Future<String> task2Result1 =  task2();
// however an instance of Future<String> is what we get and not a the main String
// meanwhile await ensures we get the main thing
