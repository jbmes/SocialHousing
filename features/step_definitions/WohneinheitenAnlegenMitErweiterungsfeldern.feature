                                                                                                                                 2  
     Funktionalit�t Anlegen von Wohneinheiten mit Pflichtfeldern und Optionalfeldern
     
     
     Szenario Anlegen und persistieren einer Wohneinheit mit Pflichtfeldern und Optionalfeldern
     
     Angenommen ich rufe die Funktion Wohneinheiten anlegen auf
     
     Wenn ich den Namen "M�ller" eingebe
     Und den Vornamen "Hans" eingebe
     Und die Stra�e/Hausnummer "M�hlhausen 5" eingebe
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
     
     Und dann "speichern" best�tige 
     
     Dann wird der Eintrag gespeichert und ich erhalte eine Best�tigung f�r ein erfolgreiches persistieren der Wohneiheit
  
  
  
    #-------------------------------------------------------------------------
    
    Szenario Anlegen und persistieren einer Wohneinheit mit Pflichtfeldern und Optionalfeldern
    
    Angenommen ich rufe die Funktion Wohneinheiten anlegen auf
     
     Wenn ich den Namen "M�ller" eingebe
     Und den Vornamen "Hans" eingebe
     Und die Stra�e/Hausnummer "M�hlhausen 5" eingebe
     Und die Stra�e "M�hlhausen 5" eingebe
     
     Und im  Optionalfeld Lifter true eingebe
     Und im Optionsfeld  Beamer true eingebe
     Und im Optionsfeld Musikanlage true eingebe
     Und im Optionsfeld DVD Player true eingebe
     Und im Optionsfeld Internet true eingebe
     Und im Optionsfeld Spielplatz true eingebe
     Und im Optionsfeld Tischtennis false eingebe
     Und im Optionsfeld Gruppenraum false eingebe
     
     Und dann "speichern" best�tige 
                                       
     Dann wird der Eintrag nicht gespeichert 
     Und ich erhalte eine Meldung das alle Pflichtfelder eingetragen werden m�ssen 
     Und ich erhalte einen Hinweis, dass die Postleitzahl fehlt