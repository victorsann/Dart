abstract class Machine {
  write();
  read();
}

class SoftwareEngineer implements Machine {
  @override
  write() {
    print('Dart');
  }

  @override
  read() {
    print('Machine Code');
  }
}

class DataAnalyst implements Machine {
  @override
  write() {
    print('Pyton');
  }

  @override
  read() {
    print('Machine Code');
  }
}

void main() {
  SoftwareEngineer softwareEngineer = new SoftwareEngineer();
  softwareEngineer.write();
  DataAnalyst dataAnalyst = new DataAnalyst();
  dataAnalyst.write();
}
