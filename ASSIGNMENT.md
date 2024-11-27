<div class="box generalbox boxaligncenter" id="yui_3_18_1_1_1732112781823_45">
    <div class="no-overflow" id="yui_3_18_1_1_1732112781823_44">
        <h3 style="text-align: left;" id="yui_3_18_1_1_1732112781823_50"><strong id="yui_3_18_1_1_1732112781823_49">Labb
                1 -&nbsp;Designa en databas för en bokhandel</strong></h3>
        <p dir="ltr" style="text-align: left;"></p>
        <p dir="ltr" style="text-align: left;">Vi vill bygga en databas som kan användas till en bokhandel med flera
            butiker.&nbsp;</p>
        <p dir="ltr" style="text-align: left;" id="yui_3_18_1_1_1732112781823_52">Du får i uppgift att designa den i
            SQL-server med nycklar, relationer,
            integritetsvilkor och ett ER-diagram. Nedan finns några minimikrav på tabeller
            och vyer vi vill ha med, men därutöver vill vi att du lägger till ytterligare ett
            antal tabeller som du tror att vi får användning för. Vi vill även att du populerar
            databasen med lämpliga testdata för demonstrationssyfte.<br></p>
        <p dir="ltr" style="text-align: left;"><br></p>
        <p dir="ltr" style="text-align: left;"><strong>Tabell: ”Författare”&nbsp;</strong></p>
        <p dir="ltr" style="text-align: left;">I tabellen författare vill vi ha en ”Identietskolumn” (identity) kallad
            ID som PK.
            Därutöver vill vi ha kolumnerna: Förnamn, Efternamn och Födelsedatum i
            passande datatyper.&nbsp;</p>
        <p dir="ltr" style="text-align: left;" id="yui_3_18_1_1_1732112781823_51"><strong><br></strong></p>
        <p dir="ltr" style="text-align: left;"><strong>Tabell: ”Böcker”&nbsp;</strong></p>
        <p dir="ltr" style="text-align: left;">I tabellen böcker vill vi ha ISBN13 som primärnyckel med lämpliga
            constraints.
            Utöver det vill vi ha kolumnerna: Titel, Språk, Pris, och Utgivningsdatum av
            passande datatyper. Sist vill vi ha en FK-kolumn ”FörfattareID” som pekar mot
            tabellen ”Författare”. Utöver dessa kolumner får du gärna lägga till egna med
            information som du tycker kan vara bra att lagra om varje bok.&nbsp;</p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><strong>Tabell:
                    ”Butiker”&nbsp;</strong></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">Utöver ett identity-ID så behöver
                tabellen kolumner för att lagra butiksnamn
                samt addressuppgifter.&nbsp;</span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><strong>Tabell:
                    ”LagerSaldo”&nbsp;</strong></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">I denna tabell vill vi ha 3 kolumner:
                ButikID som kopplas mot Butiker, ISBN som
                kopplas mot böcker, samt Antal som säger hur många exemplar det finns av en
                given bok i en viss butik. Som PK vill vi ha en kompositnyckel på kolumnerna
                ButikID och ISBN.</span></p>
        <p dir="ltr" style="text-align: left;"><br></p>
        <p dir="ltr" style="text-align: left;"><strong>Övriga tabeller&nbsp;</strong></p>
        <p dir="ltr" style="text-align: left;">De 4 tabellerna som är specificerade ovan är ett minimum att
            implementera.
            Utöver det ska du dock lägga till ytterligare minst 2 tabeller (minst 4 för VG)
            med information som kan vara lämplig att lagra för bokhandelns syfte, och
            skapa nycklar och relationer mellan dessa.&nbsp;</p>
        <p dir="ltr" style="text-align: left;">Exempel skulle kunna vara information om kunder, ordrar, eller förlag.
            Vad
            behöver man spara för uppgifter i de olika tabellerna? Vad för andra tabeller
            kan vi behöva? Hur kommer de vara relaterade till varandra och våra 4 tidigare
            tabeller? Eventuellt kan vi behöva uppdatera våra 4 tidigare tabeller med
            kolumner för att relatera till de nya.<br></p>
        <p dir="ltr" style="text-align: left;"><br></p>
        <p dir="ltr" style="text-align: left;"><strong>Demodata&nbsp;</strong></p>
        <p dir="ltr" style="text-align: left;">För demonstration vill vi ha minst 3 butiker, 4 författare, och 10
            boktitlar med
            tillhörande saldo för varje butik. I tabeller du själv skapar lägger du till lämpliga testdata för
            att vi ska kunna demonstrera upplägget. Du kan importera data från lämplig källa, eller manuellt skriva in
            data, men tänk på att lägga in realistisk data som du skulle kunna visa för en beställare / kund.<br></p>
        <p dir="ltr" style="text-align: left;"><br></p>
        <p dir="ltr" style="text-align: left;"><strong>Vy: ”TitlarPerFörfattare”&nbsp;</strong></p>
        <p dir="ltr" style="text-align: left;">Vi vill även ha en vy som sammanställer data från tabellerna. Vyn ska
            innehålla
            följande 4 kolumner (med en rad per författare):</p>
        <p dir="ltr" style="text-align: left;">&nbsp;”Namn” – Hela namnet på författaren.&nbsp;<br><span
                style="font-size: 0.9375rem;">”Ålder” – Hur gammal författaren är.
                <br>”Titlar” – Hur många olika titlar vi har i ”Böcker” av den angivna författaren.
                <br>”Lagervärde” – Totala värdet (pris) för författarens böcker i samtliga butiker.&nbsp;</span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">Exempel data: ”select top 1 * from
                TitlarPerFörfattare”</span></p>
        <p dir="ltr" style="text-align: left;"></p>
        <table>
        <tr>
            <th>Namn</th>
            <th>Ålder</th>
            <th>Titlar</th>
            <th>Lagervärde</th>
        </tr>
        <tr>
            <td>Emma Askling</td>
            <td>43 år</td>
            <td>3 st</td>
            <td>4182 kr</td>
        </tr>
        </table>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><strong>SP: ”FlyttaBok”
                    (VG)&nbsp;</strong></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">Vi vill att det ska finnas en stored
                procedure i databasen som på ett
                integritetssäkert sätt flyttar exemplar av böcker från en butik till en annan. Den
                ska ta en parameter med ID på butik som man flyttar från, en parameter med
                ID på butik man flyttar till, ett ISBN, samt en valbar (optional) fjärde parameter
                som tar antal exemplar man vill flytta (default = 1). Vilka hänsyn behöver vi ta
                för dataintegritet?<br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><strong>Flera författare på samma bok
                    (VG)&nbsp;</strong></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">För VG, uppdatera relationen
                författare/böcker från one-many till en manymany relation, så att vi kan lagra böcker med flera
                författare i systemet.<br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><strong>En extra vy
                    (VG)&nbsp;</strong></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">Skapa ytterligare en vy som
                sammanställer för bokhandeln relevant
                information från minst två av de tabeller som du lagt till under rubriken ”Övriga
                tabeller”. För att nå upp till VG-nivå bör vyn innehålla någon form att
                aggregering/gruppering. Man ska även skriva med en kommentar (i koden eller
                vid inlämning) som motiverar hur bokhandeln kan ha nytta av den
                sammanställda vyn.<br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><strong>Övrigt&nbsp;</strong></span>
        </p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">Tänk på att välja lämpliga datatyper
                och sätta integritetsvilkor där du anser det
                lämpligt. Databasen ska innehålla ett ER-diagram som visar relationerna mellan
                alla tabeller på ett tydligt sätt.<br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><strong>Redovisning</strong></span>
        </p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">Uppgiften kan göras självständig
                eller i par. Om ni jobbar i par så ska båda lämna in en kopia på databasen samt skriva i en kommentar på
                ithsdistan vem ni jobbat ihop med. (Detta för att jag enkelt ska kunna rätta och slippa
                dubbelarbete).</span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">Ta en backup av den färdiga databasen
                och döp den till ditt för- och efternamn.
                Exempel: ”FredrikJohansson.bak”. Ladda upp filen för inlämning på ITHSdistans.<br></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;"><br></span></p>
        <p dir="ltr" style="text-align: left;"><span
                style="font-size: 0.9375rem;"><strong>Betygskriterier&nbsp;</strong></span></p>
        <p dir="ltr" style="text-align: left;"><span style="font-size: 0.9375rem;">För godkänt krävs:&nbsp;</span></p>
        <p dir="ltr" style="text-align: left;"></p>
        <ul>
            <li><span style="font-size: 0.9375rem;">Databasen ska innehålla minst 6 (4+2) tabeller relevanta för
                    bokhandeln.&nbsp;</span></li>
            <li><span style="font-size: 0.9375rem;">Tabeller ska vara normaliserade enligt 3NF.&nbsp;</span></li>
            <li><span style="font-size: 0.9375rem;">Alla relationer ska ha PK och FK nycklar, samt relationsvilkor som
                    förhindrar FK´s att peka på nycklar som inte existerar.</span></li>
            <li><span style="font-size: 0.9375rem;">Kolumner ska använda lämpliga datatyper för den typ av information
                    som ska lagras.</span></li>
            <li><span style="font-size: 0.9375rem;">Databasen ska innehålla ett ER-diagram som visar relationerna mellan
                    alla tabeller på ett tydligt sätt.</span></li>
            <li><span style="font-size: 0.9375rem;">Databasen ska innehålla lämpliga testdata för demonstration.</span>
            </li>
            <li><span style="font-size: 0.9375rem;">Databasen ska innehålla vyn ”TitlarPerFörfattare” enligt
                    specifikation.&nbsp;</span></li>
        </ul>
        <p>För väl godkänt krävs även:</p>
        <p></p>
        <ul id="yui_3_18_1_1_1732112781823_43">
            <li>Databasen ska innehålla minst 8 (4+4) tabeller relevanta för bokhandeln.
                (Det ska vara minst 8 entiteter. Junktion tables räknas ej.)</li>
            <li>Databasen är gjord så böcker kan ha flera författare.&nbsp;</li>
            <li>Databasen ska innehålla SP ”FlyttaBok” enligt specifikation.</li>
            <li id="yui_3_18_1_1_1732112781823_47">Databasen har ytterligare en vy som sammanställer för bokhandeln
                relevant information från minst två av de tabeller som du lagt till under
                rubriken ”Övriga tabeller”. Motivera hur bokhandeln kan ha nytta av den
                sammanställda vyn.</li>
            <li>Databasdesign och demodata uppnår en viss nivå av professionalitet. Är detta något vi kan visa för en
                kund?</li>
        </ul>
        <p></p>
        <h3><strong><br></strong></h3>
        <h3><strong>Inlämning sker före deadline.</strong></h3><br>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p></p>
        <p dir="ltr" style="text-align: left;"></p>
        <p dir="ltr" style="text-align: left;"></p>
        <p dir="ltr" style="text-align: left;"></p>
        <p dir="ltr" style="text-align: left;"></p>
        <p dir="ltr" style="text-align: left;"></p>
        <p dir="ltr" style="text-align: left;"></p>
        <p dir="ltr" style="text-align: left;"></p>
    </div>
</div>