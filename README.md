# dbt_DWA
Data Warehouse Analyst homework

1. Configure ClickHouse cluster with CLI

yc managed-clickhouse cluster create --name clickhouse_hw_1206 --environment production --network-name default --host type=clickhouse,zone-id=ru-central1-b,subnet-id=e2l5g4kt37lnn9cvvar3 --clickhouse-resource-preset s2.small --clickhouse-disk-type network-hdd --clickhouse-disk-size 20 --user name=admin1,password=password --database name=dbt --deletion-protection=true --version 22.3

3. Configure dbt project & run queries

Q2.1
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
</head>
<body>
<table align="left><tr><th colspan="3">SELECT<br>    sum(LO_REVENUE),<br>    toYear(LO_ORDERDATE) AS year,<br>    P_BRAND<br>FROM lineorder_flat<br>WHERE P_CATEGORY = 'MFGR#12' AND S_REGION = 'AMERICA'<br>GROUP BY<br>    year,<br>    P_BRAND<br>ORDER BY<br>    year,<br>    P_BRAND</th></tr><tr><th>sum(LO_REVENUE)</th><th>year</th><th>P_BRAND</th></tr><tr class="odd"><td>12 672 281 651</td><td>1 992</td><td>MFGR#121</td></tr>
<tr><td>13 001 303 186</td><td>1 992</td><td>MFGR#1210</td></tr>
<tr class="odd"><td>13 805 417 452</td><td>1 992</td><td>MFGR#1211</td></tr>
<tr><td>12 776 234 014</td><td>1 992</td><td>MFGR#1212</td></tr>
<tr class="odd"><td>13 433 864 328</td><td>1 992</td><td>MFGR#1213</td></tr>
<tr><td>13 581 771 711</td><td>1 992</td><td>MFGR#1214</td></tr>
<tr class="odd"><td>13 053 257 221</td><td>1 992</td><td>MFGR#1215</td></tr>
<tr><td>13 434 550 494</td><td>1 992</td><td>MFGR#1216</td></tr>
<tr class="odd"><td>14 000 667 157</td><td>1 992</td><td>MFGR#1217</td></tr>
<tr><td>13 682 184 743</td><td>1 992</td><td>MFGR#1218</td></tr>
<tr class="odd"><td>12 490 304 616</td><td>1 992</td><td>MFGR#1219</td></tr>
<tr><td>13 848 761 978</td><td>1 992</td><td>MFGR#122</td></tr>
<tr class="odd"><td>12 695 654 353</td><td>1 992</td><td>MFGR#1220</td></tr>
<tr><td>13 943 039 313</td><td>1 992</td><td>MFGR#1221</td></tr>
<tr class="odd"><td>12 816 003 837</td><td>1 992</td><td>MFGR#1222</td></tr>
<tr><td>12 731 556 625</td><td>1 992</td><td>MFGR#1223</td></tr>
<tr class="odd"><td>14 196 465 733</td><td>1 992</td><td>MFGR#1224</td></tr>
<tr><td>13 099 594 674</td><td>1 992</td><td>MFGR#1225</td></tr>
<tr class="odd"><td>13 837 724 673</td><td>1 992</td><td>MFGR#1226</td></tr>
<tr><td>12 835 260 089</td><td>1 992</td><td>MFGR#1227</td></tr>
<tr class="odd"><td>14 013 848 875</td><td>1 992</td><td>MFGR#1228</td></tr>
<tr><td>12 783 094 897</td><td>1 992</td><td>MFGR#1229</td></tr>
<tr class="odd"><td>13 190 480 233</td><td>1 992</td><td>MFGR#123</td></tr>
<tr><td>12 758 829 878</td><td>1 992</td><td>MFGR#1230</td></tr>
<tr class="odd"><td>13 706 848 098</td><td>1 992</td><td>MFGR#1231</td></tr>
<tr><td>15 111 172 085</td><td>1 992</td><td>MFGR#1232</td></tr>
<tr class="odd"><td>12 788 789 701</td><td>1 992</td><td>MFGR#1233</td></tr>
<tr><td>12 886 732 429</td><td>1 992</td><td>MFGR#1234</td></tr>
<tr class="odd"><td>14 200 745 630</td><td>1 992</td><td>MFGR#1235</td></tr>
<tr><td>13 699 711 844</td><td>1 992</td><td>MFGR#1236</td></tr>
<tr class="odd"><td>13 494 301 997</td><td>1 992</td><td>MFGR#1237</td></tr>
<tr><td>11 955 509 041</td><td>1 992</td><td>MFGR#1238</td></tr>
<tr class="odd"><td>12 522 692 893</td><td>1 992</td><td>MFGR#1239</td></tr>
<tr><td>13 128 373 576</td><td>1 992</td><td>MFGR#124</td></tr>
<tr class="odd"><td>13 900 238 799</td><td>1 992</td><td>MFGR#1240</td></tr>
<tr><td>12 889 269 530</td><td>1 992</td><td>MFGR#125</td></tr>
<tr class="odd"><td>12 072 098 894</td><td>1 992</td><td>MFGR#126</td></tr>
<tr><td>13 326 968 200</td><td>1 992</td><td>MFGR#127</td></tr>
<tr class="odd"><td>13 205 227 869</td><td>1 992</td><td>MFGR#128</td></tr>
<tr><td>12 060 639 481</td><td>1 992</td><td>MFGR#129</td></tr>
<tr class="odd"><td>12 913 064 170</td><td>1 993</td><td>MFGR#121</td></tr>
<tr><td>12 846 153 574</td><td>1 993</td><td>MFGR#1210</td></tr>
<tr class="odd"><td>13 319 472 884</td><td>1 993</td><td>MFGR#1211</td></tr>
<tr><td>12 656 867 131</td><td>1 993</td><td>MFGR#1212</td></tr>
<tr class="odd"><td>12 958 664 957</td><td>1 993</td><td>MFGR#1213</td></tr>
<tr><td>12 996 106 178</td><td>1 993</td><td>MFGR#1214</td></tr>
<tr class="odd"><td>13 749 400 474</td><td>1 993</td><td>MFGR#1215</td></tr>
<tr><td>13 156 279 495</td><td>1 993</td><td>MFGR#1216</td></tr>
<tr class="odd"><td>14 133 397 051</td><td>1 993</td><td>MFGR#1217</td></tr>
<tr><td>13 300 752 041</td><td>1 993</td><td>MFGR#1218</td></tr>
<tr class="odd"><td>13 188 526 927</td><td>1 993</td><td>MFGR#1219</td></tr>
<tr><td>13 669 006 986</td><td>1 993</td><td>MFGR#122</td></tr>
<tr class="odd"><td>13 151 060 231</td><td>1 993</td><td>MFGR#1220</td></tr>
<tr><td>13 520 271 743</td><td>1 993</td><td>MFGR#1221</td></tr>
<tr class="odd"><td>13 204 649 517</td><td>1 993</td><td>MFGR#1222</td></tr>
<tr><td>12 611 021 328</td><td>1 993</td><td>MFGR#1223</td></tr>
<tr class="odd"><td>13 706 017 203</td><td>1 993</td><td>MFGR#1224</td></tr>
<tr><td>13 193 613 398</td><td>1 993</td><td>MFGR#1225</td></tr>
<tr class="odd"><td>13 364 868 408</td><td>1 993</td><td>MFGR#1226</td></tr>
<tr><td>12 526 434 796</td><td>1 993</td><td>MFGR#1227</td></tr>
<tr class="odd"><td>13 885 781 315</td><td>1 993</td><td>MFGR#1228</td></tr>
<tr><td>12 645 170 012</td><td>1 993</td><td>MFGR#1229</td></tr>
<tr class="odd"><td>12 745 953 219</td><td>1 993</td><td>MFGR#123</td></tr>
<tr><td>12 882 547 721</td><td>1 993</td><td>MFGR#1230</td></tr>
<tr class="odd"><td>13 242 258 104</td><td>1 993</td><td>MFGR#1231</td></tr>
<tr><td>14 625 381 340</td><td>1 993</td><td>MFGR#1232</td></tr>
<tr class="odd"><td>13 028 652 414</td><td>1 993</td><td>MFGR#1233</td></tr>
<tr><td>13 523 711 079</td><td>1 993</td><td>MFGR#1234</td></tr>
<tr class="odd"><td>13 980 638 401</td><td>1 993</td><td>MFGR#1235</td></tr>
<tr><td>13 835 021 719</td><td>1 993</td><td>MFGR#1236</td></tr>
<tr class="odd"><td>13 741 524 787</td><td>1 993</td><td>MFGR#1237</td></tr>
<tr><td>11 844 760 060</td><td>1 993</td><td>MFGR#1238</td></tr>
<tr class="odd"><td>12 403 455 915</td><td>1 993</td><td>MFGR#1239</td></tr>
<tr><td>13 700 145 770</td><td>1 993</td><td>MFGR#124</td></tr>
<tr class="odd"><td>13 728 834 792</td><td>1 993</td><td>MFGR#1240</td></tr>
<tr><td>12 732 068 011</td><td>1 993</td><td>MFGR#125</td></tr>
<tr class="odd"><td>13 033 573 314</td><td>1 993</td><td>MFGR#126</td></tr>
<tr><td>13 878 439 267</td><td>1 993</td><td>MFGR#127</td></tr>
<tr class="odd"><td>13 234 183 624</td><td>1 993</td><td>MFGR#128</td></tr>
<tr><td>12 216 872 884</td><td>1 993</td><td>MFGR#129</td></tr>
<tr class="odd"><td>13 015 507 995</td><td>1 994</td><td>MFGR#121</td></tr>
<tr><td>13 415 972 840</td><td>1 994</td><td>MFGR#1210</td></tr>
<tr class="odd"><td>13 796 394 107</td><td>1 994</td><td>MFGR#1211</td></tr>
<tr><td>13 066 189 489</td><td>1 994</td><td>MFGR#1212</td></tr>
<tr class="odd"><td>13 171 981 606</td><td>1 994</td><td>MFGR#1213</td></tr>
<tr><td>13 014 609 731</td><td>1 994</td><td>MFGR#1214</td></tr>
<tr class="odd"><td>13 505 619 415</td><td>1 994</td><td>MFGR#1215</td></tr>
<tr><td>13 154 008 183</td><td>1 994</td><td>MFGR#1216</td></tr>
<tr class="odd"><td>13 993 249 029</td><td>1 994</td><td>MFGR#1217</td></tr>
<tr><td>13 447 685 058</td><td>1 994</td><td>MFGR#1218</td></tr>
<tr class="odd"><td>12 786 720 187</td><td>1 994</td><td>MFGR#1219</td></tr>
<tr><td>13 686 460 859</td><td>1 994</td><td>MFGR#122</td></tr>
<tr class="odd"><td>12 816 274 355</td><td>1 994</td><td>MFGR#1220</td></tr>
<tr><td>13 701 914 320</td><td>1 994</td><td>MFGR#1221</td></tr>
<tr class="odd"><td>12 973 502 122</td><td>1 994</td><td>MFGR#1222</td></tr>
<tr><td>12 097 673 606</td><td>1 994</td><td>MFGR#1223</td></tr>
<tr class="odd"><td>14 158 613 987</td><td>1 994</td><td>MFGR#1224</td></tr>
<tr><td>13 367 339 460</td><td>1 994</td><td>MFGR#1225</td></tr>
<tr class="odd"><td>13 592 369 907</td><td>1 994</td><td>MFGR#1226</td></tr>
<tr><td>12 688 300 755</td><td>1 994</td><td>MFGR#1227</td></tr>
<tr class="odd"><td>13 929 240 610</td><td>1 994</td><td>MFGR#1228</td></tr>
<tr><td>12 578 247 606</td><td>1 994</td><td>MFGR#1229</td></tr>
<tr class="odd"><td>12 902 018 098</td><td>1 994</td><td>MFGR#123</td></tr>
<tr><td>12 894 203 129</td><td>1 994</td><td>MFGR#1230</td></tr>
<tr class="odd"><td>12 881 299 936</td><td>1 994</td><td>MFGR#1231</td></tr>
<tr><td>14 986 840 428</td><td>1 994</td><td>MFGR#1232</td></tr>
<tr class="odd"><td>13 258 835 859</td><td>1 994</td><td>MFGR#1233</td></tr>
<tr><td>13 282 162 516</td><td>1 994</td><td>MFGR#1234</td></tr>
<tr class="odd"><td>13 523 371 719</td><td>1 994</td><td>MFGR#1235</td></tr>
<tr><td>14 052 867 150</td><td>1 994</td><td>MFGR#1236</td></tr>
<tr class="odd"><td>13 824 154 900</td><td>1 994</td><td>MFGR#1237</td></tr>
<tr><td>11 911 167 126</td><td>1 994</td><td>MFGR#1238</td></tr>
<tr class="odd"><td>12 650 040 050</td><td>1 994</td><td>MFGR#1239</td></tr>
<tr><td>13 372 816 683</td><td>1 994</td><td>MFGR#124</td></tr>
<tr class="odd"><td>13 874 852 324</td><td>1 994</td><td>MFGR#1240</td></tr>
<tr><td>13 113 458 783</td><td>1 994</td><td>MFGR#125</td></tr>
<tr class="odd"><td>12 443 110 357</td><td>1 994</td><td>MFGR#126</td></tr>
<tr><td>13 197 254 501</td><td>1 994</td><td>MFGR#127</td></tr>
<tr class="odd"><td>13 561 334 546</td><td>1 994</td><td>MFGR#128</td></tr>
<tr><td>12 215 960 647</td><td>1 994</td><td>MFGR#129</td></tr>
<tr class="odd"><td>12 548 988 553</td><td>1 995</td><td>MFGR#121</td></tr>
<tr><td>13 298 369 956</td><td>1 995</td><td>MFGR#1210</td></tr>
<tr class="odd"><td>13 620 817 848</td><td>1 995</td><td>MFGR#1211</td></tr>
<tr><td>12 610 662 225</td><td>1 995</td><td>MFGR#1212</td></tr>
<tr class="odd"><td>13 292 941 078</td><td>1 995</td><td>MFGR#1213</td></tr>
<tr><td>13 449 826 225</td><td>1 995</td><td>MFGR#1214</td></tr>
<tr class="odd"><td>13 210 454 604</td><td>1 995</td><td>MFGR#1215</td></tr>
<tr><td>13 281 112 431</td><td>1 995</td><td>MFGR#1216</td></tr>
<tr class="odd"><td>13 965 326 980</td><td>1 995</td><td>MFGR#1217</td></tr>
<tr><td>13 456 838 120</td><td>1 995</td><td>MFGR#1218</td></tr>
<tr class="odd"><td>12 636 008 879</td><td>1 995</td><td>MFGR#1219</td></tr>
<tr><td>13 596 382 674</td><td>1 995</td><td>MFGR#122</td></tr>
<tr class="odd"><td>13 263 424 971</td><td>1 995</td><td>MFGR#1220</td></tr>
<tr><td>13 880 780 596</td><td>1 995</td><td>MFGR#1221</td></tr>
<tr class="odd"><td>13 067 280 967</td><td>1 995</td><td>MFGR#1222</td></tr>
<tr><td>12 522 080 131</td><td>1 995</td><td>MFGR#1223</td></tr>
<tr class="odd"><td>13 648 591 095</td><td>1 995</td><td>MFGR#1224</td></tr>
<tr><td>13 489 508 329</td><td>1 995</td><td>MFGR#1225</td></tr>
<tr class="odd"><td>13 692 206 761</td><td>1 995</td><td>MFGR#1226</td></tr>
<tr><td>12 819 880 503</td><td>1 995</td><td>MFGR#1227</td></tr>
<tr class="odd"><td>14 290 014 609</td><td>1 995</td><td>MFGR#1228</td></tr>
<tr><td>12 684 929 098</td><td>1 995</td><td>MFGR#1229</td></tr>
<tr class="odd"><td>13 107 036 842</td><td>1 995</td><td>MFGR#123</td></tr>
<tr><td>12 456 838 286</td><td>1 995</td><td>MFGR#1230</td></tr>
<tr class="odd"><td>13 065 298 087</td><td>1 995</td><td>MFGR#1231</td></tr>
<tr><td>14 027 053 523</td><td>1 995</td><td>MFGR#1232</td></tr>
<tr class="odd"><td>12 626 335 379</td><td>1 995</td><td>MFGR#1233</td></tr>
<tr><td>12 935 669 993</td><td>1 995</td><td>MFGR#1234</td></tr>
<tr class="odd"><td>13 565 017 652</td><td>1 995</td><td>MFGR#1235</td></tr>
<tr><td>13 373 311 601</td><td>1 995</td><td>MFGR#1236</td></tr>
<tr class="odd"><td>14 124 141 780</td><td>1 995</td><td>MFGR#1237</td></tr>
<tr><td>11 700 287 744</td><td>1 995</td><td>MFGR#1238</td></tr>
<tr class="odd"><td>12 414 542 998</td><td>1 995</td><td>MFGR#1239</td></tr>
<tr><td>13 677 989 398</td><td>1 995</td><td>MFGR#124</td></tr>
<tr class="odd"><td>13 971 716 794</td><td>1 995</td><td>MFGR#1240</td></tr>
<tr><td>13 193 092 677</td><td>1 995</td><td>MFGR#125</td></tr>
<tr class="odd"><td>12 934 183 160</td><td>1 995</td><td>MFGR#126</td></tr>
<tr><td>13 113 323 851</td><td>1 995</td><td>MFGR#127</td></tr>
<tr class="odd"><td>13 642 471 572</td><td>1 995</td><td>MFGR#128</td></tr>
<tr><td>12 284 711 598</td><td>1 995</td><td>MFGR#129</td></tr>
<tr class="odd"><td>12 964 290 247</td><td>1 996</td><td>MFGR#121</td></tr>
<tr><td>13 069 002 816</td><td>1 996</td><td>MFGR#1210</td></tr>
<tr class="odd"><td>14 394 514 059</td><td>1 996</td><td>MFGR#1211</td></tr>
<tr><td>12 765 635 985</td><td>1 996</td><td>MFGR#1212</td></tr>
<tr class="odd"><td>13 152 629 772</td><td>1 996</td><td>MFGR#1213</td></tr>
<tr><td>12 874 185 514</td><td>1 996</td><td>MFGR#1214</td></tr>
<tr class="odd"><td>13 724 762 331</td><td>1 996</td><td>MFGR#1215</td></tr>
<tr><td>13 424 153 649</td><td>1 996</td><td>MFGR#1216</td></tr>
<tr class="odd"><td>13 945 542 686</td><td>1 996</td><td>MFGR#1217</td></tr>
<tr><td>13 821 368 995</td><td>1 996</td><td>MFGR#1218</td></tr>
<tr class="odd"><td>12 646 017 203</td><td>1 996</td><td>MFGR#1219</td></tr>
<tr><td>14 000 988 039</td><td>1 996</td><td>MFGR#122</td></tr>
<tr class="odd"><td>12 997 436 256</td><td>1 996</td><td>MFGR#1220</td></tr>
<tr><td>13 483 832 998</td><td>1 996</td><td>MFGR#1221</td></tr>
<tr class="odd"><td>12 786 027 627</td><td>1 996</td><td>MFGR#1222</td></tr>
<tr><td>12 246 975 901</td><td>1 996</td><td>MFGR#1223</td></tr>
<tr class="odd"><td>14 246 722 137</td><td>1 996</td><td>MFGR#1224</td></tr>
<tr><td>13 289 035 563</td><td>1 996</td><td>MFGR#1225</td></tr>
<tr class="odd"><td>13 471 416 801</td><td>1 996</td><td>MFGR#1226</td></tr>
<tr><td>12 633 157 628</td><td>1 996</td><td>MFGR#1227</td></tr>
<tr class="odd"><td>13 856 331 507</td><td>1 996</td><td>MFGR#1228</td></tr>
<tr><td>12 380 696 263</td><td>1 996</td><td>MFGR#1229</td></tr>
<tr class="odd"><td>12 868 757 234</td><td>1 996</td><td>MFGR#123</td></tr>
<tr><td>12 584 005 428</td><td>1 996</td><td>MFGR#1230</td></tr>
<tr class="odd"><td>13 171 910 923</td><td>1 996</td><td>MFGR#1231</td></tr>
<tr><td>14 770 510 635</td><td>1 996</td><td>MFGR#1232</td></tr>
<tr class="odd"><td>12 923 797 345</td><td>1 996</td><td>MFGR#1233</td></tr>
<tr><td>12 893 178 255</td><td>1 996</td><td>MFGR#1234</td></tr>
<tr class="odd"><td>14 348 335 024</td><td>1 996</td><td>MFGR#1235</td></tr>
<tr><td>13 657 838 112</td><td>1 996</td><td>MFGR#1236</td></tr>
<tr class="odd"><td>14 084 638 477</td><td>1 996</td><td>MFGR#1237</td></tr>
<tr><td>11 883 879 165</td><td>1 996</td><td>MFGR#1238</td></tr>
<tr class="odd"><td>12 988 292 013</td><td>1 996</td><td>MFGR#1239</td></tr>
<tr><td>13 662 170 114</td><td>1 996</td><td>MFGR#124</td></tr>
<tr class="odd"><td>14 042 075 637</td><td>1 996</td><td>MFGR#1240</td></tr>
<tr><td>12 971 867 897</td><td>1 996</td><td>MFGR#125</td></tr>
<tr class="odd"><td>12 691 828 718</td><td>1 996</td><td>MFGR#126</td></tr>
<tr><td>13 418 126 236</td><td>1 996</td><td>MFGR#127</td></tr>
<tr class="odd"><td>13 561 233 656</td><td>1 996</td><td>MFGR#128</td></tr>
<tr><td>12 402 579 373</td><td>1 996</td><td>MFGR#129</td></tr>
<tr class="odd"><td>12 623 446 461</td><td>1 997</td><td>MFGR#121</td></tr>
<tr><td>13 032 236 479</td><td>1 997</td><td>MFGR#1210</td></tr>
<tr class="odd"><td>13 956 119 522</td><td>1 997</td><td>MFGR#1211</td></tr>
<tr><td>12 579 772 347</td><td>1 997</td><td>MFGR#1212</td></tr>
<tr class="odd"><td>13 165 240 844</td><td>1 997</td><td>MFGR#1213</td></tr>
<tr><td>13 053 150 144</td><td>1 997</td><td>MFGR#1214</td></tr>
<tr class="odd"><td>13 594 352 209</td><td>1 997</td><td>MFGR#1215</td></tr>
<tr><td>13 434 552 589</td><td>1 997</td><td>MFGR#1216</td></tr>
<tr class="odd"><td>14 014 730 316</td><td>1 997</td><td>MFGR#1217</td></tr>
<tr><td>13 310 005 662</td><td>1 997</td><td>MFGR#1218</td></tr>
<tr class="odd"><td>13 292 211 404</td><td>1 997</td><td>MFGR#1219</td></tr>
<tr><td>13 686 592 704</td><td>1 997</td><td>MFGR#122</td></tr>
<tr class="odd"><td>12 992 165 647</td><td>1 997</td><td>MFGR#1220</td></tr>
<tr><td>13 493 962 072</td><td>1 997</td><td>MFGR#1221</td></tr>
<tr class="odd"><td>12 868 103 937</td><td>1 997</td><td>MFGR#1222</td></tr>
<tr><td>12 336 876 930</td><td>1 997</td><td>MFGR#1223</td></tr>
<tr class="odd"><td>14 299 976 456</td><td>1 997</td><td>MFGR#1224</td></tr>
<tr><td>13 318 244 222</td><td>1 997</td><td>MFGR#1225</td></tr>
<tr class="odd"><td>13 197 280 677</td><td>1 997</td><td>MFGR#1226</td></tr>
<tr><td>12 673 413 775</td><td>1 997</td><td>MFGR#1227</td></tr>
<tr class="odd"><td>14 214 738 649</td><td>1 997</td><td>MFGR#1228</td></tr>
<tr><td>12 636 639 801</td><td>1 997</td><td>MFGR#1229</td></tr>
<tr class="odd"><td>13 013 892 507</td><td>1 997</td><td>MFGR#123</td></tr>
<tr><td>12 877 479 781</td><td>1 997</td><td>MFGR#1230</td></tr>
<tr class="odd"><td>13 171 392 743</td><td>1 997</td><td>MFGR#1231</td></tr>
<tr><td>14 750 894 849</td><td>1 997</td><td>MFGR#1232</td></tr>
<tr class="odd"><td>12 863 032 096</td><td>1 997</td><td>MFGR#1233</td></tr>
<tr><td>12 983 888 218</td><td>1 997</td><td>MFGR#1234</td></tr>
<tr class="odd"><td>13 858 359 345</td><td>1 997</td><td>MFGR#1235</td></tr>
<tr><td>13 426 990 989</td><td>1 997</td><td>MFGR#1236</td></tr>
<tr class="odd"><td>14 121 908 843</td><td>1 997</td><td>MFGR#1237</td></tr>
<tr><td>11 549 152 306</td><td>1 997</td><td>MFGR#1238</td></tr>
<tr class="odd"><td>12 256 110 417</td><td>1 997</td><td>MFGR#1239</td></tr>
<tr><td>13 443 891 456</td><td>1 997</td><td>MFGR#124</td></tr>
<tr class="odd"><td>13 676 437 251</td><td>1 997</td><td>MFGR#1240</td></tr>
<tr><td>12 531 582 164</td><td>1 997</td><td>MFGR#125</td></tr>
<tr class="odd"><td>12 522 657 980</td><td>1 997</td><td>MFGR#126</td></tr>
<tr><td>13 585 159 821</td><td>1 997</td><td>MFGR#127</td></tr>
<tr class="odd"><td>13 327 530 904</td><td>1 997</td><td>MFGR#128</td></tr>
<tr><td>12 342 724 100</td><td>1 997</td><td>MFGR#129</td></tr>
<tr class="odd"><td>7 569 438 418</td><td>1 998</td><td>MFGR#121</td></tr>
<tr><td>7 792 556 928</td><td>1 998</td><td>MFGR#1210</td></tr>
<tr class="odd"><td>8 043 490 596</td><td>1 998</td><td>MFGR#1211</td></tr>
<tr><td>7 196 701 222</td><td>1 998</td><td>MFGR#1212</td></tr>
<tr class="odd"><td>7 981 049 903</td><td>1 998</td><td>MFGR#1213</td></tr>
<tr><td>7 605 825 009</td><td>1 998</td><td>MFGR#1214</td></tr>
<tr class="odd"><td>7 967 087 557</td><td>1 998</td><td>MFGR#1215</td></tr>
<tr><td>7 543 542 956</td><td>1 998</td><td>MFGR#1216</td></tr>
<tr class="odd"><td>8 108 839 661</td><td>1 998</td><td>MFGR#1217</td></tr>
<tr><td>7 637 530 413</td><td>1 998</td><td>MFGR#1218</td></tr>
<tr class="odd"><td>7 426 254 540</td><td>1 998</td><td>MFGR#1219</td></tr>
<tr><td>8 134 382 920</td><td>1 998</td><td>MFGR#122</td></tr>
<tr class="odd"><td>7 519 265 629</td><td>1 998</td><td>MFGR#1220</td></tr>
<tr><td>8 071 181 260</td><td>1 998</td><td>MFGR#1221</td></tr>
<tr class="odd"><td>7 599 263 148</td><td>1 998</td><td>MFGR#1222</td></tr>
<tr><td>7 366 631 661</td><td>1 998</td><td>MFGR#1223</td></tr>
<tr class="odd"><td>8 255 157 765</td><td>1 998</td><td>MFGR#1224</td></tr>
<tr><td>7 761 197 600</td><td>1 998</td><td>MFGR#1225</td></tr>
<tr class="odd"><td>8 380 750 746</td><td>1 998</td><td>MFGR#1226</td></tr>
<tr><td>7 176 752 842</td><td>1 998</td><td>MFGR#1227</td></tr>
<tr class="odd"><td>8 540 908 992</td><td>1 998</td><td>MFGR#1228</td></tr>
<tr><td>7 732 826 860</td><td>1 998</td><td>MFGR#1229</td></tr>
<tr class="odd"><td>7 778 915 813</td><td>1 998</td><td>MFGR#123</td></tr>
<tr><td>7 253 373 114</td><td>1 998</td><td>MFGR#1230</td></tr>
<tr class="odd"><td>7 615 184 866</td><td>1 998</td><td>MFGR#1231</td></tr>
<tr><td>8 504 193 275</td><td>1 998</td><td>MFGR#1232</td></tr>
<tr class="odd"><td>7 649 719 262</td><td>1 998</td><td>MFGR#1233</td></tr>
<tr><td>7 631 093 646</td><td>1 998</td><td>MFGR#1234</td></tr>
<tr class="odd"><td>8 094 634 731</td><td>1 998</td><td>MFGR#1235</td></tr>
<tr><td>8 354 429 462</td><td>1 998</td><td>MFGR#1236</td></tr>
<tr class="odd"><td>8 119 344 863</td><td>1 998</td><td>MFGR#1237</td></tr>
<tr><td>6 755 380 305</td><td>1 998</td><td>MFGR#1238</td></tr>
<tr class="odd"><td>7 397 451 291</td><td>1 998</td><td>MFGR#1239</td></tr>
<tr><td>7 947 399 165</td><td>1 998</td><td>MFGR#124</td></tr>
<tr class="odd"><td>8 331 229 217</td><td>1 998</td><td>MFGR#1240</td></tr>
<tr><td>7 672 739 882</td><td>1 998</td><td>MFGR#125</td></tr>
<tr class="odd"><td>7 369 144 299</td><td>1 998</td><td>MFGR#126</td></tr>
<tr><td>8 001 904 207</td><td>1 998</td><td>MFGR#127</td></tr>
<tr class="odd"><td>7 461 073 797</td><td>1 998</td><td>MFGR#128</td></tr>
<tr><td>6 974 038 529</td><td>1 998</td><td>MFGR#129</td></tr>
</table></body></html>

Q3.3
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
</head>
<body>
<table align="left><tr><th colspan="4">SELECT<br>    C_CITY,<br>    S_CITY,<br>    toYear(LO_ORDERDATE) AS year,<br>    sum(LO_REVENUE) AS revenue<br>FROM lineorder_flat<br>WHERE (C_CITY = 'UNITED KI1' OR C_CITY = 'UNITED KI5') AND (S_CITY = 'UNITED KI1' OR S_CITY = 'UNITED KI5') AND year &gt;= 1992 AND year &lt;= 1997<br>GROUP BY<br>    C_CITY,<br>    S_CITY,<br>    year<br>ORDER BY<br>    year ASC,<br>    revenue DESC</th></tr><tr><th>C_CITY</th><th>S_CITY</th><th>year</th><th>revenue</th></tr><tr class="odd"><td>UNITED KI1</td><td>UNITED KI5</td><td>1 992</td><td>1 178 335 603</td></tr>
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
<table align="left><tr><th colspan="4">SELECT<br>    toYear(LO_ORDERDATE) AS year,<br>    S_NATION,<br>    P_CATEGORY,<br>    sum(LO_REVENUE - LO_SUPPLYCOST) AS profit<br>FROM lineorder_flat<br>WHERE C_REGION = 'AMERICA' AND S_REGION = 'AMERICA' AND (year = 1997 OR year = 1998) AND (P_MFGR = 'MFGR#1' OR P_MFGR = 'MFGR#2')<br>GROUP BY<br>    year,<br>    S_NATION,<br>    P_CATEGORY<br>ORDER BY<br>    year ASC,<br>    S_NATION ASC,<br>    P_CATEGORY ASC</th></tr><tr><th>year</th><th>S_NATION</th><th>P_CATEGORY</th><th>profit</th></tr><tr class="odd"><td>1 997</td><td>ARGENTINA</td><td>MFGR#11</td><td>20 633 150 130</td></tr>
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
