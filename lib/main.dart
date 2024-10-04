class Student {
  String? name;
  String? age;
  String? roll;
  String? sub;
}

void main(){
  Student st = Student();
  st.name = "M M Hannan";
  st.age = "25";
  st.roll = "10";
  st.sub = "ICT";

  Student st1 = Student();
  st1.name = "Mukut";
  st1.age = "30";
  st1.roll = "01";
  st1.sub = "Math";

  print(st.name);
  print(st.age);
  print(st.roll);
  print(st.sub);

  print(st1.name);
  print(st1.age);
  print(st1.roll);
  print(st1.sub);
}