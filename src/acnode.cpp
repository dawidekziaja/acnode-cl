#include "acnode.h"

ACNode::ACNode(PN532 &n, RGB &r, Tool &t, Button &b, microrl_t *p) :
  Role(n),
  rgb(r),
  tool(t),
  button(b),
  prl(p)
{
}

void ACNode::feed_incoming_character() {
  if (Serial.available()) {
    char c;
    c = Serial.read();
    microrl_insert_char (prl, c);
  }
}

bool ACNode::card_present() {
  card_on_reader = readcard();
  return card_on_reader.is_valid();
}

bool ACNode::card_has_access() {
  int status = networking::querycard(card_on_reader);
  switch (status) {
    case 2: // maintainer
    case 1: // user
      Serial.println("Card has access");
      return true;
    case 0:
      Serial.println("Card known, but has no access");
      return false;
    case -1:
      Serial.println("Card unknown");
      return false;
    default:
      Serial.println("A networking error has occurred.");
      return false;
  }
}

void ACNode::activate() {
  rgb.solid(GREEN);
  tool.on(card_on_reader);
}

void ACNode::deactivate() {
  rgb.solid(BLUE);
  tool.off();
}

void ACNode::housekeeping() {
  wdog.feed();
  rgb.run();
  feed_incoming_character();
  tool.poll();
}

void ACNode::run() {
  housekeeping();
  if (card_present()) {
    Serial.print("Card on reader: ");
    card_on_reader.dump();
    if (card_has_access()) {
      activate();
    } else {
      rgb.solid(RED);
    }
  } else {
    deactivate();
  }
}

Card ACNode::readcard()
{
  //  pnhsu.intr_check();

  boolean success;
  uint8_t uid[] = { 0, 0, 0, 0, 0, 0, 0 };  // Buffer to store the returned UID
  uint8_t uidLength;                        // Length of the UID (4 or 7 bytes depending on ISO14443A card type)

  // Wait for an ISO14443A type cards (Mifare, etc.).  When one is found
  // 'uid' will be populated with the UID, and uidLength will indicate
  // if the uid is 4 bytes (Mifare Classic) or 7 bytes (Mifare Ultralight)
  success = nfc.readPassiveTargetID(PN532_MIFARE_ISO14443A, &uid[0], &uidLength);

  nfc.powerDown();

  if (!success)
  {
    return Card();
  }

  switch (uidLength) {
    case 4:
      return Card(uid, 0, 0, 0);
      break;
    case 7:
      return Card(uid, 1, 0, 0);
      break;
    default:
      Serial.print("Odd card length?: ");
      Serial.println(uidLength);
      break;
  }
  return Card();
}