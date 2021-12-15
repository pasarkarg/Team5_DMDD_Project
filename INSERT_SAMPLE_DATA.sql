set SERVEROUTPUT on
set define off;

drop sequence CT_seq;
drop sequence FT_seq;
drop sequence MT_seq;
drop sequence ST_seq;
drop sequence feedback_seq;

CREATE SEQUENCE ST_SEQ
    INCREMENT BY 1
    START WITH 10000000
    MINVALUE 10000000
    MAXVALUE 19999999
    CACHE 20;


CREATE SEQUENCE MT_SEQ
    INCREMENT BY 1
    START WITH 20000000
    MINVALUE 20000000
    MAXVALUE 29999999
    CACHE 20;
    
CREATE SEQUENCE CT_SEQ
    INCREMENT BY 1
    START WITH 30000000
    MINVALUE 30000000
    MAXVALUE 39999999
    CACHE 20;
    
CREATE SEQUENCE FT_SEQ
    INCREMENT BY 1
    START WITH 40000000
    MINVALUE 40000000
    MAXVALUE 49999999
    CACHE 20;
    
CREATE SEQUENCE FEEDBACK_SEQ
    INCREMENT BY 1
    START WITH 1
    MINVALUE 1
    MAXVALUE 10000000
    CACHE 20;
BEGIN



insert1.insert_customer(11489 , 'Megan Joseph' , '19-Jun-1980' , 41, 2347905511 , 92133 , 'New York' ,'41, Melvin street' , '22-FEB-2020' , 'Knight@1' , 'Safforn' , 'Balling');
insert1.insert_customer(34749 , 'Wane Fox' , '11-NOV-1992' , 31, 2347865588 , 37553 , 'FLORIDA' , '22, Park Street' , '17-MAY-2019' , 'Toyyy777' , 'Sanban*8' , 'Yussss');
insert1.insert_customer(55631 , 'Tejas Bawankar' , '11-JUL-1994' , 27, 8983122563 , 44043, 'Texas', 'Pandey layout' , '09-NOV-2019' , 'Aditi@04' , 'Mastaa' , 'Chobugomu');
insert1.insert_customer(76231 , 'Siddharth Savant' , '19-JUL-1996' , 25, 9559240344 , 89645, 'California' , '55, South Nagar' , '26-SEP-2017' , 'Cloud@04' , 'Funnyman' , 'Rowbow2');
insert1.insert_customer(90214 , 'Vaibhavi T' , '09-Oct-1996' , 25, 8149935345 , 77564 , 'Texas' ,'71, Effco Way' , '14-OCT-2018' , 'Space@05' , 'Cutiepie' , 'Unicorn');
insert1.insert_customer(87452 , 'Jack Columbus' , '01-jan-1988' , 32, 8149976541 , 72123 , 'Washington', '89, Treat Streat' , '19-Jul-2021' , 'yahoo&5' , 'Lassi' , 'Beatit');
insert1.insert_customer(11075 , 'Will Jackman' , '23-Sep-90' , 32, 8149976541 , 72123 , 'Mason' ,'89, Treat Streat' , '19-Nov-2021' , 'Jahoo&5' , 'Lassi' , 'Beatit1');
insert1.insert_customer(11070 , 'Ted Artist' , '23-Mar-95' , 32, 8149976541 , 72123 , 'Jason' ,'90, Cute Streat' , '19-Aug-2021' , 'Kahoo&5' , 'Jassi' , 'Beatit2');
insert1.insert_customer(87454 , 'TOAD GUPTA' , '23-Mar-00' , 32, 8149976541 , 72123 , 'Fall City' , '101, Acute Streat' , '19-Jul-2021' , 'Lahoo&5' , 'Fassi' , 'Beatit3');
insert1.insert_customer(66751 , 'HOLLY WITTON' , '11-Nov-90' , 32, 8149976541 , 72123 , 'Snow City' , '4, John Streat' , '19-Jul-2021' , 'Mahoo&5' , 'Gassi' , 'Beatit4');
insert1.insert_customer(11489 , 'Megan Joseph' , '19-Jun-80' , 41, 2347905511 , 72123 , 'Manchester City' , '52, False Streat' , '19-Jul-2021' , 'Nahoo&5' , 'Lassi' , 'Beatit5');
insert1.insert_customer (31000,'Anne Maria','02-Apr-1980',41,8576870012,02130,'Arizona','75 Tent Street','13-Jan-2021','Tina@123','tiger','pet');
insert1.insert_customer(31001,'Ted Mosby','03-Jun-1990',32,8576871655,41115,'New Jersey','34 Tremont Street','7-Aug-2019','Kitc@345','pune','mumbai');
insert1.insert_customer(31002,'Bill Gates','04-Sep-1950',71,8547865532,02137,'New Mexico','94 Las Palmas RicoTower','05-Feb-2020','RIYA@me','travel','read');
insert1.insert_customer(31003,'Hillary Clinton','05-Sep-1998',23,2347865539,67139,'Florida','51 Venus Ave','21-Jul-2017','Loik@hjk','love','friends');
insert1.insert_customer (31004,'Gauri Pasarkar','10-Dec-1991',31,2347985511,92135,'New York','41 Melvin street','21-Feb-2020','ujki@wer','this','that');
insert1.insert_customer(31005,'Sneha Chavan','10-Oct-1998',23,2347865578,37553,'Florida','22 Park Street','09-May-2019','Toyyy779','meera','mamacita');
insert1.insert_customer (31006,'Ram Wajpe','05-Dec-2004',17,8983122565,74047,'Texas','71 Shivneri nagar','25-Nov-2020','Meer@tuu','school','college');
insert1.insert_customer(31007,'Herika Koshti','06-Dec-1994',27,9759240344,86648,'California','58 North Nagar','28-Jun-2017','Cloud@04','florida','texas');
insert1.insert_customer (31008,'Priyanka Singh','01-Feb-1965',56,7149935345,77597,'Texas','75 Alpha Street','03-Oct-2018','444@hjkk','america','india');
insert1.insert_customer (31009,'Aarti Mehta','02-Mar-1977',44,8169976541,72233,'Washington','101 Harbour point','08-Jul-2021','Tvj@7899','mountain','tesla');
insert1.insert_customer (13459,'Samual Adams','10-NOV-1993',28,6173456712,02120,'Massachussets','21, Barclay avenue','4-Jul-18','sam11','ponyback','sweater');
insert1.insert_customer (43678,'Mary J','5-Dec-1990',31,8571234560,23412,'California','34, saint cakestreet ','16-Aug-17','23fgh','afgan','chair');
insert1.insert_customer (13478,'Mihir Khanna','3-Jan-1985',36,7194567120,21001,'New York','45, baker street','1-Oct-17','yuper11','lamp','pen');
insert1.insert_customer (45912,'Peter Parking','4-Feb-1980',41,6172347098,21304,'New York','45, marker corner street','12-Sep-13','walk123','switch','bottle');
insert1.insert_customer (34157,'Manu Singh','27-Mar-1989',32,6178907222,51111,'Texas','67, yard hall street','22-Jan-13','456sd','sweater','lamp');
insert1.insert_customer(14591,'Divya Sen','15-May-1999',22,3478902450,21334,'Texas','90,alps way','15-Feb-15','assdf','wall','spoon');
insert1.insert_customer(23567,'Josie Blue','5-Dec-1990',31,8572341681,56001,'Virginia','567, wall mount road','12-Feb-18','josie12','garden','flag');
insert1.insert_customer(72012,'Hose mathew','15-Jul-1992',29,6172345098,21333,'Washington','102, walking bistro way','18-Jun-15','san001','button','floor');
insert1.insert_customer (20367,'Carrie Andres','24-May-1977',44,9071267000,60023,'Alaska','71,treat pathway ','16-Jan-20','laptop12','mouse','chain');
insert1.insert_customer (11123,'Andrew Hanson','16-Jul-1950',71,9731230096,32201,'New Jersey','111, baker street ','10-Feb-14','gage456','mat','chakna');
insert1.insert_customer (21000, 'Cristiano Ronaldo','05-FEB-1985',36,8578576969,21209,'Texas',' 34 Tremont Street','18-DEC-17', 'Cris123','striker','penalty');
insert1.insert_customer(21001,'Kevin Owens','09-MAR-1987',34,9282920039,23099,'Massachussets','69, Mountain Street','29-MAR-16','Owns123','wall','lamp');
insert1.insert_customer(21002, 'Kathy Mclerens', '09-APR-1987',34,2287882920,28892,'California','87, Google Street','30-MAR-16','kijuh','Laptop','Apple');
insert1.insert_customer (21003, 'Hanny Osas','09-MAY-1998',23,2288292883,23829,'Illinois','98, Kreson pathway','28-FEB-12','Hanny167','Mango','Sauce');
insert1.insert_customer (21004, 'Orland Sequal','10-OCT-1996',23,2663782883,21201,'Arizona','98, Amazon street', '29-MAY-20','haha981','Sun', 'Desert');
insert1.insert_customer (21005,'Lionel Messi','10-OCT-1998',23,8837728248,98221,'Massachussets','34,Alphosus Street', '31-JAN-21','CrisNo2','GOAT','AlsoBest');
insert1.insert_customer (21006,'Benjamin Cena','12-MAY-1974',50,3546738264,12131,'Washington','98, Hungtington Ave','23-SEP-16','hbb82','Feed','Instagram');
insert1.insert_customer (21007,'Joseph Orton','12-JUN-1974',34,9917717713,31312,'Maryland','76, Solapur','15-SEP-19','nk82','Food','Pav Bhaji');
insert1.insert_customer (21008,'Kane Williamson','03-JAN-1967',54,1772123781,13535,'Florida','87, The rock park','17-AUG-14','mbqi','Misal','Idli');
insert1.insert_customer (21009,'MS Dhoni','03-FEB-1967',28,2663772899,35666,'North Carolina','34, Dou Lane','09-OCT-19','nns','Puranpoli','Dosa');


--------------------------------------------MUTUAL FUND DETAILS------------------------------------------------
insert1.insert_mutual_fund_details('MU1002' , 'L&T Midcap-Growth' , 'Medium' , 100.1);
insert1.insert_mutual_fund_details('MU1003' , 'Principal Emerging Bluechip Fund-Growth' , 'Low' , 181.2);
insert1.insert_mutual_fund_details('MU1004' , 'Franklin Build India Fund-Growth' , 'High' , 64.01);
insert1.insert_mutual_fund_details('MU1005' , 'IDFC Infrastructure Fund-Growth' , 'Medium' , 50);
insert1.insert_mutual_fund_details('MU1006' , 'Aditya Birla Sun Life Small Cap Fund' , 'High' , 105.5);
insert1.insert_mutual_fund_details('MU1007' , 'SBI Small Cap Fund' , 'Medium' , 120.3);
insert1.insert_mutual_fund_details('MU1008' , 'IDFC Tax Advantage (ELSS) Fund' , 'Low' , 68.01);
insert1.insert_mutual_fund_details('MU1009' , 'L&T Emerging Businesses Fund' , 'Low' , 70.76);
insert1.insert_mutual_fund_details('MU1010' , 'DSP BlackRock Natural Fund' , 'Medium' , 130.7);
insert1.insert_mutual_fund_details('MU1011' , 'ICICI Prudential Midcap 150 ETF' , 'High' , 117.4);
insert1.insert_mutual_fund_details('MU1012' , 'Quant Small Cap Fund' , 'Low' , 84.32);
insert1.insert_mutual_fund_details('MU1013' , 'Tata Digital India Fund' , 'High' , 175);
insert1.insert_mutual_fund_details('MU1014' , 'Sundaram Select Micro Cap' , 'Medium' , 128.4);
insert1.insert_mutual_fund_details('MU1015' , 'Kotak Small Cap Fund' , 'Low' , 54.02);


--------------------------------------------MUTUAL FUND TRANSACTION-----------------------------------------------

insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1002',	31000,'20-Jan-21',30,99.12,'B',99.12 );
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1002',	31000,'21-Jan-21',20,100,'B', 100);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1002',	31000,'21-Jan-21',20,100,'B', 100);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1002',	31000,'15-Feb-21',50,97.12,'S' ,97.12);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1002',	31000,'24-Mar-21',20,96.67,'S', 96.67);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1003',	31001,'12-Feb-21',10,179.65,'B',179.65);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1003',	31001,'15-Mar-21',15,178,'B', 178);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1003',	31001,'25-Apr-20',28,170.9,'B', 170.9);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1003',	31001,'1-May-21',13,182.13,'S', 182.13);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1003',	31001,'5-Jul-21',40,183.9,'S', 183.9);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1004',	31002,'15-Feb-21',102,	60.1,'B', 60.1);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1004',	31002,'25-Feb-21',102,	65.02,'S', 65.02);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1004',	31002,'18-Jan-21',70,	63.12,'B', 63.12);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1004',	31002,'11-Apr-21',70,	62.3,'S', 62.3);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1005',	31002,'2-Mar-21',800,	45.12,'B', 45.12);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1005',	31002,'5-May-21',100,	46.12,'B', 46.12);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1005',	31002,'21-Jun-21',304,	48.3,'B', 48.3);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1005',	31002,'3-Apr-21',900,	53.55,'S', 53.55);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1005',	31002,'14-May-21',304,	58,'S', 58);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1006',	31003,'20-Apr-21',55,	101.34,'B', 101.34);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1006',	31003,'17-Sep-21',55,	106.12,'S', 106.12);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1006',	31003,'10-Mar-21',105,	95.12,'B', 95.12);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1006',	31003,'1-Dec-21',105,	107.67,'S', 107.67);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1006',	31003,'22-Feb-21',203,	98.32,'B', 98.32);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1006',	31003,'18-Oct-21',203,	108.21,'S', 108.21);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1007',	31004,'10-May-21',400,	119.16,'B', 119.16);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1007',	31004,'29-Jul-21',400,	139.34,'S', 139.34);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1009',	31004,'16-Mar-21',205,	65.43,'B', 65.43);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1009',	31004,'18-Jul-21',303,	59.76,'B', 59.76);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1009',	31004,'26-May-21',508,	87.63,'S', 87.63);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1014',	31004,'13-Feb-21',16,	122.1,'B', 122.1);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1014',	31004,'18-Nov-21',30,	124.14,'B', 124.14);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1014',	31004,'14-Oct-21',58,	127.09,'B', 127.09);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1014',	31004,'18-Mar-21',16,	145.16,'S', 145.16);
insert1.insert_mutual_fund_transactions (MT_SEQ.nextval,'MU1014',	31004,'9-Dec-21',88,150.14,'S', 150.14);

--------------------------------------------STOCK DETAILS----------------------------------------------------
insert1.insert_stock_detail('STOCK001', 'Apple', 'AAPL', 'Technology', 164.94);
insert1.insert_stock_detail('STOCK002', 'Tesla' ,'TSLA', 'EV' ,1160.3);
insert1.insert_stock_detail('STOCK003', 'Moderna', 'MRNA','Pharma', 271.4);
insert1.insert_stock_detail('STOCK004', 'Alphabet', 'GOOGL','Technology', 2922.4);
insert1.insert_stock_detail('STOCK005', 'Amazon' , 'AMZN', 'E-commerce', 3580.41);
insert1.insert_stock_detail('STOCK006', 'Biogen', 'BIIB', 'Pharma', 250.13);
insert1.insert_stock_detail('STOCK007', 'T-Mobile' ,'TMUS', 'Telecom', 114.48);
insert1.insert_stock_detail('STOCK008', 'ElecArts' , 'EA', 'Electronic', 126.25);
insert1.insert_stock_detail('STOCK009', 'Intel' ,'INTC','Technology', 50);
insert1.insert_stock_detail('STOCK010', 'Nvidia', 'NVDA', 'Technology', 326.24);
insert1.insert_stock_detail('STOCK011', 'Dell', 'DELL', 'Technology',57.3);
insert1.insert_stock_detail('STOCK012', 'HP', 'HPQ', 'Technology', 35.44);
insert1.insert_stock_detail('STOCK013', 'Pfizer', 'PFE', 'Pharma', 50.89);
insert1.insert_stock_detail('STOCK014', 'JPMC', 'JPM', 'Banking', 116.89);
insert1.insert_stock_detail('STOCK015', 'Shopify', 'SHOP', 'EComm', 1628.67);
insert1.insert_stock_detail('STOCK016', 'Facebook', 'FB', 'Technology', 341.06);
insert1.insert_stock_detail('STOCK017', 'Adobe', 'ADBE', 'Technology', 668.32);
insert1.insert_stock_detail('STOCK018', 'NextEra', 'NEE', 'Energy', 87.32);
insert1.insert_stock_detail('STOCK019', 'FirstSolar', 'FSLR', 'Energy', 108.28);
insert1.insert_stock_detail('STOCK020', 'JNJ', 'JNJ', 'Pharma', 160.24);

-------------------------------STOCK_TRANSACTIONS---------------------------------------------------------------------------------

insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK001', 21000,    '20-Jan-21',100,170.89,'B','NYSE', 170.89);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK001', 21000,    '21-NOV-21',100,172.76,'S','NYSE', 172.76);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK002', 21000,    '20-JUN-21',130,1160.66,'B','NYSE', 1160.66);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK002', 21000,    '21-SEP-21',130,1162.44,'S','NYSE', 1162.44);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK003', 21001,    '21-FEB-21',60, 275.44, 'B','NYSE', 275.44);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK003', 21001,    '23-AUG-21',60, 274.66, 'S',    'NYSE', 274.66);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK004', 21001,    '22-MAY-21',20, 2922.44,'B',    'NYSE', 2922.44);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK004', 21001,    '11-AUG-21',20, 2930.44,'S',    'NYSE', 2930.44);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK005', 21002,    '20-FEB-21',30, 3480.65,'B',    'NYSE', 3480.65);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK005', 21002,    '20-SEP-21',30, 3580.44,'S',    'NYSE', 3580.44);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK006', 21002,    '15-SEP-21',75, 260.23, 'B',    'NYSE', 260.23);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK006', 21002,    '15-OCT-21',75, 245.56, 'S',    'NYSE', 245.56);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK007', 21003,    '29-APR-21',10, 110.67, 'B',    'NYSE', 110.67);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK007', 21003,    '27-MAY-21',10, 114.32, 'S',    'NYSE', 114.32);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK008', 21003,    '02-JUL-21',500,125.67, 'B',    'NASDAQ', 125.67);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK008', 21003,    '27-AUG-21',500,127.66, 'S',    'NASDAQ', 127.66);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK009', 21004,    '21-SEP-21',37, 49.32,  'B',    'NASDAQ', 49.32);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK009', 21004,    '18-MAY-21',37, 48.34,  'S',    'NASDAQ', 48.34);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK010', 21004,    '15-SEP-21',50, 320.56, 'B',    'NASDAQ', 320.56);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK010', 21004,    '16-OCT-21',25, 315.32, 'B',    'NASDAQ', 315.32);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK010', 21004,    '21-NOV-21',75, 322.56, 'S',    'NASDAQ', 322.56);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK011', 21005,    '19-FEB-21',1000,30.56, 'B',    'NASDAQ', 30.56);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK011', 21005,    '19-OCT-21',1000,57.11, 'S',    'NASDAQ', 57.11);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK012', 21005,    '19-AUG-21',700,40.34,  'B',    'NASDAQ', 40.34);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK012', 21005,    '28-OCT-21',600,35.52,  'S',    'NASDAQ', 35.52);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK012', 21005,    '30-OCT-21',100,50.45,  'S',    'NASDAQ', 50.45);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK013', 21006,    '19-JUN-21',140,47.45,  'B',    'NASDAQ', 47.45);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK013', 21006,    '19-SEP-21',100,49.59,  'B',    'NASDAQ', 49.59);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK013', 21006,    '20-OCT-21',200,54.87,  'S',    'NASDAQ', 54.87);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK013', 21006,    '20-NOV-21',40, 50.32,  'S',    'NASDAQ', 50.32);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK014', 21006,    '07-FEB-21',65, 110.76, 'B',    'NYSE', 110.76);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK014', 21006,    '11-NOV-21',65, 115.78, 'S',    'NYSE', 115.78);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK015', 21007,    '05-MAY-21',120,1500.76,'B',    'NYSE', 1500.76);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK015', 21007,    '27-SEP-21',120,1628.65,'S',    'NYSE', 1628.65);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK016', 21007,    '27-JAN-21',150,330.42, 'B',    'NYSE', 330.42);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK016', 21007,    '27-OCT-21',150,346.98, 'S',    'NYSE', 346.98);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK017', 21008,    '09-JUN-21',980,668.65, 'B',    'NYSE', 668.65);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK017', 21008,    '29-JUL-21',980,630.67, 'S',    'NYSE', 630.67);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK018', 21008,    '18-JAN-21',560,50.76,  'B',    'NYSE', 50.76);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK018', 21008,    '18-SEP-21',560, 80.78,  'S',   'NYSE', 80.78);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK019', 21009,    '21-OCT-21',890,100.34, 'B',    'NASDAQ', 100.34);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK019', 21009,    '21-NOV-21',890,108.89, 'S',    'NASDAQ', 108.89);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK020', 21009,    '15-JAN-21',560,140.98, 'B',    'NASDAQ', 140.98);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK020', 21009,    '15-SEP-21',560,160.32, 'S',    'NASDAQ', 160.32);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK020',	21000,	'21-MAR-21',1090,145.98,	'B'	,'NASDAQ', 145.98);
insert1.insert_stock_transactions(ST_SEQ.nextval, 'STOCK020',	21000,	'22-MAR-21',10, 147.02,	    'B'	,'NASDAQ', 147.02);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK020',	21000,	'13-SEP-21',1100,161.22,	'S'	,'NASDAQ', 161.22);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK019',	21001,	'22-AUG-21',450,101.22,	    'B'	,'NASDAQ', 101.22);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK019',	21001,	'28-SEP-21',450,108.45,	    'S'	,'NASDAQ', 108.45);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK018',	21002,	'18-AUG-21',250,50.76,	    'B'	,'NYSE', 50.76);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK018',	21002,	'18-OCT-21',250,80.21,	    'S'	,'NYSE', 80.21);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK017',	21003,	'09-MAY-21',285,658.65,	    'B'	,'NYSE', 658.65);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK017',	21003,	'29-NOV-21',285,630.87,	    'S'	,'NYSE', 630.87);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK016',	21004,	'21-FEB-21',660,320,	    'B'	,'NYSE', 320);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK016',	21004,	'28-FEB-21',660,330.33,	    'S'	,'NYSE', 330.33);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK015',	21005,	'5-MAY-21',340,1500.76,	'B'	,'NYSE',1500.76);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK015',	21005,	'6-MAY-21',340,	   1496.87,	'S'	,'NYSE', 1496.87);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK014',	21005,	'07-FEB-21',890,	110.76,	    'B'	,'NASDAQ', 110.76);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK014',	21005,	'08-FEB-21',310,	100.76,	    'B'	,'NASDAQ', 100.76);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK014',	21005,	'11-NOV-21',1200,	115.76,	    'S'	,'NASDAQ', 115.76);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK012',	21006,	'18-OCT-21',8780,	39.45,	    'B'	,'NASDAQ', 39.45);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK012',	21006,	'20-NOV-21',8780,	46,	        'S'	,'NASDAQ', 46);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK001',	21006,	'20-MAR-21',340,    170.48,	    'B'	,'NYSE', 170.48);
insert1.insert_stock_transactions(ST_SEQ.nextval,   'STOCK001',	21006,	'21-NOV-21',340,	169.38,	    'S'	,'NYSE', 169.38);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK002',	21007,	'21-JAN-21',60,	    1160.33,	'B'	,'NYSE', 1160.33);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK002',	21007,	'17-DEC-21',50,	    1170.65,	'S'	,'NYSE', 1170.65);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK002',	21007,	'18-DEC-21',10,	   1173.98,	'S'	,'NYSE', 1173.98);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK012',	21003,	'18-OCT-21',100,    15.89,	    'B'	,'NASDAQ', 15.89);
insert1.insert_stock_transactions(ST_SEQ.nextval,	'STOCK012', 21003,	'19-OCT-21',100,    35.87,	'S'	,'NASDAQ', 35.87);

----------------------------------------foreign exchange details---------------------------------------------------------

insert1.insert_foreign_exchange_details('CR0001' , 'United States Dollars' , 'United States', 'USD' , 1.000);
insert1.insert_foreign_exchange_details('CR0002' , 'British Pound' , 'United Kingdom' ,'GBP' , 1.338);
insert1.insert_foreign_exchange_details('CR0003' , 'United Arab Emirates Dirham' , 'United Arab Emirates' ,'AED' , 0.273);
insert1.insert_foreign_exchange_details('CR0004' , 'Chinese Yuan Renminbi' , 'China' ,'GBP' , 0.151);
insert1.insert_foreign_exchange_details('CR0005' , 'Euro' , 'Europe Union' ,'EUR' , 1.134);
insert1.insert_foreign_exchange_details('CR0006' , 'Indian Rupee' , 'India' ,'INR' , 0.013);
insert1.insert_foreign_exchange_details('CR0007' , 'Hong Kong Dollar' , 'Hong Kong' ,'HKD' , 0.134);
insert1.insert_foreign_exchange_details('CR0008' , 'Australian Dollar' , 'Australia' ,'AUD' , 0.717);
insert1.insert_foreign_exchange_details('CR0009' , 'Singapore Dollar' , 'Singapore' ,'SGD' , 0.728);
insert1.insert_foreign_exchange_details('CR0010' , 'Swiss Franc' , 'Switzerland' ,'CHF' , 1.080);
insert1.insert_foreign_exchange_details('CR0011' , 'Russian Ruble' , 'Russia' ,'RUB' , 0.0132);
insert1.insert_foreign_exchange_details('CR0012' , 'Japanese Yen' , 'Japan' ,'JPY' , 0.008);
insert1.insert_foreign_exchange_details('CR0013' , 'Canadian Dollar' , 'Canada' ,'CAD' , 0.782);
insert1.insert_foreign_exchange_details('CR0014' , 'Malaysian Ringgit' , 'Malaysia' ,'MYR' , 0.235);
insert1.insert_foreign_exchange_details('CR0015' , 'South African Rand' , 'South Africa' ,'ZAR' , 0.061);


-------------------------------------------------Currency Transactions------------------------------------------------------------

insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	11075,	'24-Apr-21',    'CR0002',	1000,	1.338,	'B',1.338);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	87454,    '6-Jul-21',	'CR0002',	1500,	1.338,	'B',1.338);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	11489,	'7-Jul-21',	    'CR0006',	700,	0.013,	'B',0.013);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	13478,	'14-Aug-21',    'CR0004',	800,	0.151,	'B',0.151);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	14591,	'23-Feb-21',    'CR0009',	2000,	0.728,	'B',0.728);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	72012,	'5-Jan-21',     'CR0002',	1700,	1.338,	'B',1.338);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	43678,	'14-Jan-21',    'CR0010',	500,	1.08,	'B',1.08);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21002,	'30-Sep-21',    'CR0007',	300,    0.134,	'B',0.134);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21005,	'22-Nov-21',    'CR0009',	2500,	0.728,	'B',0.728);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21007,	'18-Aug-21',    'CR0011',	6000,	0.0132,	'B',0.0132);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	31002,	'16-Mar-21',    'CR0012',	3500,	0.008,	'B',0.008);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,    'CR0001',	11075,	'24-Apr-21',    'CR0002',	1000,	1.5,	'S',1.5);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	87454,    '6-Jul-21',	'CR0002',	1500,	1.4,	'S',1.4);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	11489,	'7-Jul-21', 	'CR0006',	700,	0.019,	'S',0.019);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	13478,	'14-Aug-21',    'CR0004',	800,	0.16,	'S',0.16);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	14591,	'23-Feb-21',    'CR0009',	2000,	0.8,	'S',0.8);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	72012,	'5-Jan-21',     'CR0002',	1700,	1.5,	'S',1.5);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	43678,	'14-Jan-21',    'CR0010',	500,	1.15,	'S',1.15);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21002,	'30-Sep-21',    'CR0007',	300,    0.144,	'S',0.144);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21005,	'22-Nov-21',    'CR0009',	2500,	0.799,	'S',0.799);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21007,	'18-Aug-21',    'CR0011',	6000,	0.014,	'S',0.014);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,    'CR0001',	11075,	'24-Apr-21',    'CR0002',	1000,	1.6,	'S',1.6);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	31005,	'25-Mar-21',    'CR0011',	400,	0.0132,	'B',0.0132);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21007,	'18-Aug-21',    'CR0011',	6000,	0.0132,	'B',0.0132);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	31003,	'17-Jun-21',    'CR0014',	1000,	0.235,	'B',0.235);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	31005,	'25-Mar-21',    'CR0011',	400,	0.0144,	'S',0.0144);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21007,	'18-Aug-21',    'CR0011',	6000,	0.0132,	'S',0.0132);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	31003,	'17-Jun-21',    'CR0014',	1000,	0.3,	'S',0.3);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	43157,	'19-Jan-21',    'CR0001',	800,	1,	    'B',1);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	11123,	'7-May-21', 	'CR0012',	1500,	0.008,	'B',0.008);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21005,	'8-Aug-21', 	'CR0013',	900	,   0.783,	'B',0.783);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	31006,	'5-Mar-21', 	'CR0006',	800,	0.014,	'B',0.014);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	31007,	'6-Mar-21',	    'CR0007',	550,	0.135,	'B',0.135);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	43157,	'19-Jan-21',    'CR0001',	800,	1,	    'S',1);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	11123,	'7-May-21',	    'CR0012',	1500,	0.010,	'S',0.010);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	31006,	'5-Mar-21',	    'CR0006',	800,	0.02,	'S',0.02);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	31007,	'6-Mar-21',	    'CR0007',	550,	0.145,	'S',0.145);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	34749,	'8-May-21',	    'CR0010',	600,	1.08,	'B',1.08);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	45912,	'17-Jul-21',    'CR0005',	4000,	1.134,	'B',1.134);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21005,	'8-Aug-21',	    'CR0013',	900	,   0.783,	'B',0.783);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	45912,	'29-Jul-21',    'CR0005',	1000,	1.136,	'B',1.136);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	11123,	'8-May-21',	    'CR0012',	800,	0.009,	'B',0.009);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	11123,	'9-May-21',	    'CR0012',	500,	0.078,	'B',0.078);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	34749,	'8-May-21',	    'CR0010',	600,	1.00,	'S',1.00);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	45912,	'17-Jul-21',    'CR0005',	4000,	1.144,	'S',1.144);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	21005,	'8-Aug-21',	    'CR0013',	900	,   0.8,	'S',0.8);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	45912,	'29-Jul-21',    'CR0005',	1000,	1.110,	'S',1.110);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	11123,	'8-May-21',	    'CR0012',	800,	0.010,	'S',0.010);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',	11123,	'9-May-21',	    'CR0012',	500,	0.099,	'S',0.099);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',    21009,	'18-Jul-21',    'CR0003',	1700,	0.275,	'B',0.275);
insert1.insert_foreign_exchange_transactions(FT_SEQ.NEXTVAL,	'CR0001',    21009,	'18-Jul-21',    'CR0003',	1700,	0.5,	'S',0.5);

--------------------------------------------------Crpto Details-------------------------------------------------------------------------

insert1.insert_crypto_details('CRYPTO00A',	'BITCOIN',	   'BTC',	58704);
insert1.insert_crypto_details('CRYPTO00B',	'ETHEREUM',	   'ETH',	4083.31);
insert1.insert_crypto_details('CRYPTO00C',	'BINANCE COIN','BNB',	624.83);
insert1.insert_crypto_details('CRYPTO00D',	'TETHER',	   'USDT',	1);
insert1.insert_crypto_details('CRYPTO00E',	'SOLANA',	   'SOL',	211.17);
insert1.insert_crypto_details('CRYPTO00F',	'DOGECOIN',	   'DOGE',	0.21);
insert1.insert_crypto_details('CRYPTO00G',	'AVALANCHE',   'AVAX',	116.82);
insert1.insert_crypto_details('CRYPTO00H',	'TERRA',	   'LUNA',	52.62);
insert1.insert_crypto_details('CRYPTO00I',	'LITECOIN',	    'LTC',	207.94);
insert1.insert_crypto_details('CRYPTO00J',	'BITCOIN CASH',	'BCH',	579.93);
insert1.insert_crypto_details('CRYPTO00K',	'DECRED',	    'DCR',	105.69);
insert1.insert_crypto_details('CRYPTO00L',	'MOONRIVER',	'MOVR',	318.34);
insert1.insert_crypto_details('CRYPTO00N',	'POLYGON',	   'MATIC',	1.75);
insert1.insert_crypto_details('CRYPTO000',	'AXIE INFINITY', 'AXS',	135.32);
insert1.insert_crypto_details('CRYPTO00P',	'ELROND',	    'EGLD',	409.08);
insert1.insert_crypto_details('CRYPTO00Q',	'FILECOIN',	     'FIL',	55.81);
insert1.insert_crypto_details('CRYPTO00R',	'COSMOS',	    'ATOM',	27.56);
insert1.insert_crypto_details('CRYPTO00S',	'HELIUM',	     'HNT',	40.88);
insert1.insert_crypto_details('CRYPTO00T',	'KUSAMA',	     'KSM',	365.53);
insert1.insert_crypto_details('CRYPTO00U',	'QUANT',	     'QNT',	207.23);

---------------------------------------------------CryptoTransaction----------------------------------------------------------------------
insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00I',	11123,	'3-Mar-21'	,'B',	20,	207.94,	'KUCOIN', 207.94);
insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00I',	11123,	'16-Mar-21'	,'S',	10,	160,	    'KUCOIN', 160);
insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00I',	11123,	'16-Mar-21'	,'S',	10,	105.69,	'KUCOIN', 105.69);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00K',	11489,	'4-Apr-21'	,'B',	10,	105.69,	'PHEMEX',105.69);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00K',	11489,	'4-Jul-21'	,'S',	10,	110.69,	'PHEMEX',110.69);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00D',	13459,	'1-Oct-21'	,'B',	100,	1,	    'COINBASE',1);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00D',	13459,	'21-Nov-21'	,'S',	100,	2,	    'COINBASE',2);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00A',	13478,	'20-May-21'	,'B',	1,	58704,	'COINBASE',58704);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00B',	13478,	'16-Nov-21'	,'S',	1,	4083.31,	'COINBASE',4083.31);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	14591,	'22-May-21'	,'B',	6,	207.23,	'KRAKEN',207.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	14591,	'22-May-21'	,'S',	6,	250.23,	'KRAKEN',250.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00E',	20367,	'22-May-21'	,'B',	7,	211.17,	'COINBASE',211.17);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00E',	20367,	'26-Dec-21'	,'S',	4,	207.23,	'COINBASE',207.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00E',	20367,	'27-Dec-21'	,'S',	3,	220.03,	'COINBASE',220.03);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00Q',	21000,	'20-Mar-21'	,'B',	100,	55.81,	'COINBASE',55.81);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00Q',	21000,	'28-Mar-21'	,'S',	100,	60.01,	'COINBASE',60.01);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21001,	'20-Mar-21'	,'B',	150,	0.21,	'COINBASE',0.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21001,	'20-Mar-21'	,'S',	90,	1,	    'COINBASE',	1);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21001,	'20-May-21'	,'S',	60,	5,	    'COINBASE',5);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21002,	'20-Mar-21'	,'B',	200,	0.21,	'COINBASE',0.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21002,	'20-Jun-21'	,'S',	100,	1,	    'COINBASE',1);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21002,	'12-Jul-21'	,'S',	50,	2,	    'COINBASE',	2);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21002,	'5-Dec-21'	,'S',	50,	5,	    'COINBASE',5);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21003,	'20-Mar-21'	,'B',	250,	0.21,	'KUCOIN',0.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21003,	'10-Apr-21'	,'S',	100, 0.21,	'KUCOIN',0.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21003,	'15-Jun-21'	,'S',	100,	1,	    'KUCOIN',1);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21003,	'15-Sep-21'	,'S',	25,	5,	    'KUCOIN',5);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	21003,	'15-Oct-21'	,'S',	25,	3,	    'KUCOIN',3);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00H',	21005,	'10-Apr-21'	,'B',	100,	52.62,	'KRAKEN',52.62);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00H',	21005,	'20-Apr-21'	,'S',	20,	52.62,	'KRAKEN',52.62);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00E',	21005,	'20-Apr-21'	,'B',	5,	211.17,	'COINBASE',211.17);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00H',	21005,	'20-May-21'	,'S',	30,	52.62,	'KRAKEN',52.62);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00H',	21005,	'11-Oct-21'	,'S',	30,	60.15,	'KRAKEN',60.15);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00H',	21005,	'11-Oct-21'	,'S',	20,	55.15,	'KRAKEN',55.15);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00E',	21005,	'30-Nov-21'	,'S',	5,	300.17,	'COINBASE',300.17);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00S',	21006,	'10-Apr-21'	,'B',	20,	40.88,	'KRAKEN', 40.88);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00S',	21006,	'10-Apr-21'	,'S',	20,	60.88,	'KRAKEN',60.88);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00A', 21007,	'10-Apr-21'	,'B',	5,	58704,	'KRAKEN', 58704);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00L',	21007,	'14-Apr-21'	,'B',	5,	318.34,	'KRAKEN', 318.34);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00A',	21007,	'10-Nov-21'	,'S',	5,	65000,	'KRAKEN', 65000);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00L',	21007,	'24-Nov-21'	,'S',	5,	420.34,	'KRAKEN', 420.34);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	21009,	'20-Apr-21'	,'B',	2,	207.23,	'KRAKEN', 207.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00L',	21009,	'20-Apr-21'	,'B',	1,	318.34,	'COINBASE', 318.34);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	21009,	'3-Jun-21'	,'S',	2,	210.23,	'KRAKEN', 210.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00L',	21009,	'20-Jul-21'	,'S',	1,	320.34,	'COINBASE', 320.34);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	23567,	'14-Jun-21'	,'B',	20,	207.23,	'COINBASE',207.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00C',	23567,	'15-Oct-21'	,'B',	3,	624.83,	'COINBASE',624.83);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	23567,	'14-Aug-21'	,'S',	10,	210.23,	'COINBASE',210.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00C',	23567,	'15-Nov-21'	,'S',	3,  630.83,	'COINBASE', 630.83);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00A',	31000,	'22-May-21'	,'B',	2,	58704,	'COINBASE',58704);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00A',	31000,	'10-Sep-21'	,'S',	2,	65704,	'COINBASE',65704);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00D',	31002,	'10-Jan-21'	,'B',	100,	1,	'COINBASE',1);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00D',	31002,	'12-Feb-21'	,'S',	60,	5,	    'COINBASE',5);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00D',	31002,	'12-Mar-21'	,'S',	20,	2,	    'COINBASE',2);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00A',	31002,	'12-Feb-21'	,'B',	10,	58704,	'COINBASE',58704);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00D',	31002,	'20-Apr-21'	,'S',	20,	4,	    'COINBASE',4);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00A',	31002,	'12-May-21'	,'S',	10,	60002,	'COINBASE',60002);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00A',	31003,	'15-Feb-21'	,'B',	12,	58704,	'COINBASE',58704);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00A',	31003,	'15-Mar-21'	,'S',	12,	60002,	'COINBASE',60002);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00L',	31003,	'15-Feb-21'	,'B',	10,	318.34,	'COINBASE',318.34);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00J',	31003,	'15-Feb-21'	,'B',	7,	579.93,	'COINBASE',579.93);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00T',	31003,	'10-Mar-21'	,'B',	7,	365.53,	'COINBASE',365.53);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00L',	31003,	'15-May-21'	,'S',	10,	335.34,	'COINBASE',335.34);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00J',	31003,	'15-Apr-21'	,'S',	7,	601.93,	'COINBASE',601.93);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00T',	31003,	'10-Aug-21'	,'S',	7,	370.6,	'COINBASE',370.6);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	31004,	'14-Feb-21'	,'B',	70,	0.21,	'KUCOIN',0.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	31004,	'6-Mar-21'	,'B',	60,	207.23,	'KUCOIN',207.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	31004,	'14-May-21'	,'S',	70,	1.21,	'KUCOIN',1.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	31004,	'6-Jul-21'	,'S',	60,	210.23,	'KUCOIN',210.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	31005,	'14-Feb-21'	,'B',	100,	0.21,	'KUCOIN',0.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	31005,	'14-Mar-21'	,'S',	100,	3.21,	'KUCOIN',3.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00H',	34157,	'6-Feb-21'	,'B',	12,	52.62,	'KUCOIN',52.62);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00Q',	34157,	'6-Feb-21'	,'B',	50,	55.81,	'KUCOIN',55.81);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00K',	34157,	'14-Feb-21'	,'B',	30,	105.69,	'KUCOIN',105.69);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	34157,	'6-Mar-21'	,'B',	20,	207.23,	'KUCOIN',207.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00H',	34157,	'14-May-21'	,'S',	12,	62.62,	'KUCOIN',62.62);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00Q',	34157,	'19-Mar-21'	,'S',	50,	60.81,	'KUCOIN',60.81);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00K',	34157,	'16-Sep-21'	,'S',	30,	115.69,	'KUCOIN',115.69);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	34157,	'6-Sep-21'	,'S',	10,	220.23,	'KUCOIN',220.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	34157,	'16-Dec-21'	,'S',	10,	222.23,	'KUCOIN',222.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00I',	34749,	'15-Oct-21'	,'B',	14,	207.94,	'KUCOIN',207.94);
insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00I',	34749,	'18-Nov-21'	,'S',	10,	211.94,	'KUCOIN',211.94);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00I',	34749,	'20-Nov-21'	,'S',	4,	212.94,	'KUCOIN',212.94);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00C',	34749,	'25-Oct-21'	,'B',	5,	627.83,	'KUCOIN',627.83);
  insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00C',	34749,	'15-Oct-21'	,'S',	5,	624.83,	'KUCOIN',624.83);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00E',	13459,	'12-Sep-21'	,'B',	40,	211.17,	'COINBASE',211.17);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00E',	13459,	'12-Sep-21'	,'S',	40,	216.17,	'COINBASE',216.17);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00J',	13459,	'12-Sep-21'	,'S',	10,	579.93,	'COINBASE',579.93);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00Q',	13459,	'11-Mar-21'	,'B',	3,	55.81,	'KRAKEN',55.81);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00J',	13459,	'15-Sep-21'	,'S',	10,	679.93,	'COINBASE',679.93);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00Q',	13459,	'15-May-21'	,'S',	3,	65.81,	'KRAKEN',65.81);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00C',	45912,	'15-Oct-21'	,'B',	7,	624.83,	'COINBASE',624.83);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00C',	45912,	'16-Nov-21'	,'S',	7,	630.83,	'COINBASE',630.83);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00T',	55631,	'14-Sep-21'	,'B',	2,	365.53,	'COINBASE',365.53);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00T',	55631,	'16-Nov-21'	,'S',	2,	370.53,	'COINBASE',370.53);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00K',	72012,	'16-Mar-21'	,'B',	30,	105.69,	'COINBASE',105.69);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00K',	72012,	'16-Jul-21'	,'S',	30,	110.69,	'COINBASE',110.69);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00I',	76231,	'16-Nov-21'	,'B',	10,	207.94,	'KRAKEN',207.94);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	76231,	'6-Mar-21'	,'B',	20,	207.23,	'COINBASE',207.23);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00U',	76231,	'10-Apr-21'	,'S',	20,	200.75,	'COINBASE',200.75);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00I',	76231,	'26-Dec-21'	,'S',	10,	210.94,	'KRAKEN',210.94);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00H',	87452,	'2-Aug-21'	,'B',	30,	52.62,	'COINBASE',52.62);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00H',	87452,	'2-Aug-21'  ,'S',	30,	51.62,	'COINBASE',51.62);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00R',	87452,	'12-Sep-21'	,'B',	100,	27.56,	'KRAKEN',27.56);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00R',	87452,	'12-Sep-21'	,'S',	50,	28.56,	'KRAKEN',28.56);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00R',	87452,	'14-Sep-21'	,'S',	50,	22.56,	'KRAKEN',22.56);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00T',	87452,	'14-Sep-21'	,'B',	5,	365.53,	'KRAKEN',365.53);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00T',	87452,	'14-Sep-21'	,'S',	5,	375.53,	'KRAKEN',375.53);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	87452,	'11-Mar-21'	,'B',	1000, 0.21,   'KUCOIN',0.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	87452,	'11-Mar-21'	,'S',	200, 0.21,	'KUCOIN',0.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	87452,	'16-Apr-21'	,'S',	600,	0.21,	'KUCOIN',0.21);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00F',	87452,	'12-May-21'	,'S',	200,	1,	    'KUCOIN',1);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00Q',	90214,	'28-Jan-21'	,'B',	150,	365.53,	'COINBASE',365.53);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00T',	90214,	'11-Sep-21'	,'S',	15,	340.53,	'COINBASE',340.53);
 insert1.insert_crypto_transaction(CT_SEQ.nextval,'CRYPTO00T',	90214,	'21-Dec-21'	,'S',	135,	365.53,	'COINBASE',365.53);


----------------------------------------------------------CUSTOMER FINANCIAL DETAILS---------------------------------------------------------------------------


insert1.insert_cfinancial_detail(11489 ,67521,0,'IT',30140);
insert1.insert_cfinancial_detail(34749 ,70123,23456,'Sales',41234);
insert1.insert_cfinancial_detail(55631 ,88987,525,'Manufacturing',2000);
insert1.insert_cfinancial_detail(76231 ,99876,0,'IT',42345);
insert1.insert_cfinancial_detail(90214 ,34567,45678,'Pre-Sales',11123);
insert1.insert_cfinancial_detail(87452 ,64321,234,'Retail',23456);
insert1.insert_cfinancial_detail(11075 ,75643,0,'HR',33000);
insert1.insert_cfinancial_detail(11070 ,91234,2200,'IT',43234);
insert1.insert_cfinancial_detail(87454 ,78098,1500,'PreSales',30987);
insert1.insert_cfinancial_detail(66751 ,87908,0,'HR',23456);
insert1.insert_cfinancial_detail(31000,33535,543,'Manufacturing',65766);
insert1.insert_cfinancial_detail(31001,35353,454,'Sales',65445);
insert1.insert_cfinancial_detail(31002,35465,454,'IT',46656);
insert1.insert_cfinancial_detail(31003,64645,465,'Manufacturing',57575);
insert1.insert_cfinancial_detail(31004,87687,566,'Accounting',56456);
insert1.insert_cfinancial_detail(31005,76776,564,'Business',646346);
insert1.insert_cfinancial_detail(31006,65768,453,'Medical',56465);
insert1.insert_cfinancial_detail(31007,76879,666,'Business',634555);
insert1.insert_cfinancial_detail(31008,65566,466,'Manufacturing',64565);
insert1.insert_cfinancial_detail(31009,89797,0,'IT',65645);
insert1.insert_cfinancial_detail(13459,76878,0,'Business',574557);
insert1.insert_cfinancial_detail(43678,98798,66,'Sales',54745);
insert1.insert_cfinancial_detail(13478,97809,75,'HR',46564);
insert1.insert_cfinancial_detail(45912,76578,787,'Medical',43446);
insert1.insert_cfinancial_detail(34157,8978,76,'Accounting',55775);
insert1.insert_cfinancial_detail(14591,98790,0,'Sales',567546);
insert1.insert_cfinancial_detail(23567,76878,0,'HR',545656);
insert1.insert_cfinancial_detail(72012,76668,64,'Sales',57685);
insert1.insert_cfinancial_detail(20367,67567,577,'Medical',574565);
insert1.insert_cfinancial_detail(11123,54564,0,'Business',567666);
insert1.insert_cfinancial_detail(21000,56456,56,'Retails',344465);
insert1.insert_cfinancial_detail(21001,67567,907,'HR',38755);
insert1.insert_cfinancial_detail(21002,45463,670,'Doctor',84645);
insert1.insert_cfinancial_detail(21003,53453,6870,'IT',75657);
insert1.insert_cfinancial_detail(21004,53534,88,'Doctor',764535);
insert1.insert_cfinancial_detail(21005,46456,0,'IT',574565);
insert1.insert_cfinancial_detail(21006,43646,658,'Sales',57456);
insert1.insert_cfinancial_detail(21007,63453,0,'Sales',434468);
insert1.insert_cfinancial_detail(21008,34363,568,'Manufacturing',54766);
insert1.insert_cfinancial_detail(21009,34663,79,'IT',46566);



----------------Customer Feedback-------------------
insert1.insert_feedback(FEEDBACK_SEQ.nextval,21006,'STOCK013', 'STOCK','Pfizer', 9, 'Long term growth');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,31001, 'MU1003',  'MUTUAL','Principal Emerging Bluechip Fund-Growth', 10, 'Good Gains');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,90214,'CRYPTO00T','CRYPTO','KUSAMA', 10, 'Highly Volatile');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,11075, 'CR0001',  'CURRENCY','United States Dollars' ,3, 'Lost My Money');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,21009, 'STOCK020', 'STOCK','JNJ', 8, 'Saturation, slow growth');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,31004, 'MU1014' ,  'MUTUAL', 'Sundaram Select Micro Cap',10, 'Good Returns');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,13478,  'CRYPTO00B','CRYPTO','ETHEREUM', 9, 'Relax and Invest');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,14591,  'CR0009' ,'CURRENCY', 'Singapore Dollar', 9, 'Trusted fund');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,21005,  'CR0013' ,'CURRENCY', 'Canadian Dollar', 7, 'Longterm fund');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,13478,  'CRYPTO00A','CRYPTO','BITCOIN', 10, 'Future Crypto');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,21003,  'STOCK007', 'STOCK', 'T-Mobile', 7, 'Not trusted after brexit');
insert1.insert_feedback(FEEDBACK_SEQ.nextval,11489,  'MU1002','MUTUAL', 'L&T Midcap-Growth', 8, 'Not Stable');






end;
/