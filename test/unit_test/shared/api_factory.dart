import 'package:faker/faker.dart';

class ApiFactory {
  static Map<String, dynamic> listAll() {
    return {
      "transaction": [
        {
          "id": faker.lorem.word(),
          "title": faker.lorem.word(),
          "description": faker.lorem.sentence(),
          "status": faker.lorem.word(),
          "amount": faker.randomGenerator.decimal(),
          "date": faker.date.dateTime(),
          "from": faker.lorem.word(),
          "to": faker.lorem.word()
        },
        {
          "id": faker.lorem.word(),
          "title": faker.lorem.word(),
          "description": faker.lorem.sentence(),
          "status": faker.lorem.word(),
          "amount": faker.randomGenerator.decimal(),
          "date": faker.date.dateTime(),
          "from": faker.lorem.word(),
          "to": faker.lorem.word()
        },
        {
          "id": faker.lorem.word(),
          "title": faker.lorem.word(),
          "description": faker.lorem.sentence(),
          "status": faker.lorem.word(),
          "amount": faker.randomGenerator.decimal(),
          "date": faker.date.dateTime(),
          "from": faker.lorem.word(),
          "to": faker.lorem.word()
        }
      ]
    };
  }

  static Map<String, dynamic> getOne() {
    return {
      "transactions": [
        {
          "id": faker.lorem.word(),
          "title": faker.lorem.word(),
          "description": faker.lorem.sentence(),
          "status": faker.lorem.word(),
          "amount": faker.randomGenerator.decimal(),
          "date": faker.date.dateTime(),
          "from": faker.lorem.word(),
          "to": faker.lorem.word()
        }
      ]
    };
  }
}
