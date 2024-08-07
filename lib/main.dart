/*
  Dart Object Oriented Programming 

Object Oriented Programming is Computer Programming model that organize software design around data or objects rather than functions and logic.

An object can be defined as data  field
that has unique attributes and behaivour.

Advantages OOP : 
Increase the useability and decrease the complexity ,increase the prodictivity of programmer
Helps us debug code and write code efficently.  

Null Safety in Dart 

Non -nullable variable : Those variable that must contain a value and cannot be nil.
Nullable Variable means we will assign value to the variable later
In order to make a variable nullable we do this 
int ? age ;
print(age); here the age is nullable

Class and Objects in Dart 

Class is the blueprint for Creating Objects.
it is user defined data type that has its own data members and member function whereas Object is an instance of class by which we can access the data members and memeber function

Example 1 :
void main() {
  Person person = Person();
  person.display();
}

class Person {
  String name = 'Talha Hussain';
  int age = 21;

  void display() {
    print("My name is ${name}");
  }
}

Example 2 :

void main() {
  Person person = Person();
  person.name = "Talha Hussain";
  person.age = 12;
  person.isStudent = true;
  person.display();
}

class Person {
  String? name;
  int? age;
  bool? isStudent;

  void display() {
    print("My name is ${name}");
    print("My Age is ${age}");
    print("Student :${isStudent}");
  }
}

Example 3 : 

void main() {
  Student student1 = Student();
  student1.name = "Talha Hussain";
  student1.age = 21;
  student1.grade = "A";
  student1.studentId = 111;
  student1.displaydata();
  student1.upgradeGrade("A+");
}

class Student {
  String? name;
  int? age;
  String? grade;
  int? studentId;
  void displaydata() {
    print("Name : ${name}");
    print("Age :${age}");
    print("Grade : ${grade}");
    print("StudednId:${studentId}");
    print("--------------------");
  }

  void upgradeGrade(String newgrade) {
    grade = newgrade;
    print(" ${name} New Grade :${grade}");
  }
}


 Error Handling and Null check Operator

Example 1 Simple

void main() {
  Area area = Area();
  area.length = 5.0;
  area.width = 6.0;
  area.calculateArea();
}

class Area {
  double? width;
  double? length;
  void calculateArea() {
    double area = length! * width!;
    print(area);
  }
}
 

Example 1 :  

void main() {
  Area area = Area();
  area.length = 5.0;
  area.calculateArea();
}

class Area {
  double? width;
  double? length;
  void calculateArea() {
if(width==null){
print("Width Cannot be null");
width=0;
} 
   double area = length! * width!;
    print(area);
  }
}

In order To Handle exception we can also write this code in try and catch 
 

if(width==null){
print("Width Cannot be null");
width=0;
} 
can also be written as 
double temp=width?? 0; it's same thing  



Constructor in Dart  

Specialized method that creates instances of class. 


Example 

void main() {
  Student student = Student('Talha Hussain', 21);
  student.display();
}

class Student {
  String? name;
  int? age;
  Student(String Name, int Age) {
    this.name = Name;
    this.age = Age;
  }

  void display() {
    print(this.name);
    print(this.age);
  }
}


Constructor Example Using List


void main() {
  List<Student> name = [Student("Talha", 21), Student("Ali", 22)];
  name.forEach((element) {
    print(element.name);
  });
}

class Student {
  String? name;
  int? age;
  Student(String name, int age) {
    this.name = name;
    this.age = age;
  }
}


*/
