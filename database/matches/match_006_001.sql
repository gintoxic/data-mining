﻿select origin as origin_iata, destinat as dest_iata, airline as airline_iata, fltno as flightnumber, to_timestamp(rdepdttim,'DD.MM.YYYY hh24:min')::timestamp without time zone as dep_sched_local, reckey, seqno from cd_006_01
