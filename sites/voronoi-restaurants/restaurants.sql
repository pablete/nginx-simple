SELECT RID, LATITUDE, LONGITUDE, RNAME, 'opentable', 'DA3743', 'http://www.opentable.com/restaurant/profile/' || RID FROM DM_RESTAURANT WHERE RESTSTATEID = 1 AND METROAREAID != 58;
