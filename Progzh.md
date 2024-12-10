# Software engineering Zh 3

Az adatbázisom egy szabadulószoba foglalási rendszert modellez, amely lehetővé teszi a szobák, játékosok és foglalások kezelését. Az alábbi fő elemeket tartalmazza:

-   **Szobák**: Az adatbázis tárolja a szabadulószobák alapvető adatait, például a nevüket, témájukat, nehézségi szintjüket, maximális játékoslétszámukat és egy kép forrását. Ez segít a játékosoknak kiválasztani a számukra megfelelő szobát.
    
-   **Játékosok**: A rendszer nyilvántartja a játékosok nevét, életkorát és elérhetőségét (e-mail címét). Az e-mail címek egyediek, ami biztosítja, hogy minden játékos azonosítható legyen.
    
-   **Foglalások**: A foglalási adatok összekapcsolják a szobákat és a játékosokat. Egy foglalás tartalmazza a foglalt szoba és a részt vevő játékos azonosítóját, a foglalás időpontját, valamint annak állapotát (aktív, lemondott vagy teljesített). 

# Adatbázis forrása

Maga az adatbázis ötlete egycsaládi hobbiból jött, hisz nagyon sokat járunk mostanság szabadulószobázni. Az adatbázis szerkezetét magam írtam korábbi tudásomból az adatokat pedig ChatGPT-vel generáltam. Miután legeneráltam egy Azure adatbázisba feltöltöttem.

*Scaffold-DbContext „Data Source=szabadulo.database.windows.net;Initial Catalog=Szabaduloszoba;User ID=Hallgato;Password=Password123” Microsoft.EntityFrameworkCore.SqlServer -OutputDir Mappa -Context context_Szabaduloszoba*

## Pontozás

 1. Adatbázis **(5p max)**

`3x1p` Az alkalmazásban használt táblánként pont
 
    - Az adatbázisom 3 táblából épül fel és mind a 3-at használom `3p`
   
 `1x1p` Az adatbázis tartalmaz Constraint-eket (min 2)
	   
	 - Az adatbázisom tartalmaz Constraint-eket `1p`

`1x1p` Az adatbázis adatainak forrásmegjelölése értsd: miből készült és hogyan
	   
	 - Fentebb említettem, hogy hogyan készítettem `1p`
	
`1x2p` Az adatbázis saját Azure SQL szerveren van
	   
	 - Az adatbázisom fent van Azure-on `2p`

 2. Windows Forms Application (**20p**)
 
`1x2p` Az alkalmazásból a **kilépés csak megerősítő kérdés után** lehetséges. 
		
	 - Megerősítő kérdés szükséges a kilépéshez `2p`
	 
`3x2p` Olyan alkalmazás **elrendezés, melyben gombok lenyomására UserControl-ok kerülnek elhelyezésre egy Panel vezérlőben**
		
	 - Egy darab UserControlt használok `2p`

`1x2p` **Anchorok alkalmazása**: az alkalmazás egészében meg van oldva, hogy az ablak átméretezésekor ki legyen használva a rendelkezésre álló terület.
		
	 - A UserControlnál és a Panelnél használom `2p`

`1x2p` Adatok  megjelenítése Listboxban
		
	 - A Szoba neveit megjelenítettem listboxban `2p`

`2x2p` Ha az adatok tetszőleges módszerrel, pl. `TextBox`-on keresztül szűrhetőek.
		
	 - Felette textboxban szűrhetőek az adatok `2p`

`1x2p` Adatok  megjelenítése Datagridviewban 
		
	 - A Foglalás tábla adatait megjelenítettem datagridviewban `2p`
	
 `1x2p` Ha a tábla idegen kulcsot is tartalmaz, melynek megjelenítése `DataGridViewComboBoxColumnstrong text`-on keresztül történik.
 
	 - A szoba tábla id mezőjénél alkazmaztam plusz a játékosidnál, hogy ne az id jelenjen meg, hanem a név `2p`

`1x2p` Ha a tábla adatforrása saját osztály.

	 - MegjelenitoDTO osztályt jelenítem, meg a datagridviewban. `2p`

`1x2p` Sikeres törlés
		
		- Lehet szobát törölni egy gomb lenyomásával. `2p`

`1x2p` Megerősítéshez kötött törlés

		- Törlés előtt az alkalmazás rákérdez. `2p`

3. ASP .NET (**15p**)

`1x2p`  `program.cs`  beállítása  `wwwroot`  mappában tárolt statikus tartalmak megosztására

	- Létrehoztam a wwwroot mappát `2p`
	
`1x3p`  Teljes SQL tábla adatainak szolgáltatása API végponton keresztül

	- A szobák tábla elérhető `3p`

`2x2p`  SQL tábla egy választható rekordjának szolgáltatása API végponton keresztül

	- A szobák tábla egy rekordja lekérhető `2p`
	
`1x3p`  SQL tábla egy választható rekordjának törlése

	- A szobák tábla egy rekordja törölhető `3p`

`1x5p`  Új rekord felvétele  `HttpPost`  metóduson keresztül SQL táblába

	- Fel lehet venni egy új szobát `5p`

4. Extra (**1p**)

`2x1p`  `Scaffold-DbContext`  használata (ajándék)

	- Fentre betettem a kódot `1p`


# Összesen 41 pont :D 
