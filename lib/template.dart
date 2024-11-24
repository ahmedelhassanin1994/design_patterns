// Abstract Class
abstract class DataParser {
  // Template method
  void parseData() {
    readData();
    processData();
    saveData();
  }

  // Concrete method
  void readData() {
    print("Reading data from source...");
  }

  // Abstract methods
  void processData();
  void saveData();
}

// Concrete Class 1
class CSVParser extends DataParser {
  @override
  void processData() {
    print("Processing CSV data...");
  }

  @override
  void saveData() {
    print("Saving CSV data to database.");
  }
}

// Concrete Class 2
class JSONParser extends DataParser {
  @override
  void processData() {
    print("Processing JSON data...");
  }

  @override
  void saveData() {
    print("Saving JSON data to database.");
  }
}


