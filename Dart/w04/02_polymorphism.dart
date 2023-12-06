void main(List<String> args) {
  isYaptir(Insan());
  isYaptir(Canli());
  isYaptir(Canli());
  isYaptir(Balik());
  isYaptir(Kus());

  communicate(SmsService());
  communicate(EmailService());
}

void communicate(MessageServise messenger) {
  messenger.SendMessage();
}

void isYaptir(Canli i) {
  i.HareketEt();
}

class Canli {
  void HareketEt() {
    print("Canlı hareket etti");
  }
}

class Kus extends Canli {
  @override
  void HareketEt() {
    print("Kuş uçmaya başladı");
  }
}

class Balik extends Canli {
  @override
  void HareketEt() {
    print("Balık yüzmeye başladı");
  }
}

class Insan extends Canli {
  @override
  void HareketEt() {
    print("İnsan yürümeye başladı");
  }
}

abstract class MessageServise {
  void SendMessage();
  void ReadMessage();
}

class SmsService implements MessageServise {
  @override
  void ReadMessage() {
    print("Sms message read!");
  }

  @override
  void SendMessage() {
    print("Sms message sent!");
  }
}

class EmailService implements MessageServise {
  @override
  void ReadMessage() {
    print("Email message read!");
  }

  @override
  void SendMessage() {
    print("Email message sent!");
  }
}
