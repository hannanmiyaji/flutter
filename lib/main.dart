class Student {
  String? name;
  String? age;
  String? roll;
  String? sub;

  void displayInformation() {
    print("Name:$name");
    print("Age:$age");
    print("Roll:$roll");
    print("Subject:$sub");
  }
}

void main(){
  Student st = Student();
  st.name = "M M Hannan Miyaji";
  st.age = "29";
  st.roll = "03";
  st.sub = "ICT";
  st.displayInformation();

  Student st1 = Student();
  st1.name = "Mukut";
  st1.age = "32";
  st1.roll = "1";
  st1.sub = "Math";
  st1.displayInformation();
}