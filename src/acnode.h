#ifndef _ACNODE_H
#define _ACNODE_H

#include <Ethernet.h>
#include <syslog.h>
#include "settings.h"
#include "card.h"
#include "watchdog.h"
#include "cache.h"
#include "every.h"
#include "rgb.h"
#include "role.h"
#include "tool.h"
#include "microrl.h"
#include "network.h"
#include "button.h"

// put these things here so more things can use it.
extern settings acsettings;
extern EthernetClient client;
extern Syslog syslog;
extern boolean network;
extern Watchdog wdog;
extern Cache *cache;

// XXX should be elsewhere
// the base address (begining of 3rd block)
#define USERBASE (128)


/*
      Serial.print(__FILE__);
      Serial.print(": ");
      Serial.println( __LINE__);

*/

#define TRACE Serial.print(__FILE__); Serial.print(": "); Serial.println( __LINE__);

class ACNode : public Role {
public:
  ACNode(PN532 &, RGB &, Tool &, Button &b, microrl_t *);
  void run();
protected:
  void feed_incoming_character();
  bool card_present();
  bool card_has_access();
  void activate();
  void deactivate();
  void housekeeping();
  Card readcard();
private:
  RGB &rgb;
  Tool &tool;
  Button &button;

  microrl_t *prl;
  Card card_on_reader;
};

#endif
