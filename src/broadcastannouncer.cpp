#include "announcer.h"
#include "broadcastannouncer.h"

// hints for the linker

BroadcastAnnouncer::BroadcastAnnouncer(int port) {
  _host = IPAddress(255, 255, 255, 255);
  _port = port;
  _udp.begin(8888);
}

void BroadcastAnnouncer::RFID(char *cardId, int granted) {
  char message[8 + 14];
  memset(message, 0x0, 6 + 14);
  switch ( granted ) {
    case 0 : sprintf(message, "DENY\n%s\n", cardId);
      break;
    case 1 : sprintf(message, "RFID\n%s\n", cardId);
      break;
    case -1 : sprintf(message, "NETERR\n%s\n", cardId);
      break;
  }
  sprintf(message, "RFID\n%s\n", cardId);

  _udp.beginPacket(_host, _port);
  _udp.write(message);
  _udp.endPacket();
}

void BroadcastAnnouncer::START() {
  _udp.beginPacket(_host, _port);
  _udp.write("START\n\n");
  _udp.endPacket();
}

void BroadcastAnnouncer::BELL() {
  _udp.beginPacket(_host, _port);
  _udp.write("BELL\n\n");
  _udp.endPacket();
}

void BroadcastAnnouncer::EXIT() {
  _udp.beginPacket(_host, _port);
  _udp.write("EXIT\n\n");
  _udp.endPacket();
}

void BroadcastAnnouncer::WEDGED() {
  _udp.beginPacket(_host, _port);
  _udp.write("WEDGED\n\n");
  _udp.endPacket();
}

void BroadcastAnnouncer::ALIVE() {
  _udp.beginPacket(_host, _port);
  _udp.write("ALIVE\n\n");
  _udp.endPacket();
}