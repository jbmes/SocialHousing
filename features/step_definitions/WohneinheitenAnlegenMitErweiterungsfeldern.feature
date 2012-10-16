                                                                                                                                 2  
     Funktionalität Anlegen von Wohneinheiten mit Pflichtfeldern und Optionalfeldern
     
     
     Szenario Anlegen und persistieren einer Wohneinheit mit Pflichtfeldern und Optionalfeldern
     
     Angenommen ich rufe die Funktion Wohneinheiten anlegen auf
     
     Wenn ich den Namen "Müller" eingebe
     Und den Vornamen "Hans" eingebe
     Und die Straße/Hausnummer "Mühlhausen 5" eingebe
     Und die Postleitzahl "89834" eingebe
     Und den Ort "Malchin" eingebe
     
     Und im  Optionalfeld Lifter true eingebe
     Und im Optionsfeld  Beamer true eingebe
     Und im Optionsfeld Musikanlage true eingebe
     Und im Optionsfeld DVD Player true eingebe
     Und im Optionsfeld Internet true eingebe
     Und im Optionsfeld Spielplatz true eingebe
     Und im Optionsfeld Tischtennis false eingebe
     Und im Optionsfeld Gruppenraum false eingebe
     
     Und dann "speichern" bestätige 
     
     Dann wird der Eintrag gespeichert und ich erhalte eine Bestätigung für ein erfolgreiches persistieren der Wohneiheit
  
  
  
    #-------------------------------------------------------------------------
    
    Szenario Anlegen und persistieren einer Wohneinheit mit Pflichtfeldern und Optionalfeldern
    
    Angenommen ich rufe die Funktion Wohneinheiten anlegen auf
     
     Wenn ich den Namen "Müller" eingebe
     Und den Vornamen "Hans" eingebe
     Und die Straße/Hausnummer "Mühlhausen 5" eingebe
     Und die Straße "Mühlhausen 5" eingebe
     
     Und im  Optionalfeld Lifter true eingebe
     Und im Optionsfeld  Beamer true eingebe
     Und im Optionsfeld Musikanlage true eingebe
     Und im Optionsfeld DVD Player true eingebe
     Und im Optionsfeld Internet true eingebe
     Und im Optionsfeld Spielplatz true eingebe
     Und im Optionsfeld Tischtennis false eingebe
     Und im Optionsfeld Gruppenraum false eingebe
     
     Und dann "speichern" bestätige 
                                       
     Dann wird der Eintrag nicht gespeichert 
     Und ich erhalte eine Meldung das alle Pflichtfelder eingetragen werden müssen 
     Und ich erhalte einen Hinweis, dass die Postleitzahl fehlt