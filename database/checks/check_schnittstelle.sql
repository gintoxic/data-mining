﻿select 
to_char(flight_id,'FM00000000') as v_id,
to_char(current_timestamp, 'DD.MM.YYYY HH12:MI:SS') as erst_datum,
'A' as V_Typ,
airline_iata||' '||flightnumber as flugnummer, 
airline_icao as airline, 
origin_city as abflugort, 
dest_city as zielort, 

to_char(dep_sched_local, 'DD.MM.YYYY HH12:MI:SS')  as startflug_soll, 
to_char(dep_act_local, 'DD.MM.YYYY HH12:MI:SS') as startflug_ist,
dep_tz as Z_AB,
to_char(arr_sched_local, 'DD.MM.YYYY HH12:MI:SS')  as anflug_soll, 
to_char(arr_act_local, 'DD.MM.YYYY HH12:MI:SS') as anflug_ist,
arr_tz as Z_AN, 
case when type_dist=1 then 'K'
when type_dist=2 then 'M'
when type_dist=3 then 'L' end as Typ_K_M_L, 
case when cancelled is not null then 'C' else '2' end as Vers_Typ,
case when type_dist=1 then 250
when type_dist=2 then 400
when type_dist=3 then 600 end as Ersatz, 
987654321 as Ticket_Nr,
'EUR' as Währung, 
100 as Tick_Preis,
10 as Tick_Geb, 
7 as Tick_ST_7,
19 as Tick_ST_19, 
'Testfirma' || row_number() over (partition by 1) as U_Name_1, 
'Test' as U_Name_2,
'Teststr.' as U_Str,
'12345' as U_Plz,
'Testort' as U_Ort,
'Herr Test' as U_ASP,
'001 234567' as U_Tel, 
'001 234568' as U_Fax,
'test@testfirma.de' as U_Email,
'Testbank' as U_Bank,
'TESTBIC' as U_BIC, 
'DE111222330000112233' as U_IBAN,
'123456789012' as U_BLZ,
'6789012' as U_Konto,
'Testing' as R_Vorname, 
'Tester' as R_Name, 
'Testing Tester' as R_ASP,
'001 234569' as R_Tel, 
'001 234560' as R_Fax,
'test@testkunde.de' as R_Email,
'001 1234 1234567' as R_Mphone,	
'Andere Testbank' as R_Bank,
'ATESTBI' as R_BIC,
'DE1234567890123456789013' as R_IBAN,
'123456789012' as R_BLZ	,
'23456789013' as R_Konto,
case when random()<=0.4 then 'U' else 'A' end as Anspruch,
'1234' as Berater
 from v_flights f