class Student {
  String? name;
  String? age;
  String? roll;
  String? sub;

  void setInformation(String n, String a, String r, String s) {
    name = n;
    age = a;
    roll = r;
    sub = s;
  }

  void displayInformation() {
    print("Name:$name");
    print("Age:$age");
    print("Roll:$roll");
    print("Subject:$sub");
  }
}

void main(){
  Student st = Student();
  st.setInformation("M M Hannan Miyaji", "29", "03", "ICT");
  st.displayInformation();

  Student st1 = Student();
  st1.setInformation("Mukut", "32", "1", "Math");
  st1.displayInformation();

  Student st2 = Student();
  st2.setInformation("Mohoshin", "40", "1", "English");
  st2.displayInformation();
}