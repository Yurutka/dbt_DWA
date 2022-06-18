# dbt_DWA
Data Warehouse Analyst homework

1. Configure ClickHouse cluster with CLI

yc managed-clickhouse cluster create --name clickhouse_hw_1206 --environment production --network-name default --host type=clickhouse,zone-id=ru-central1-b,subnet-id=e2l5g4kt37lnn9cvvar3 --clickhouse-resource-preset s2.small --clickhouse-disk-type network-hdd --clickhouse-disk-size 20 --user name=admin1,password=password --database name=dbt --deletion-protection=true --version 22.3

3. Configure dbt project & run queries
Q2.1
12672281651	1992	MFGR#121
13001303186	1992	MFGR#1210
13805417452	1992	MFGR#1211
12776234014	1992	MFGR#1212
13433864328	1992	MFGR#1213
13581771711	1992	MFGR#1214
13053257221	1992	MFGR#1215
13434550494	1992	MFGR#1216
14000667157	1992	MFGR#1217
13682184743	1992	MFGR#1218
12490304616	1992	MFGR#1219
13848761978	1992	MFGR#122
12695654353	1992	MFGR#1220
13943039313	1992	MFGR#1221
12816003837	1992	MFGR#1222
12731556625	1992	MFGR#1223
14196465733	1992	MFGR#1224
13099594674	1992	MFGR#1225
13837724673	1992	MFGR#1226
12835260089	1992	MFGR#1227
14013848875	1992	MFGR#1228
12783094897	1992	MFGR#1229
13190480233	1992	MFGR#123
12758829878	1992	MFGR#1230
13706848098	1992	MFGR#1231
15111172085	1992	MFGR#1232
12788789701	1992	MFGR#1233
12886732429	1992	MFGR#1234
14200745630	1992	MFGR#1235
13699711844	1992	MFGR#1236
13494301997	1992	MFGR#1237
11955509041	1992	MFGR#1238
12522692893	1992	MFGR#1239
13128373576	1992	MFGR#124
13900238799	1992	MFGR#1240
12889269530	1992	MFGR#125
12072098894	1992	MFGR#126
13326968200	1992	MFGR#127
13205227869	1992	MFGR#128
12060639481	1992	MFGR#129
12913064170	1993	MFGR#121
12846153574	1993	MFGR#1210
13319472884	1993	MFGR#1211
12656867131	1993	MFGR#1212
12958664957	1993	MFGR#1213
12996106178	1993	MFGR#1214
13749400474	1993	MFGR#1215
13156279495	1993	MFGR#1216
14133397051	1993	MFGR#1217
13300752041	1993	MFGR#1218
13188526927	1993	MFGR#1219
13669006986	1993	MFGR#122
13151060231	1993	MFGR#1220
13520271743	1993	MFGR#1221
13204649517	1993	MFGR#1222
12611021328	1993	MFGR#1223
13706017203	1993	MFGR#1224
13193613398	1993	MFGR#1225
13364868408	1993	MFGR#1226
12526434796	1993	MFGR#1227
13885781315	1993	MFGR#1228
12645170012	1993	MFGR#1229
12745953219	1993	MFGR#123
12882547721	1993	MFGR#1230
13242258104	1993	MFGR#1231
14625381340	1993	MFGR#1232
13028652414	1993	MFGR#1233
13523711079	1993	MFGR#1234
13980638401	1993	MFGR#1235
13835021719	1993	MFGR#1236
13741524787	1993	MFGR#1237
11844760060	1993	MFGR#1238
12403455915	1993	MFGR#1239
13700145770	1993	MFGR#124
13728834792	1993	MFGR#1240
12732068011	1993	MFGR#125
13033573314	1993	MFGR#126
13878439267	1993	MFGR#127
13234183624	1993	MFGR#128
12216872884	1993	MFGR#129
13015507995	1994	MFGR#121
13415972840	1994	MFGR#1210
13796394107	1994	MFGR#1211
13066189489	1994	MFGR#1212
13171981606	1994	MFGR#1213
13014609731	1994	MFGR#1214
13505619415	1994	MFGR#1215
13154008183	1994	MFGR#1216
13993249029	1994	MFGR#1217
13447685058	1994	MFGR#1218
12786720187	1994	MFGR#1219
13686460859	1994	MFGR#122
12816274355	1994	MFGR#1220
13701914320	1994	MFGR#1221
12973502122	1994	MFGR#1222
12097673606	1994	MFGR#1223
14158613987	1994	MFGR#1224
13367339460	1994	MFGR#1225
13592369907	1994	MFGR#1226
12688300755	1994	MFGR#1227
13929240610	1994	MFGR#1228
12578247606	1994	MFGR#1229
12902018098	1994	MFGR#123
12894203129	1994	MFGR#1230
12881299936	1994	MFGR#1231
14986840428	1994	MFGR#1232
13258835859	1994	MFGR#1233
13282162516	1994	MFGR#1234
13523371719	1994	MFGR#1235
14052867150	1994	MFGR#1236
13824154900	1994	MFGR#1237
11911167126	1994	MFGR#1238
12650040050	1994	MFGR#1239
13372816683	1994	MFGR#124
13874852324	1994	MFGR#1240
13113458783	1994	MFGR#125
12443110357	1994	MFGR#126
13197254501	1994	MFGR#127
13561334546	1994	MFGR#128
12215960647	1994	MFGR#129
12548988553	1995	MFGR#121
13298369956	1995	MFGR#1210
13620817848	1995	MFGR#1211
12610662225	1995	MFGR#1212
13292941078	1995	MFGR#1213
13449826225	1995	MFGR#1214
13210454604	1995	MFGR#1215
13281112431	1995	MFGR#1216
13965326980	1995	MFGR#1217
13456838120	1995	MFGR#1218
12636008879	1995	MFGR#1219
13596382674	1995	MFGR#122
13263424971	1995	MFGR#1220
13880780596	1995	MFGR#1221
13067280967	1995	MFGR#1222
12522080131	1995	MFGR#1223
13648591095	1995	MFGR#1224
13489508329	1995	MFGR#1225
13692206761	1995	MFGR#1226
12819880503	1995	MFGR#1227
14290014609	1995	MFGR#1228
12684929098	1995	MFGR#1229
13107036842	1995	MFGR#123
12456838286	1995	MFGR#1230
13065298087	1995	MFGR#1231
14027053523	1995	MFGR#1232
12626335379	1995	MFGR#1233
12935669993	1995	MFGR#1234
13565017652	1995	MFGR#1235
13373311601	1995	MFGR#1236
14124141780	1995	MFGR#1237
11700287744	1995	MFGR#1238
12414542998	1995	MFGR#1239
13677989398	1995	MFGR#124
13971716794	1995	MFGR#1240
13193092677	1995	MFGR#125
12934183160	1995	MFGR#126
13113323851	1995	MFGR#127
13642471572	1995	MFGR#128
12284711598	1995	MFGR#129
12964290247	1996	MFGR#121
13069002816	1996	MFGR#1210
14394514059	1996	MFGR#1211
12765635985	1996	MFGR#1212
13152629772	1996	MFGR#1213
12874185514	1996	MFGR#1214
13724762331	1996	MFGR#1215
13424153649	1996	MFGR#1216
13945542686	1996	MFGR#1217
13821368995	1996	MFGR#1218
12646017203	1996	MFGR#1219
14000988039	1996	MFGR#122
12997436256	1996	MFGR#1220
13483832998	1996	MFGR#1221
12786027627	1996	MFGR#1222
12246975901	1996	MFGR#1223
14246722137	1996	MFGR#1224
13289035563	1996	MFGR#1225
13471416801	1996	MFGR#1226
12633157628	1996	MFGR#1227
13856331507	1996	MFGR#1228
12380696263	1996	MFGR#1229
12868757234	1996	MFGR#123
12584005428	1996	MFGR#1230
13171910923	1996	MFGR#1231
14770510635	1996	MFGR#1232
12923797345	1996	MFGR#1233
12893178255	1996	MFGR#1234
14348335024	1996	MFGR#1235
13657838112	1996	MFGR#1236
14084638477	1996	MFGR#1237
11883879165	1996	MFGR#1238
12988292013	1996	MFGR#1239
13662170114	1996	MFGR#124
14042075637	1996	MFGR#1240
12971867897	1996	MFGR#125
12691828718	1996	MFGR#126
13418126236	1996	MFGR#127
13561233656	1996	MFGR#128
12402579373	1996	MFGR#129

Q3.3
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
</head>
<body>
<table><tr><th colspan="4">SELECT<br>    C_CITY,<br>    S_CITY,<br>    toYear(LO_ORDERDATE) AS year,<br>    sum(LO_REVENUE) AS revenue<br>FROM lineorder_flat<br>WHERE (C_CITY = 'UNITED KI1' OR C_CITY = 'UNITED KI5') AND (S_CITY = 'UNITED KI1' OR S_CITY = 'UNITED KI5') AND year &gt;= 1992 AND year &lt;= 1997<br>GROUP BY<br>    C_CITY,<br>    S_CITY,<br>    year<br>ORDER BY<br>    year ASC,<br>    revenue DESC</th></tr><tr><th>C_CITY</th><th>S_CITY</th><th>year</th><th>revenue</th></tr><tr class="odd"><td>UNITED KI1</td><td>UNITED KI5</td><td>1 992</td><td>1 178 335 603</td></tr>
<tr><td>UNITED KI1</td><td>UNITED KI1</td><td>1 992</td><td>1 052 597 356</td></tr>
<tr class="odd"><td>UNITED KI5</td><td>UNITED KI1</td><td>1 992</td><td>1 026 260 086</td></tr>
<tr><td>UNITED KI5</td><td>UNITED KI5</td><td>1 992</td><td>973 349 994</td></tr>
<tr class="odd"><td>UNITED KI5</td><td>UNITED KI5</td><td>1 993</td><td>1 083 378 728</td></tr>
<tr><td>UNITED KI5</td><td>UNITED KI1</td><td>1 993</td><td>1 043 169 947</td></tr>
<tr class="odd"><td>UNITED KI1</td><td>UNITED KI5</td><td>1 993</td><td>965 639 669</td></tr>
<tr><td>UNITED KI1</td><td>UNITED KI1</td><td>1 993</td><td>918 452 812</td></tr>
<tr class="odd"><td>UNITED KI5</td><td>UNITED KI5</td><td>1 994</td><td>1 260 730 803</td></tr>
<tr><td>UNITED KI1</td><td>UNITED KI5</td><td>1 994</td><td>1 081 071 702</td></tr>
<tr class="odd"><td>UNITED KI1</td><td>UNITED KI1</td><td>1 994</td><td>1 020 245 194</td></tr>
<tr><td>UNITED KI5</td><td>UNITED KI1</td><td>1 994</td><td>863 514 969</td></tr>
<tr class="odd"><td>UNITED KI1</td><td>UNITED KI5</td><td>1 995</td><td>1 124 054 660</td></tr>
<tr><td>UNITED KI5</td><td>UNITED KI5</td><td>1 995</td><td>1 068 365 947</td></tr>
<tr class="odd"><td>UNITED KI5</td><td>UNITED KI1</td><td>1 995</td><td>1 040 392 678</td></tr>
<tr><td>UNITED KI1</td><td>UNITED KI1</td><td>1 995</td><td>1 039 336 005</td></tr>
<tr class="odd"><td>UNITED KI1</td><td>UNITED KI5</td><td>1 996</td><td>1 062 077 548</td></tr>
<tr><td>UNITED KI5</td><td>UNITED KI5</td><td>1 996</td><td>958 571 109</td></tr>
<tr class="odd"><td>UNITED KI5</td><td>UNITED KI1</td><td>1 996</td><td>940 597 740</td></tr>
<tr><td>UNITED KI1</td><td>UNITED KI1</td><td>1 996</td><td>874 229 030</td></tr>
<tr class="odd"><td>UNITED KI1</td><td>UNITED KI5</td><td>1 997</td><td>1 163 355 766</td></tr>
<tr><td>UNITED KI1</td><td>UNITED KI1</td><td>1 997</td><td>982 350 529</td></tr>
<tr class="odd"><td>UNITED KI5</td><td>UNITED KI5</td><td>1 997</td><td>949 314 641</td></tr>
<tr><td>UNITED KI5</td><td>UNITED KI1</td><td>1 997</td><td>785 895 247</td></tr>
</table></body></html>


Q4.2
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
</head>
<body>
<table><tr><th colspan="4">SELECT<br>    toYear(LO_ORDERDATE) AS year,<br>    S_NATION,<br>    P_CATEGORY,<br>    sum(LO_REVENUE - LO_SUPPLYCOST) AS profit<br>FROM lineorder_flat<br>WHERE C_REGION = 'AMERICA' AND S_REGION = 'AMERICA' AND (year = 1997 OR year = 1998) AND (P_MFGR = 'MFGR#1' OR P_MFGR = 'MFGR#2')<br>GROUP BY<br>    year,<br>    S_NATION,<br>    P_CATEGORY<br>ORDER BY<br>    year ASC,<br>    S_NATION ASC,<br>    P_CATEGORY ASC</th></tr><tr><th>year</th><th>S_NATION</th><th>P_CATEGORY</th><th>profit</th></tr><tr class="odd"><td>1 997</td><td>ARGENTINA</td><td>MFGR#11</td><td>20 633 150 130</td></tr>
<tr><td>1 997</td><td>ARGENTINA</td><td>MFGR#12</td><td>20 911 142 211</td></tr>
<tr class="odd"><td>1 997</td><td>ARGENTINA</td><td>MFGR#13</td><td>20 751 352 336</td></tr>
<tr><td>1 997</td><td>ARGENTINA</td><td>MFGR#14</td><td>20 725 587 334</td></tr>
<tr class="odd"><td>1 997</td><td>ARGENTINA</td><td>MFGR#15</td><td>20 847 465 627</td></tr>
<tr><td>1 997</td><td>ARGENTINA</td><td>MFGR#21</td><td>20 249 876 951</td></tr>
<tr class="odd"><td>1 997</td><td>ARGENTINA</td><td>MFGR#22</td><td>21 302 749 143</td></tr>
<tr><td>1 997</td><td>ARGENTINA</td><td>MFGR#23</td><td>20 495 067 091</td></tr>
<tr class="odd"><td>1 997</td><td>ARGENTINA</td><td>MFGR#24</td><td>20 640 513 738</td></tr>
<tr><td>1 997</td><td>ARGENTINA</td><td>MFGR#25</td><td>20 581 166 907</td></tr>
<tr class="odd"><td>1 997</td><td>BRAZIL</td><td>MFGR#11</td><td>20 336 534 391</td></tr>
<tr><td>1 997</td><td>BRAZIL</td><td>MFGR#12</td><td>19 878 221 181</td></tr>
<tr class="odd"><td>1 997</td><td>BRAZIL</td><td>MFGR#13</td><td>19 800 437 055</td></tr>
<tr><td>1 997</td><td>BRAZIL</td><td>MFGR#14</td><td>19 931 925 060</td></tr>
<tr class="odd"><td>1 997</td><td>BRAZIL</td><td>MFGR#15</td><td>19 816 491 706</td></tr>
<tr><td>1 997</td><td>BRAZIL</td><td>MFGR#21</td><td>19 805 847 607</td></tr>
<tr class="odd"><td>1 997</td><td>BRAZIL</td><td>MFGR#22</td><td>20 195 348 769</td></tr>
<tr><td>1 997</td><td>BRAZIL</td><td>MFGR#23</td><td>20 074 204 925</td></tr>
<tr class="odd"><td>1 997</td><td>BRAZIL</td><td>MFGR#24</td><td>19 665 389 566</td></tr>
<tr><td>1 997</td><td>BRAZIL</td><td>MFGR#25</td><td>19 802 289 453</td></tr>
<tr class="odd"><td>1 997</td><td>CANADA</td><td>MFGR#11</td><td>20 993 920 907</td></tr>
<tr><td>1 997</td><td>CANADA</td><td>MFGR#12</td><td>20 788 212 732</td></tr>
<tr class="odd"><td>1 997</td><td>CANADA</td><td>MFGR#13</td><td>20 582 154 083</td></tr>
<tr><td>1 997</td><td>CANADA</td><td>MFGR#14</td><td>20 362 070 872</td></tr>
<tr class="odd"><td>1 997</td><td>CANADA</td><td>MFGR#15</td><td>21 019 323 130</td></tr>
<tr><td>1 997</td><td>CANADA</td><td>MFGR#21</td><td>20 628 385 631</td></tr>
<tr class="odd"><td>1 997</td><td>CANADA</td><td>MFGR#22</td><td>21 051 367 486</td></tr>
<tr><td>1 997</td><td>CANADA</td><td>MFGR#23</td><td>21 246 059 063</td></tr>
<tr class="odd"><td>1 997</td><td>CANADA</td><td>MFGR#24</td><td>20 899 413 741</td></tr>
<tr><td>1 997</td><td>CANADA</td><td>MFGR#25</td><td>20 371 722 143</td></tr>
<tr class="odd"><td>1 997</td><td>PERU</td><td>MFGR#11</td><td>20 123 262 396</td></tr>
<tr><td>1 997</td><td>PERU</td><td>MFGR#12</td><td>20 435 195 199</td></tr>
<tr class="odd"><td>1 997</td><td>PERU</td><td>MFGR#13</td><td>20 644 146 457</td></tr>
<tr><td>1 997</td><td>PERU</td><td>MFGR#14</td><td>20 792 194 518</td></tr>
<tr class="odd"><td>1 997</td><td>PERU</td><td>MFGR#15</td><td>20 257 979 054</td></tr>
<tr><td>1 997</td><td>PERU</td><td>MFGR#21</td><td>20 161 248 985</td></tr>
<tr class="odd"><td>1 997</td><td>PERU</td><td>MFGR#22</td><td>20 485 090 615</td></tr>
<tr><td>1 997</td><td>PERU</td><td>MFGR#23</td><td>20 348 873 210</td></tr>
<tr class="odd"><td>1 997</td><td>PERU</td><td>MFGR#24</td><td>20 678 352 774</td></tr>
<tr><td>1 997</td><td>PERU</td><td>MFGR#25</td><td>20 765 819 746</td></tr>
<tr class="odd"><td>1 997</td><td>UNITED STATES</td><td>MFGR#11</td><td>20 724 850 604</td></tr>
<tr><td>1 997</td><td>UNITED STATES</td><td>MFGR#12</td><td>20 017 511 699</td></tr>
<tr class="odd"><td>1 997</td><td>UNITED STATES</td><td>MFGR#13</td><td>21 016 131 045</td></tr>
<tr><td>1 997</td><td>UNITED STATES</td><td>MFGR#14</td><td>20 014 491 295</td></tr>
<tr class="odd"><td>1 997</td><td>UNITED STATES</td><td>MFGR#15</td><td>20 196 560 991</td></tr>
<tr><td>1 997</td><td>UNITED STATES</td><td>MFGR#21</td><td>20 531 748 627</td></tr>
<tr class="odd"><td>1 997</td><td>UNITED STATES</td><td>MFGR#22</td><td>20 882 575 322</td></tr>
<tr><td>1 997</td><td>UNITED STATES</td><td>MFGR#23</td><td>21 070 136 590</td></tr>
<tr class="odd"><td>1 997</td><td>UNITED STATES</td><td>MFGR#24</td><td>20 257 501 400</td></tr>
<tr><td>1 997</td><td>UNITED STATES</td><td>MFGR#25</td><td>20 251 954 880</td></tr>
<tr class="odd"><td>1 998</td><td>ARGENTINA</td><td>MFGR#11</td><td>12 288 150 848</td></tr>
<tr><td>1 998</td><td>ARGENTINA</td><td>MFGR#12</td><td>12 150 903 556</td></tr>
<tr class="odd"><td>1 998</td><td>ARGENTINA</td><td>MFGR#13</td><td>12 253 619 754</td></tr>
<tr><td>1 998</td><td>ARGENTINA</td><td>MFGR#14</td><td>11 761 221 854</td></tr>
<tr class="odd"><td>1 998</td><td>ARGENTINA</td><td>MFGR#15</td><td>12 044 241 064</td></tr>
<tr><td>1 998</td><td>ARGENTINA</td><td>MFGR#21</td><td>12 549 693 537</td></tr>
<tr class="odd"><td>1 998</td><td>ARGENTINA</td><td>MFGR#22</td><td>12 128 760 181</td></tr>
<tr><td>1 998</td><td>ARGENTINA</td><td>MFGR#23</td><td>12 047 927 880</td></tr>
<tr class="odd"><td>1 998</td><td>ARGENTINA</td><td>MFGR#24</td><td>12 335 758 706</td></tr>
<tr><td>1 998</td><td>ARGENTINA</td><td>MFGR#25</td><td>11 979 080 219</td></tr>
<tr class="odd"><td>1 998</td><td>BRAZIL</td><td>MFGR#11</td><td>11 647 118 611</td></tr>
<tr><td>1 998</td><td>BRAZIL</td><td>MFGR#12</td><td>11 765 031 850</td></tr>
<tr class="odd"><td>1 998</td><td>BRAZIL</td><td>MFGR#13</td><td>11 539 651 912</td></tr>
<tr><td>1 998</td><td>BRAZIL</td><td>MFGR#14</td><td>11 728 424 691</td></tr>
<tr class="odd"><td>1 998</td><td>BRAZIL</td><td>MFGR#15</td><td>12 047 145 706</td></tr>
<tr><td>1 998</td><td>BRAZIL</td><td>MFGR#21</td><td>11 782 460 918</td></tr>
<tr class="odd"><td>1 998</td><td>BRAZIL</td><td>MFGR#22</td><td>11 756 056 270</td></tr>
<tr><td>1 998</td><td>BRAZIL</td><td>MFGR#23</td><td>11 547 114 917</td></tr>
<tr class="odd"><td>1 998</td><td>BRAZIL</td><td>MFGR#24</td><td>12 102 760 874</td></tr>
<tr><td>1 998</td><td>BRAZIL</td><td>MFGR#25</td><td>12 136 894 531</td></tr>
<tr class="odd"><td>1 998</td><td>CANADA</td><td>MFGR#11</td><td>12 053 393 754</td></tr>
<tr><td>1 998</td><td>CANADA</td><td>MFGR#12</td><td>12 283 529 601</td></tr>
<tr class="odd"><td>1 998</td><td>CANADA</td><td>MFGR#13</td><td>12 468 524 366</td></tr>
<tr><td>1 998</td><td>CANADA</td><td>MFGR#14</td><td>12 417 969 344</td></tr>
<tr class="odd"><td>1 998</td><td>CANADA</td><td>MFGR#15</td><td>12 783 220 814</td></tr>
<tr><td>1 998</td><td>CANADA</td><td>MFGR#21</td><td>11 846 843 793</td></tr>
<tr class="odd"><td>1 998</td><td>CANADA</td><td>MFGR#22</td><td>12 420 965 086</td></tr>
<tr><td>1 998</td><td>CANADA</td><td>MFGR#23</td><td>11 510 243 336</td></tr>
<tr class="odd"><td>1 998</td><td>CANADA</td><td>MFGR#24</td><td>12 403 564 192</td></tr>
<tr><td>1 998</td><td>CANADA</td><td>MFGR#25</td><td>12 021 045 203</td></tr>
<tr class="odd"><td>1 998</td><td>PERU</td><td>MFGR#11</td><td>11 920 946 766</td></tr>
<tr><td>1 998</td><td>PERU</td><td>MFGR#12</td><td>11 722 265 770</td></tr>
<tr class="odd"><td>1 998</td><td>PERU</td><td>MFGR#13</td><td>11 830 328 247</td></tr>
<tr><td>1 998</td><td>PERU</td><td>MFGR#14</td><td>12 277 764 929</td></tr>
<tr class="odd"><td>1 998</td><td>PERU</td><td>MFGR#15</td><td>11 685 309 770</td></tr>
<tr><td>1 998</td><td>PERU</td><td>MFGR#21</td><td>11 570 486 758</td></tr>
<tr class="odd"><td>1 998</td><td>PERU</td><td>MFGR#22</td><td>12 064 845 586</td></tr>
<tr><td>1 998</td><td>PERU</td><td>MFGR#23</td><td>12 029 816 559</td></tr>
<tr class="odd"><td>1 998</td><td>PERU</td><td>MFGR#24</td><td>11 840 207 053</td></tr>
<tr><td>1 998</td><td>PERU</td><td>MFGR#25</td><td>11 605 382 452</td></tr>
<tr class="odd"><td>1 998</td><td>UNITED STATES</td><td>MFGR#11</td><td>12 111 987 890</td></tr>
<tr><td>1 998</td><td>UNITED STATES</td><td>MFGR#12</td><td>12 153 958 363</td></tr>
<tr class="odd"><td>1 998</td><td>UNITED STATES</td><td>MFGR#13</td><td>12 111 547 473</td></tr>
<tr><td>1 998</td><td>UNITED STATES</td><td>MFGR#14</td><td>12 164 432 343</td></tr>
<tr class="odd"><td>1 998</td><td>UNITED STATES</td><td>MFGR#15</td><td>12 163 317 594</td></tr>
<tr><td>1 998</td><td>UNITED STATES</td><td>MFGR#21</td><td>11 771 585 140</td></tr>
<tr class="odd"><td>1 998</td><td>UNITED STATES</td><td>MFGR#22</td><td>12 426 045 879</td></tr>
<tr><td>1 998</td><td>UNITED STATES</td><td>MFGR#23</td><td>12 062 197 640</td></tr>
<tr class="odd"><td>1 998</td><td>UNITED STATES</td><td>MFGR#24</td><td>11 953 726 571</td></tr>
<tr><td>1 998</td><td>UNITED STATES</td><td>MFGR#25</td><td>12 263 410 706</td></tr>
</table></body></html>
