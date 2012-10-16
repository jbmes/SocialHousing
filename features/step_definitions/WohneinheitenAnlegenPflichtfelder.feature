  
     Funktionalität Anlegen von Wohneinheiten mit Pflichtfeldern
     
     
     Szenario Anlegen und persistieren einer Wohneinheit mit Pflichtfeldern
     
     Angenommen ich rufe die Funktion Wohneinheiten anlegen auf
     
     Wenn ich den Namen "Müller" eingebe
     Und den Vornamen "Hans" eingebe
     Und die Straße/Hausnummer "Mühlhausen 5" eingebe
     Und die Postleitzahl "89834" eingebe
     Und den Ort "Malchin" eingebe
     Und dann "speichern" bestätige 
     
     Dann wird der Eintrag gespeichert und ich erhalte eine Bestätigung für ein erfolgreiches persistieren der Wohneiheit
  
  
  
    #-------------------------------------------------------------------------
    
     Szenario Anlegen und persistieren einer Wohneinheit mit Pflichtfeldern
    
    Angenommen ich rufe die Funktion Wohneinheiten anlegen auf
     
     Wenn ich den Namen "Müller" eingebe
     Und den Vornamen "Hans" eingebe
     Und die Straße/Hausnummer "Mühlhausen 5" eingebe
     Und die Straße "Mühlhausen 5" eingebe
     Und dann "speichern" bestätige 
     
     Dann wird der Eintrag nicht gespeichert 
     Und ich erhalte eine Meldung das alle Pflichtfelder eingetragen werden müssen 
     Und ich erhalte einen Hinweis, dass die Postleitzahl fehlt