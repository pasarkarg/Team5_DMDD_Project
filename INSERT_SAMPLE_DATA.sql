
----------------------------------------------CUSTOMER DATA-------------------------------------------------------

execute insert1.insert_customer(11489 , 'Megan Joseph' , '19-jun-1980' , 41, 2347905511 , 92133 , 'New York' , '41, Melvin street' , '22-FEB-2020' , 'Knight@1' , 'Safforn' , 'Balling');
execute insert1.insert_customer(34749 , 'Wane Fox' , '11-NOV-1992' , 31, 2347865588 , 37553 , 'FLORIDA' , '22, Park Street' , '17-MAY-2019' , 'Toyyy777' , 'Sanban*8' , 'Yussss');
execute insert1.insert_customer(55631 , 'Tejas Bawankar' , '11-JUL-1994' , 27, 8983122563 , 44043, 'Texas' , '71, Pandey layout' , '09-NOV-2019' , 'Aditi@04' , 'Mastaa' , 'Chobugomu');
execute insert1.insert_customer (76231 , 'Siddharth Savant' , '19-JUL-1996' , 25, 9559240344 , 89645, 'California' , '55, South Nagar' , '26-SEP-2017' , 'Cloud@04' , 'Funnyman' , 'Rowbow2');
execute insert1.insert_customer (90214 , 'Vaibhavi T' , '09-Oct-1996' , 25, 8149935345 , 77564 , 'Texas' , '71, Effco Way' , '14-OCT-2018' , 'Space@05' , 'Cutiepie' , 'Unicorn');
execute insert1.insert_customer(87452 , 'Jack Columbus' , '01-jan-1988' , 32, 8149976541 , 72123 , 'Washington','Tempe' , '89, Treat Streat' , '19-Jul-2021' , 'yahoo&5' , 'Lassi' , 'Beatit');
execute insert1.insert_customer(11075 , 'Will Jackman' , '23-Sep-90' , 32, 8149976541 , 72123 , 'Washington' ,'London', '89, Treat Streat' , '19-Jul-2021' , 'yahoo&5' , 'Lassi' , 'Beatit');
execute insert1.insert_customer(11070 , 'Ted Artist' , '23-Mar-95' , 32, 8149976541 , 72123 , 'Washington' ,'Wage', '89, Treat Streat' , '19-Jul-2021' , 'yahoo&5' , 'Lassi' , 'Beatit');
execute insert1.insert_customer(87454 , 'TOAD GUPTA' , '23-Mar-00' , 32, 8149976541 , 72123 , 'Washington' ,'Faang', '89, Treat Streat' , '19-Jul-2021' , 'yahoo&5' , 'Lassi' , 'Beatit');
execute insert1.insert_customer(66751 , 'HOLLY WITTON' , '11-Nov-90' , 32, 8149976541 , 72123 , 'Washington' ,'Mouth', '89, Treat Streat' , '19-Jul-2021' , 'yahoo&5' , 'Lassi' , 'Beatit');
execute insert1.insert_customer(11489 , 'Megan Joseph' , '19-Jun-80' , 41, 2347905511 , 72123 , 'Washington' , 'Dallas', '89, Treat Streat' , '19-Jul-2021' , 'yahoo&5' , 'Lassi' , 'Beatit');



--------------------------------------------MUTUAL FUND DETAILS------------------------------------------------
execute insert1.insert_mutual_fund_details('MU1002' , 'L&T Midcap-Growth' , 'Medium' , 100.1);
execute insert1.insert_mutual_fund_details('MU1003' , 'Principal Emerging Bluechip Fund-Growth' , 'Low' , 181.2);
execute insert1.insert_mutual_fund_details('MU1004' , 'Franklin Build India Fund-Growth' , 'High' , 64.01);
execute insert1.insert_mutual_fund_details('MU1005' , 'IDFC Infrastructure Fund-Growth' , 'Medium' , 50);
execute insert1.insert_mutual_fund_details('MU1006' , 'Aditya Birla Sun Life Small Cap Fund' , 'High' , 105.5);
execute insert1.insert_mutual_fund_details('MU1007' , 'SBI Small Cap Fund' , 'Medium' , 120.3);
execute insert1.insert_mutual_fund_details('MU1008' , 'IDFC Tax Advantage (ELSS) Fund' , 'Low' , 68.01);
execute insert1.insert_mutual_fund_details('MU1009' , 'L&T Emerging Businesses Fund' , 'Low' , 70.76);
execute insert1.insert_mutual_fund_details('MU1010' , 'DSP BlackRock Natural Fund' , 'Medium' , 130.7);
execute insert1.insert_mutual_fund_details('MU1011' , 'ICICI Prudential Midcap 150 ETF' , 'High' , 117.4);
execute insert1.insert_mutual_fund_details('MU1012' , 'Quant Small Cap Fund' , 'Low' , 84.32);
execute insert1.insert_mutual_fund_details('MU1013' , 'Tata Digital India Fund' , 'High' , 175);
execute insert1.insert_mutual_fund_details('MU1014' , 'Sundaram Select Micro Cap' , 'Medium' , 128.4);
execute insert1.insert_mutual_fund_details('MU1015' , 'Kotak Small Cap Fund' , 'Low' , 54.02);


--------------------------------------------MUTUAL FUND TRANSACTION-----------------------------------------------

execute insert1.insert_mutual_fund_transactions ('MUF0000','MU1002',	31000,'20-Jan-21',30,99.12,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0001','MU1002',	31000,'21-Jan-21',20,100,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0002','MU1002',	31000,'21-Jan-21',20,100,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0003','MU1002',	31000,'15-Feb-21',50,97.12,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0004','MU1002',	31000,'24-Mar-21',20,96.67,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0005','MU1003',	31001,'12-Feb-21',10,179.65,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0006','MU1003',	31001,'15-Mar-21',15,178,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0007','MU1003',	31001,'25-Apr-20',28,170.9,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0008','MU1003',	31001,'1-May-21',13,182.13,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0009','MU1003',	31001,'5-Jul-21',40,183.9,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0010','MU1004',	31002,'15-Feb-21',102,	60.1,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0011','MU1004',	31002,'25-Feb-21',102,	65.02,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0012','MU1004',	31002,'18-Jan-21',70,	63.12,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0013','MU1004',	31002,'11-Apr-21',70,	62.3,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0014','MU1005',	31002,'2-Mar-21',800,	45.12,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0015','MU1005',	31002,'5-May-21',100,	46.12,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0016','MU1005',	31002,'21-Jun-21',304,	48.3,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0017','MU1005',	31002,'3-Apr-21',900,	53.55,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0018','MU1005',	31002,'14-May-21',304,	58,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0019','MU1006',	31003,'20-Apr-21',55,	101.34,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0020','MU1006',	31003,'17-Sep-21',55,	106.12,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0021','MU1006',	31003,'10-Mar-21',105,	95.12,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0022','MU1006',	31003,'1-Dec-21',105,	107.67,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0023','MU1006',	31003,'22-Feb-21',203,	98.32,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0024','MU1006',	31003,'18-Oct-21',203,	108.21,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0025','MU1007',	31004,'10-May-21',400,	119.16,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0026','MU1007',	31004,'29-Jul-21',400,	139.34,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0027','MU1009',	31004,'16-Mar-21',205,	65.43,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0028','MU1009',	31004,'18-Jul-21',303,	59.76,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0029','MU1009',	31004,'26-May-21',508,	87.63,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0030','MU1014',	31004,'13-Feb-21',16,	122.1,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0031','MU1014',	31004,'18-Nov-21',30,	124.14,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0032','MU1014',	31004,'14-Oct-21',58,	127.09,'B');
execute insert1.insert_mutual_fund_transactions ('MUF0033','MU1014',	31004,'18-Mar-21',16,	145.16,'S');
execute insert1.insert_mutual_fund_transactions ('MUF0034','MU1014',	31004,'9-Dec-21',88,150.14,'S');











