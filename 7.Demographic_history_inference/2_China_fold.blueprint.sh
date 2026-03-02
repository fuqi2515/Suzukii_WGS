#!/bin/bash

#slurm options
#SBATCH -p intel-sc3,amd-ep2
#SBATCH -q huge
#SBATCH -J stairway
#SBATCH -c 1
#SBATCH -o stairway.%j.log

## user's own commands below

# Step 1: create .addTheta files. random_seed=3562673597345884113
date
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-1 32 0.67 -891736428816756759 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-2 32 0.67 7967503107597960947 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-3 32 0.67 -2577674684240567567 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-4 32 0.67 9083093260186375604 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-5 32 0.67 -6889882782096822846 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-6 32 0.67 5656453561650297829 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-7 32 0.67 7126072083399773032 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-8 32 0.67 -6956996197225887665 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-9 32 0.67 -1709069252289339062 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-10 32 0.67 597453561898503997 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-11 32 0.67 -2368869005937507701 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-12 32 0.67 8401657487483999878 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-13 32 0.67 3833536313448392115 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-14 32 0.67 3567050871992319433 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-15 32 0.67 -5086937120280899442 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-16 32 0.67 -556926163450419462 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-17 32 0.67 4428811558138224212 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-18 32 0.67 -9048978481675312354 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-19 32 0.67 -4976192224462339063 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-20 32 0.67 3491858971397285714 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-21 32 0.67 -8050752034159446234 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-22 32 0.67 -2682144765821350383 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-23 32 0.67 -7807759361962632583 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-24 32 0.67 -3613743469546739531 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-25 32 0.67 -8791796880629443255 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-26 32 0.67 6112845985930765630 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-27 32 0.67 -2371599833754994499 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-28 32 0.67 -4528101733996950447 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-29 32 0.67 3483691023953598333 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-30 32 0.67 1731444819333290884 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-31 32 0.67 -7116674606661880935 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-32 32 0.67 1234764200367849432 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-33 32 0.67 -9073077071411140950 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-34 32 0.67 -3911184037218749306 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-35 32 0.67 2522985936288278582 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-36 32 0.67 -193709315514283522 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-37 32 0.67 -6295175725222275496 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-38 32 0.67 1131085697527683372 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-39 32 0.67 4463999881192924320 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-40 32 0.67 2514895450506913532 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-41 32 0.67 9061956327190222135 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-42 32 0.67 -7677408548182557664 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-43 32 0.67 -6521870355159687097 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-44 32 0.67 -1555910066560797424 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-45 32 0.67 744142827769359769 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-46 32 0.67 7672990296174710354 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-47 32 0.67 -2613870553383058306 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-48 32 0.67 -157762513502637829 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-49 32 0.67 5667144709891085811 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-50 32 0.67 6702329033846686580 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-51 32 0.67 5663564163471148287 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-52 32 0.67 -1698264313819987327 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-53 32 0.67 -1729207072211922592 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-54 32 0.67 3022960604805654143 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-55 32 0.67 -2170826829679327130 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-56 32 0.67 5391757188597766381 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-57 32 0.67 -5310251305684672483 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-58 32 0.67 -575931944513487315 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-59 32 0.67 677892571670519985 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-60 32 0.67 4489382504617187210 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-61 32 0.67 6344668531003670542 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-62 32 0.67 -7407377228769590916 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-63 32 0.67 4791817449685816263 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-64 32 0.67 -7138450051374656981 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-65 32 0.67 3311757207056416056 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-66 32 0.67 8882246503928110129 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-67 32 0.67 748063704819774445 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-68 32 0.67 -2007585355630863964 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-69 32 0.67 -7277353298276003259 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-70 32 0.67 333776076137677650 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-71 32 0.67 7430359568395536466 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-72 32 0.67 5851630461648017486 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-73 32 0.67 6968380776981436675 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-74 32 0.67 6413923548077545899 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-75 32 0.67 -5226887096227789435 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-76 32 0.67 -6315206596002398585 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-77 32 0.67 5394264570902973157 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-78 32 0.67 2721762097812890699 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-79 32 0.67 -4217570675325479431 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-80 32 0.67 -3445207077223825616 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-81 32 0.67 -2798658115692949120 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-82 32 0.67 2565663565146033924 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-83 32 0.67 495316921741488776 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-84 32 0.67 908152348968819757 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-85 32 0.67 4057390740047767311 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-86 32 0.67 8084630502799360238 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-87 32 0.67 -8246468732272391443 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-88 32 0.67 3285922286754267880 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-89 32 0.67 -6371876708168775952 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-90 32 0.67 -4620225250745564956 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-91 32 0.67 7610811408939269704 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-92 32 0.67 8610147266223421647 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-93 32 0.67 6554262496363376165 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-94 32 0.67 -6015525883350029819 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-95 32 0.67 2728367664219530142 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-96 32 0.67 7162483164414662610 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-97 32 0.67 387462578172111828 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-98 32 0.67 1444323967887831092 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-99 32 0.67 -7587992871205854633 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-100 32 0.67 -7479955061812061467 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-101 32 0.67 8755069640901706184 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-102 32 0.67 -8181941921204882279 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-103 32 0.67 7694773039570295486 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-104 32 0.67 -6547780290081817980 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-105 32 0.67 4266787047122687213 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-106 32 0.67 -9212078135192606178 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-107 32 0.67 -3748357542741451131 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-108 32 0.67 1791453306208737578 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-109 32 0.67 7984923339886374359 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-110 32 0.67 3672999610077497843 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-111 32 0.67 -1853943077061854914 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-112 32 0.67 -8600721218604122151 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-113 32 0.67 5648505090891024700 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-114 32 0.67 -5966183977673058293 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-115 32 0.67 6475578498119305443 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-116 32 0.67 -227844192708285803 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-117 32 0.67 3533132285499078773 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-118 32 0.67 -5510236976557017187 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-119 32 0.67 8405516933981414990 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-120 32 0.67 78863184484590824 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-121 32 0.67 4236779517601305090 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-122 32 0.67 9203473383988793251 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-123 32 0.67 -8174316323546767934 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-124 32 0.67 5169670435348969056 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-125 32 0.67 -30652646351293949 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-126 32 0.67 4277235932937027422 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-127 32 0.67 841594185822746464 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-128 32 0.67 7590113170311585549 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-129 32 0.67 -4734696836223497537 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-130 32 0.67 4254305901912826576 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-131 32 0.67 6203983060280037299 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-132 32 0.67 -3865060564741331964 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-133 32 0.67 6709333706657219873 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-134 32 0.67 5466224798603552576 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-135 32 0.67 -7437336955172224987 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-136 32 0.67 1913950885404126174 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-137 32 0.67 -395205195782885066 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-138 32 0.67 2453229946257878970 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-139 32 0.67 2599772277969885063 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-140 32 0.67 3628933699679742777 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-141 32 0.67 -5008672946495781200 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-142 32 0.67 2093865626301811085 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-143 32 0.67 3135393930947306125 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-144 32 0.67 5501517135316869430 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-145 32 0.67 8226666818694886758 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-146 32 0.67 2491763371864322251 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-147 32 0.67 -282737766212647856 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-148 32 0.67 -5054841599383772167 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-149 32 0.67 -603454088078932526 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-150 32 0.67 5126659956090774732 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-151 32 0.67 -2221875551787966774 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-152 32 0.67 4249819218539822381 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-153 32 0.67 2792163277334284689 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-154 32 0.67 6368883949932285099 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-155 32 0.67 -5925590495212385443 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-156 32 0.67 1422959913830651517 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-157 32 0.67 2256795292911852519 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-158 32 0.67 2456878427823385543 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-159 32 0.67 5092359952606520141 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-160 32 0.67 -3378968078667123172 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-161 32 0.67 -2612975822883507656 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-162 32 0.67 8404445244016076356 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-163 32 0.67 -7367290492439062463 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-164 32 0.67 8214272354519894846 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-165 32 0.67 220290441669852304 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-166 32 0.67 -8621472117883529848 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-167 32 0.67 2711400411243994310 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-168 32 0.67 5891954240028445341 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-169 32 0.67 -4306814639686838756 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-170 32 0.67 6271817080439729342 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-171 32 0.67 -7772906810197795636 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-172 32 0.67 -4424900576562226443 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-173 32 0.67 -7224271494033537617 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-174 32 0.67 -1613188623903101610 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-175 32 0.67 -1039740213855877593 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-176 32 0.67 -4634469145887911545 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-177 32 0.67 2308382674922065470 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-178 32 0.67 7316383010465033091 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-179 32 0.67 -5068829015602405105 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-180 32 0.67 -9190864640678904166 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-181 32 0.67 6081203617040764772 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-182 32 0.67 -2690047479279476037 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-183 32 0.67 5362967092416182432 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-184 32 0.67 -77085214521193995 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-185 32 0.67 -8271458074560678433 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-186 32 0.67 8038213550411733563 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-187 32 0.67 5530801403998638939 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-188 32 0.67 -5397385513440436377 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-189 32 0.67 -6644914342678266863 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-190 32 0.67 -8117921042146879103 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-191 32 0.67 5273394110739872675 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-192 32 0.67 -1303761427797251264 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-193 32 0.67 1373939260982327936 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-194 32 0.67 3015896055455788240 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-195 32 0.67 -1215864406659164095 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-196 32 0.67 589302627809748693 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-197 32 0.67 -7346752746232625066 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-198 32 0.67 -1478032460212291153 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-199 32 0.67 -8376047522730994463 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-200 32 0.67 -962104901793893121 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-1 63 0.67 3142968581936425953 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-2 63 0.67 -8073532124481150102 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-3 63 0.67 -3668072053869798765 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-4 63 0.67 -445163973845004644 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-5 63 0.67 5131505757959510804 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-6 63 0.67 1735533283354476432 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-7 63 0.67 3824236351152691274 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-8 63 0.67 -5082924158125031667 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-9 63 0.67 5799033769669872645 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-10 63 0.67 -5178426507381728653 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-11 63 0.67 -8094780871996662944 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-12 63 0.67 -6571491798305771337 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-13 63 0.67 2287780933169780077 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-14 63 0.67 -3934881726724764757 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-15 63 0.67 6219652463577348112 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-16 63 0.67 2441578734331005314 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-17 63 0.67 -3442457917470843093 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-18 63 0.67 -1802067863970817389 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-19 63 0.67 3044762184533377531 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-20 63 0.67 -6517941188803700899 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-21 63 0.67 -4325191141867363647 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-22 63 0.67 -6687350232128834869 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-23 63 0.67 8534087677509833892 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-24 63 0.67 -7567042062518924104 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-25 63 0.67 -1065552115304465451 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-26 63 0.67 -1180438852527970124 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-27 63 0.67 -2797329898095236108 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-28 63 0.67 213448681257110792 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-29 63 0.67 -3494525427408418638 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-30 63 0.67 7502631171146550775 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-31 63 0.67 3228866782519119030 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-32 63 0.67 5763376087868901702 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-33 63 0.67 -6426096445455672636 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-34 63 0.67 3266237379790853630 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-35 63 0.67 -1889228431008662244 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-36 63 0.67 3898779485460999280 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-37 63 0.67 -7667583322562267360 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-38 63 0.67 -2230872322063824262 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-39 63 0.67 298214108172717368 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-40 63 0.67 3904442284169631751 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-41 63 0.67 6786582860389607161 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-42 63 0.67 -6631682765997682725 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-43 63 0.67 382316908805517188 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-44 63 0.67 -5933029863148195696 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-45 63 0.67 -1191732661976147924 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-46 63 0.67 -6229732971363010085 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-47 63 0.67 1911260854400491867 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-48 63 0.67 7874185366567959059 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-49 63 0.67 -6387602762284282443 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-50 63 0.67 1426930810070937588 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-51 63 0.67 7454892894040859517 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-52 63 0.67 7656976331507811487 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-53 63 0.67 -9109840311282294728 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-54 63 0.67 5656163654133522917 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-55 63 0.67 3729998890389701263 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-56 63 0.67 -4977902529325160252 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-57 63 0.67 -4616761217927180679 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-58 63 0.67 1008393523575704625 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-59 63 0.67 -3914742857166196839 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-60 63 0.67 -8025391530986351593 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-61 63 0.67 2079166873355804132 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-62 63 0.67 7757391006352821407 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-63 63 0.67 3663803410948515974 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-64 63 0.67 5381305009558365618 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-65 63 0.67 4908657860453272326 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-66 63 0.67 6242895630785201851 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-67 63 0.67 2600114362567061671 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-68 63 0.67 1047452285239335601 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-69 63 0.67 2367492046642842129 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-70 63 0.67 -5375092225542498220 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-71 63 0.67 3432832974740478257 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-72 63 0.67 -8408593686210147658 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-73 63 0.67 -8410007124889495716 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-74 63 0.67 2405964800725032444 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-75 63 0.67 -4237035490143102534 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-76 63 0.67 -5790514442731817883 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-77 63 0.67 281398212721448929 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-78 63 0.67 1983565336943773579 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-79 63 0.67 -7075698845239101248 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-80 63 0.67 2471613620869945833 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-81 63 0.67 8424577999433075134 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-82 63 0.67 -744330385414177636 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-83 63 0.67 -1061165760157531102 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-84 63 0.67 4544940028426562925 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-85 63 0.67 7362813261359973556 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-86 63 0.67 8219753785747788047 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-87 63 0.67 4171020823201995173 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-88 63 0.67 3663437720418930084 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-89 63 0.67 -6121308725643097429 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-90 63 0.67 5148127936523045253 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-91 63 0.67 6513185304674353008 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-92 63 0.67 -7860137823011958206 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-93 63 0.67 6106321881102673964 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-94 63 0.67 5570311407990403047 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-95 63 0.67 -5648085588079375216 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-96 63 0.67 8432901323286177921 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-97 63 0.67 -6975764121307028251 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-98 63 0.67 1266731173504710624 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-99 63 0.67 449486525382680949 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-100 63 0.67 -7026402634993926243 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-101 63 0.67 -6807034491423521751 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-102 63 0.67 -164069632855215266 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-103 63 0.67 4355400519944843379 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-104 63 0.67 -2704411866713619112 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-105 63 0.67 -4133924587089750674 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-106 63 0.67 -87818534340946155 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-107 63 0.67 8546740652644308546 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-108 63 0.67 -1697512553662483849 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-109 63 0.67 8453260966702601421 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-110 63 0.67 -2798117385540464900 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-111 63 0.67 -7406159122876415361 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-112 63 0.67 -4816763580177193150 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-113 63 0.67 -2648820501573215355 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-114 63 0.67 -1289036198913072435 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-115 63 0.67 2995990681404534825 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-116 63 0.67 123937693692762120 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-117 63 0.67 -9183441886610349961 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-118 63 0.67 4467087671559056009 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-119 63 0.67 2747514769198902820 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-120 63 0.67 -3047258972713268839 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-121 63 0.67 2718706630523455659 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-122 63 0.67 -2300301565273533710 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-123 63 0.67 -4151161331500369991 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-124 63 0.67 -2715347531230814774 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-125 63 0.67 8091817698583513035 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-126 63 0.67 -192745899222650352 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-127 63 0.67 562700750583569684 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-128 63 0.67 8499180138928828405 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-129 63 0.67 1609742310179623075 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-130 63 0.67 -7399912034459898963 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-131 63 0.67 -8353579031222715451 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-132 63 0.67 1216198084494524790 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-133 63 0.67 -8362717208973634137 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-134 63 0.67 1830208595732866521 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-135 63 0.67 -7734527432002926784 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-136 63 0.67 -4269176891423082961 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-137 63 0.67 -5692671253470455443 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-138 63 0.67 -8661932021058138778 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-139 63 0.67 -2975451685522464419 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-140 63 0.67 -7340983242503249659 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-141 63 0.67 -6843900952385335506 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-142 63 0.67 358331724012890732 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-143 63 0.67 8746834071224599256 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-144 63 0.67 -555636258027200416 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-145 63 0.67 -7931588170706826422 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-146 63 0.67 -5208008227013540665 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-147 63 0.67 -3425500216258300974 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-148 63 0.67 6708630680565959343 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-149 63 0.67 -6781735392640252991 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-150 63 0.67 -3399949122531436396 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-151 63 0.67 5455105805338072142 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-152 63 0.67 -3779221564539311390 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-153 63 0.67 -8092006696730074950 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-154 63 0.67 -1953169907234481480 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-155 63 0.67 -6681913500631812939 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-156 63 0.67 -6826117040705729298 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-157 63 0.67 -7178568180200235776 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-158 63 0.67 -844342453278601895 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-159 63 0.67 -9202420999911588270 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-160 63 0.67 -6035645565632832947 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-161 63 0.67 4594438412798162559 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-162 63 0.67 -743923507945544606 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-163 63 0.67 -4593641897359922217 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-164 63 0.67 7739207930082756219 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-165 63 0.67 -1336620030300508468 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-166 63 0.67 -7064901207616325116 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-167 63 0.67 -511136113578634793 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-168 63 0.67 6768891934770662266 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-169 63 0.67 -2134353486441047141 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-170 63 0.67 7824735106783548208 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-171 63 0.67 1283707613972281161 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-172 63 0.67 2762524026083571279 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-173 63 0.67 -2973989530513799354 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-174 63 0.67 -5089201006844627939 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-175 63 0.67 -6936352850510938613 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-176 63 0.67 1128627704097538946 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-177 63 0.67 8869103549000622413 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-178 63 0.67 -7101778787174202168 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-179 63 0.67 3277328344596798301 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-180 63 0.67 3785042691912747938 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-181 63 0.67 -2664342200777605424 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-182 63 0.67 1645604872017855855 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-183 63 0.67 -4255811819994423198 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-184 63 0.67 2356834133706948543 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-185 63 0.67 1910990692577520407 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-186 63 0.67 -5545147710923107563 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-187 63 0.67 -2709825887881243997 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-188 63 0.67 5148190821077366254 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-189 63 0.67 -8731477469101799413 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-190 63 0.67 7082514183767571458 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-191 63 0.67 3701318803984045195 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-192 63 0.67 1284411466315990473 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-193 63 0.67 -7004842760020377926 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-194 63 0.67 -3278005416044239808 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-195 63 0.67 -9112739654190359061 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-196 63 0.67 -7364313420794776340 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-197 63 0.67 -8523631940725375018 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-198 63 0.67 -3006626548814857697 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-199 63 0.67 3569392248235541624 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-200 63 0.67 6898751933379523449 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-1 94 0.67 8013759953414575159 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-2 94 0.67 -1648900243891651919 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-3 94 0.67 6676829485141824584 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-4 94 0.67 7608404479738554517 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-5 94 0.67 5024659410767756629 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-6 94 0.67 -2883887235812194737 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-7 94 0.67 -2034544530259052455 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-8 94 0.67 4899029914866601705 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-9 94 0.67 -534620649078987314 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-10 94 0.67 -1024466896937581294 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-11 94 0.67 8712613804026360586 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-12 94 0.67 5690655003587993889 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-13 94 0.67 4161193448134320614 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-14 94 0.67 -1632645356119483558 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-15 94 0.67 -4285162962751838560 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-16 94 0.67 -7415871910264859024 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-17 94 0.67 -1237938047324815358 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-18 94 0.67 -4678337511647465909 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-19 94 0.67 -2150235809666404925 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-20 94 0.67 5547952854622449419 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-21 94 0.67 -1461556327828625108 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-22 94 0.67 -7042710398352574389 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-23 94 0.67 2884005316894458878 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-24 94 0.67 6846678485729185961 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-25 94 0.67 -7411571447598198382 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-26 94 0.67 -7578357228462559866 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-27 94 0.67 -8356878815173919166 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-28 94 0.67 -5109633920550079734 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-29 94 0.67 4029879987513653511 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-30 94 0.67 -9089484319595335574 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-31 94 0.67 -6994754261691549 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-32 94 0.67 -7128593011228369811 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-33 94 0.67 -5934889852669903999 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-34 94 0.67 3194528232930498091 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-35 94 0.67 -3630183861849901926 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-36 94 0.67 6231171736510017048 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-37 94 0.67 3040114581854187929 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-38 94 0.67 1788689512145468224 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-39 94 0.67 6071932653591754241 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-40 94 0.67 -7063045537724366637 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-41 94 0.67 -9129535508837146354 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-42 94 0.67 -4172712320236509212 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-43 94 0.67 -8863843905730296038 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-44 94 0.67 4778979135515758957 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-45 94 0.67 -4179588538922877630 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-46 94 0.67 7916010820462150806 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-47 94 0.67 2796197653129689929 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-48 94 0.67 -4366098928088056522 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-49 94 0.67 -7958210158151518277 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-50 94 0.67 -7193344355173638503 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-51 94 0.67 3980664159162704469 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-52 94 0.67 -8230325758276465021 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-53 94 0.67 7105109891881279652 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-54 94 0.67 -3086263699559072651 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-55 94 0.67 -5390895342023855893 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-56 94 0.67 7908515278520998190 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-57 94 0.67 -6039430589291915447 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-58 94 0.67 -4891138784637287820 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-59 94 0.67 -4438048328207058661 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-60 94 0.67 -6713537694233827565 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-61 94 0.67 -9216825355770115425 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-62 94 0.67 -3165603606535772378 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-63 94 0.67 5736616781714797273 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-64 94 0.67 -5383768704117771116 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-65 94 0.67 4232614841061460409 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-66 94 0.67 -38227836605466659 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-67 94 0.67 8501547522386023549 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-68 94 0.67 -3390402850382725866 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-69 94 0.67 4205885413149402196 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-70 94 0.67 6457842204108139826 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-71 94 0.67 4078298891144395587 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-72 94 0.67 -1036668559851694206 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-73 94 0.67 8531246349890919244 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-74 94 0.67 -2175947282181320834 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-75 94 0.67 -6400916309101993012 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-76 94 0.67 -7017208094170963259 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-77 94 0.67 -4674304240113835740 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-78 94 0.67 -5375902939683951774 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-79 94 0.67 4824536986426929820 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-80 94 0.67 5510488966960267856 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-81 94 0.67 -8555738110291055997 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-82 94 0.67 4858315924195284544 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-83 94 0.67 1574263239861292186 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-84 94 0.67 -4852913019521946984 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-85 94 0.67 7765759767870066354 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-86 94 0.67 -484279566894120257 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-87 94 0.67 2519262811380088722 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-88 94 0.67 -2532771776598426217 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-89 94 0.67 -2150074744245503969 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-90 94 0.67 7319496747539490122 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-91 94 0.67 -5244314759821690186 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-92 94 0.67 -5161642756316334263 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-93 94 0.67 8664576245769528540 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-94 94 0.67 -5520803243448653678 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-95 94 0.67 -6358346688925165799 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-96 94 0.67 535258711633308209 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-97 94 0.67 4597960177154438944 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-98 94 0.67 -5960736585984282104 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-99 94 0.67 -4958930980291252173 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-100 94 0.67 -3922976693750772783 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-101 94 0.67 6044668027923568069 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-102 94 0.67 3243286633671390820 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-103 94 0.67 5903823009709837408 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-104 94 0.67 2404045666849575221 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-105 94 0.67 4072522020736949448 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-106 94 0.67 -455446623783100895 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-107 94 0.67 -2206979157405330079 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-108 94 0.67 6435800513795660649 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-109 94 0.67 1814511630338907597 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-110 94 0.67 -7226727611770701314 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-111 94 0.67 -267018733993664295 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-112 94 0.67 -7898196514292665346 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-113 94 0.67 4849529774333325465 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-114 94 0.67 -7273714079515441282 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-115 94 0.67 8283375918145931472 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-116 94 0.67 2210214035678108042 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-117 94 0.67 -4792595034148236394 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-118 94 0.67 -1051080552966978199 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-119 94 0.67 -8366441713568459724 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-120 94 0.67 -918097401067774940 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-121 94 0.67 -8686179376674628526 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-122 94 0.67 3988311811542227017 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-123 94 0.67 8508512566581964628 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-124 94 0.67 -1291241228229228052 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-125 94 0.67 -2181769941270530048 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-126 94 0.67 4081713327707029230 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-127 94 0.67 -2580017256096533405 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-128 94 0.67 -1910377376053761151 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-129 94 0.67 -606260469118239755 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-130 94 0.67 2974630602049197802 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-131 94 0.67 -1148885619808386053 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-132 94 0.67 -7443612731794255735 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-133 94 0.67 7564009430030304812 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-134 94 0.67 -6210922280220462826 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-135 94 0.67 6665034284366523799 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-136 94 0.67 -6812271861574357971 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-137 94 0.67 9013860756981460419 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-138 94 0.67 2815284336187569675 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-139 94 0.67 5421125614062004247 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-140 94 0.67 8685296991744278937 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-141 94 0.67 4186305407057412988 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-142 94 0.67 -1834333438478902614 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-143 94 0.67 1406195481042737728 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-144 94 0.67 8635219304126275713 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-145 94 0.67 4114266545715077693 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-146 94 0.67 4446050789813789845 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-147 94 0.67 3860562920379953978 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-148 94 0.67 -8763416096284462697 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-149 94 0.67 -3368290564919898224 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-150 94 0.67 590485337899794099 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-151 94 0.67 -129374331754491120 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-152 94 0.67 -4373543484930845930 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-153 94 0.67 2294172271972609060 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-154 94 0.67 7911299845917220272 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-155 94 0.67 -8290306042488372429 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-156 94 0.67 1631034611013109050 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-157 94 0.67 -8762342144324275126 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-158 94 0.67 7948652543438976122 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-159 94 0.67 -89399507912065288 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-160 94 0.67 550937732186252997 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-161 94 0.67 8323325793184829560 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-162 94 0.67 8576413439286474949 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-163 94 0.67 3321921372070169621 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-164 94 0.67 -7359349782232202884 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-165 94 0.67 -5929830470653839926 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-166 94 0.67 8809231945318807432 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-167 94 0.67 -3399147515145379032 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-168 94 0.67 4261745328056133288 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-169 94 0.67 -2049752664806730116 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-170 94 0.67 -6978424184976246402 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-171 94 0.67 -4946394494523365328 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-172 94 0.67 -122572387454313578 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-173 94 0.67 -648909852152798607 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-174 94 0.67 -6565890036780894297 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-175 94 0.67 -5193483274554920174 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-176 94 0.67 8597241984396498455 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-177 94 0.67 6154574319564199855 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-178 94 0.67 -9106084923107860540 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-179 94 0.67 -5764653304837937131 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-180 94 0.67 -8139124737892284159 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-181 94 0.67 -5688909741430431007 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-182 94 0.67 -7256350146389350178 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-183 94 0.67 -2517695969339482010 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-184 94 0.67 -8218410692839276372 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-185 94 0.67 -7225908380274552877 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-186 94 0.67 3798989968268507071 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-187 94 0.67 6152474753234330261 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-188 94 0.67 7943232289398263669 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-189 94 0.67 -3030393919229031942 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-190 94 0.67 5742819753687667575 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-191 94 0.67 -8031301801168262378 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-192 94 0.67 4577391556564814398 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-193 94 0.67 -6847802565191947030 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-194 94 0.67 5859183481080637913 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-195 94 0.67 7977662314231088321 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-196 94 0.67 497936746626143468 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-197 94 0.67 380645554563867869 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-198 94 0.67 3117827196165563387 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-199 94 0.67 -1943851975729122989 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-200 94 0.67 1145921945395773160 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-1 126 0.67 -3847915667830186189 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-2 126 0.67 -6182678213129549126 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-3 126 0.67 -5724616560785939989 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-4 126 0.67 1426939714729078687 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-5 126 0.67 -3357026724697470228 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-6 126 0.67 -3589206390078670029 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-7 126 0.67 6392237931026153357 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-8 126 0.67 -693744723403152638 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-9 126 0.67 -7380218677072713424 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-10 126 0.67 -4611452977679209653 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-11 126 0.67 6416136636757738403 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-12 126 0.67 1722295078912849415 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-13 126 0.67 330457018004729287 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-14 126 0.67 770992025461603881 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-15 126 0.67 -9093355655922474890 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-16 126 0.67 7351439706147259174 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-17 126 0.67 -3646153858654326878 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-18 126 0.67 4515390337140779190 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-19 126 0.67 9063061259062901177 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-20 126 0.67 7340297012942278364 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-21 126 0.67 -4389955570084140720 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-22 126 0.67 594017968570476068 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-23 126 0.67 -927069672634176257 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-24 126 0.67 7741754162401969195 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-25 126 0.67 -8174864573490837111 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-26 126 0.67 1260118690923936868 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-27 126 0.67 -1985903788285285824 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-28 126 0.67 1388360284570222872 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-29 126 0.67 -5819058337508125785 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-30 126 0.67 -4921538349025734482 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-31 126 0.67 -3603476336467534760 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-32 126 0.67 -2541121451607805140 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-33 126 0.67 7309439684283076648 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-34 126 0.67 -2680814224233362435 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-35 126 0.67 8871497232232505736 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-36 126 0.67 8405126464104842228 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-37 126 0.67 8398626164203244846 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-38 126 0.67 2427150719721951120 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-39 126 0.67 -5319863035317677069 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-40 126 0.67 -2817230366610205311 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-41 126 0.67 198621626989637375 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-42 126 0.67 -2583928515379906197 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-43 126 0.67 -4229880040515984862 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-44 126 0.67 -42636898395779351 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-45 126 0.67 6813428765263024261 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-46 126 0.67 -1734560883755403052 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-47 126 0.67 2105394395423045505 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-48 126 0.67 1404953720538872004 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-49 126 0.67 2184089783215010766 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-50 126 0.67 -7198591068462779690 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-51 126 0.67 -3270579984979315488 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-52 126 0.67 -5868536377968006737 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-53 126 0.67 -2247917289825140083 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-54 126 0.67 8268376681156589249 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-55 126 0.67 1863902361263339762 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-56 126 0.67 -6222414161924898100 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-57 126 0.67 -1059310878932853097 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-58 126 0.67 -2979480074952867160 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-59 126 0.67 -7765116820212860719 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-60 126 0.67 5132766661432654913 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-61 126 0.67 3800697610978509415 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-62 126 0.67 7751213849596729313 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-63 126 0.67 4661990777078622328 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-64 126 0.67 9035358571348459956 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-65 126 0.67 1228212547584848284 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-66 126 0.67 -8853786958968840311 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-67 126 0.67 -6482326756033055928 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-68 126 0.67 1879689843132227286 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-69 126 0.67 8253951583813794166 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-70 126 0.67 5012400607361392382 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-71 126 0.67 3674108699698693252 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-72 126 0.67 6078100774966639573 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-73 126 0.67 -5823827998021025444 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-74 126 0.67 774521861456854115 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-75 126 0.67 -2277488441590505516 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-76 126 0.67 2197870512864668135 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-77 126 0.67 -3899530851331986600 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-78 126 0.67 7300394303473668895 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-79 126 0.67 -2827062523580020282 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-80 126 0.67 3943123318634708934 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-81 126 0.67 -8915268012599950183 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-82 126 0.67 -3262831091144992674 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-83 126 0.67 5167810602705158216 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-84 126 0.67 -8890665338242202065 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-85 126 0.67 -4634890719259163152 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-86 126 0.67 -2837609537850503282 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-87 126 0.67 8868297553802380080 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-88 126 0.67 -3775893024362122142 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-89 126 0.67 -1588719259827248044 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-90 126 0.67 -1374242494065439004 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-91 126 0.67 3365864540440489140 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-92 126 0.67 1959443380116651173 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-93 126 0.67 -7652913679380680354 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-94 126 0.67 -3795455305591942187 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-95 126 0.67 3705123083451849202 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-96 126 0.67 -5791502765647353663 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-97 126 0.67 -1628294527053575219 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-98 126 0.67 8517872795729766301 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-99 126 0.67 -6896717365904235670 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-100 126 0.67 2759777755667646083 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-101 126 0.67 4732901610530611204 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-102 126 0.67 2757034516578030523 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-103 126 0.67 7310833909327603070 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-104 126 0.67 214734333623379004 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-105 126 0.67 4856891836388915335 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-106 126 0.67 -2797230511363922317 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-107 126 0.67 7366328749552474361 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-108 126 0.67 -8946683953034339006 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-109 126 0.67 -7567804268067348862 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-110 126 0.67 377365627141769035 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-111 126 0.67 4024357871404759941 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-112 126 0.67 -6076505858740717971 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-113 126 0.67 -5277763234021815742 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-114 126 0.67 3795313357590682510 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-115 126 0.67 4720539900546353203 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-116 126 0.67 4243668108189829787 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-117 126 0.67 -8427408243300604999 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-118 126 0.67 -1070659814083036468 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-119 126 0.67 4707481249582481399 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-120 126 0.67 662057371978860332 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-121 126 0.67 734995897999987454 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-122 126 0.67 8410159771695543128 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-123 126 0.67 2981028899739632170 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-124 126 0.67 -3250508847576844154 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-125 126 0.67 -5295685413316501301 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-126 126 0.67 799814377123159752 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-127 126 0.67 -2378639123707742970 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-128 126 0.67 1617961338848208530 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-129 126 0.67 -7006814028326787331 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-130 126 0.67 -1503654228027734407 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-131 126 0.67 -6481921432170070482 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-132 126 0.67 1125498721146585405 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-133 126 0.67 8767517104888418584 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-134 126 0.67 -7658756623223351287 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-135 126 0.67 -1675192896267318493 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-136 126 0.67 3972096817665989880 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-137 126 0.67 -8101812055709504319 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-138 126 0.67 8408115370611927515 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-139 126 0.67 -7188939428683126321 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-140 126 0.67 -1221019203071705287 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-141 126 0.67 7563910920411155009 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-142 126 0.67 -8547278370350297194 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-143 126 0.67 -5112480645118152450 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-144 126 0.67 3257288105629645560 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-145 126 0.67 -6622088812686709495 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-146 126 0.67 8633204499614170790 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-147 126 0.67 2179587276745652448 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-148 126 0.67 433595213634657587 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-149 126 0.67 -1851924367880123352 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-150 126 0.67 2356471417277317818 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-151 126 0.67 -4848488483119406199 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-152 126 0.67 -864805852252395158 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-153 126 0.67 -7354660215679065385 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-154 126 0.67 5326843528277705284 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-155 126 0.67 1720628721287066994 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-156 126 0.67 -7446350689440127453 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-157 126 0.67 890392709888250094 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-158 126 0.67 -8507163945127849220 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-159 126 0.67 4024962814967285 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-160 126 0.67 9035125795283351911 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-161 126 0.67 -8439401461417194644 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-162 126 0.67 -4011597079360872866 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-163 126 0.67 -1588451782156300332 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-164 126 0.67 849586961804481859 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-165 126 0.67 5829653242427399410 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-166 126 0.67 3068519791041631783 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-167 126 0.67 7938074100185762226 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-168 126 0.67 -8183428073559198648 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-169 126 0.67 8403570618742289992 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-170 126 0.67 3578359393058109660 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-171 126 0.67 5376743491156913816 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-172 126 0.67 -8358495851224029684 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-173 126 0.67 -9008181148982571304 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-174 126 0.67 2448924550808954434 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-175 126 0.67 -5232241359661379982 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-176 126 0.67 4057283092669475751 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-177 126 0.67 2795320571683411246 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-178 126 0.67 -8290167327059704857 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-179 126 0.67 -52036839500300656 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-180 126 0.67 551988809355437111 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-181 126 0.67 729380758048518014 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-182 126 0.67 -572188596831686248 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-183 126 0.67 1444603647099003430 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-184 126 0.67 -6156756578296444580 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-185 126 0.67 2053143757839387678 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-186 126 0.67 3116206850379369961 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-187 126 0.67 4993774420401947340 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-188 126 0.67 -2832448778333340740 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-189 126 0.67 -8400457259354340857 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-190 126 0.67 -6551723335694939471 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-191 126 0.67 6364272539489155326 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-192 126 0.67 6607609128485707648 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-193 126 0.67 452730469160567128 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-194 126 0.67 1211065037155733898 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-195 126 0.67 -116513600716249956 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-196 126 0.67 -4956222789734446890 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-197 126 0.67 6461367311655064531 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-198 126 0.67 6883737420310247509 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-199 126 0.67 1034447101093033324 1.0 2000
java -Xmx1g -cp stairway_plot_es/:stairway_plot_es/swarmops.jar Stairway_fold_training_testing8 China_fold/input/China-200 126 0.67 -4242612368753444755 1.0 2000
date
# Step 2: determine number of break points
mv -f China_fold/input/China-1.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-2.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-3.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-4.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-5.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-6.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-7.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-8.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-9.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-10.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-11.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-12.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-13.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-14.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-15.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-16.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-17.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-18.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-19.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-20.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-21.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-22.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-23.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-24.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-25.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-26.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-27.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-28.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-29.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-30.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-31.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-32.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-33.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-34.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-35.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-36.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-37.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-38.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-39.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-40.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-41.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-42.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-43.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-44.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-45.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-46.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-47.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-48.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-49.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-50.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-51.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-52.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-53.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-54.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-55.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-56.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-57.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-58.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-59.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-60.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-61.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-62.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-63.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-64.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-65.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-66.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-67.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-68.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-69.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-70.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-71.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-72.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-73.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-74.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-75.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-76.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-77.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-78.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-79.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-80.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-81.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-82.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-83.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-84.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-85.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-86.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-87.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-88.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-89.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-90.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-91.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-92.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-93.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-94.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-95.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-96.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-97.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-98.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-99.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-100.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-101.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-102.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-103.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-104.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-105.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-106.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-107.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-108.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-109.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-110.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-111.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-112.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-113.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-114.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-115.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-116.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-117.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-118.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-119.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-120.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-121.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-122.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-123.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-124.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-125.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-126.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-127.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-128.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-129.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-130.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-131.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-132.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-133.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-134.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-135.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-136.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-137.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-138.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-139.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-140.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-141.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-142.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-143.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-144.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-145.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-146.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-147.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-148.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-149.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-150.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-151.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-152.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-153.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-154.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-155.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-156.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-157.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-158.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-159.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-160.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-161.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-162.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-163.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-164.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-165.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-166.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-167.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-168.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-169.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-170.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-171.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-172.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-173.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-174.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-175.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-176.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-177.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-178.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-179.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-180.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-181.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-182.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-183.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-184.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-185.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-186.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-187.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-188.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-189.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-190.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-191.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-192.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-193.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-194.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-195.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-196.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-197.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-198.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-199.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-200.32_0.67.addTheta China_fold/rand32/
mv -f China_fold/input/China-1.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-2.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-3.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-4.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-5.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-6.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-7.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-8.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-9.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-10.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-11.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-12.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-13.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-14.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-15.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-16.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-17.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-18.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-19.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-20.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-21.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-22.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-23.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-24.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-25.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-26.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-27.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-28.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-29.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-30.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-31.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-32.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-33.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-34.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-35.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-36.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-37.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-38.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-39.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-40.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-41.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-42.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-43.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-44.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-45.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-46.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-47.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-48.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-49.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-50.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-51.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-52.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-53.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-54.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-55.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-56.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-57.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-58.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-59.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-60.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-61.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-62.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-63.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-64.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-65.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-66.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-67.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-68.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-69.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-70.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-71.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-72.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-73.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-74.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-75.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-76.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-77.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-78.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-79.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-80.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-81.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-82.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-83.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-84.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-85.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-86.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-87.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-88.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-89.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-90.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-91.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-92.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-93.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-94.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-95.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-96.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-97.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-98.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-99.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-100.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-101.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-102.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-103.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-104.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-105.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-106.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-107.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-108.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-109.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-110.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-111.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-112.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-113.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-114.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-115.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-116.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-117.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-118.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-119.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-120.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-121.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-122.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-123.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-124.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-125.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-126.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-127.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-128.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-129.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-130.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-131.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-132.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-133.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-134.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-135.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-136.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-137.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-138.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-139.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-140.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-141.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-142.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-143.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-144.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-145.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-146.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-147.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-148.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-149.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-150.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-151.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-152.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-153.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-154.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-155.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-156.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-157.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-158.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-159.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-160.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-161.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-162.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-163.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-164.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-165.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-166.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-167.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-168.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-169.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-170.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-171.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-172.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-173.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-174.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-175.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-176.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-177.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-178.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-179.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-180.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-181.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-182.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-183.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-184.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-185.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-186.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-187.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-188.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-189.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-190.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-191.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-192.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-193.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-194.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-195.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-196.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-197.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-198.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-199.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-200.63_0.67.addTheta China_fold/rand63/
mv -f China_fold/input/China-1.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-2.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-3.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-4.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-5.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-6.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-7.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-8.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-9.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-10.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-11.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-12.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-13.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-14.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-15.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-16.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-17.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-18.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-19.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-20.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-21.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-22.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-23.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-24.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-25.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-26.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-27.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-28.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-29.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-30.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-31.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-32.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-33.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-34.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-35.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-36.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-37.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-38.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-39.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-40.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-41.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-42.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-43.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-44.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-45.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-46.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-47.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-48.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-49.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-50.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-51.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-52.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-53.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-54.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-55.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-56.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-57.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-58.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-59.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-60.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-61.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-62.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-63.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-64.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-65.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-66.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-67.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-68.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-69.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-70.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-71.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-72.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-73.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-74.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-75.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-76.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-77.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-78.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-79.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-80.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-81.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-82.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-83.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-84.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-85.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-86.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-87.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-88.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-89.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-90.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-91.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-92.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-93.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-94.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-95.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-96.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-97.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-98.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-99.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-100.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-101.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-102.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-103.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-104.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-105.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-106.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-107.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-108.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-109.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-110.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-111.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-112.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-113.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-114.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-115.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-116.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-117.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-118.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-119.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-120.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-121.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-122.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-123.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-124.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-125.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-126.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-127.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-128.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-129.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-130.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-131.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-132.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-133.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-134.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-135.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-136.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-137.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-138.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-139.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-140.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-141.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-142.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-143.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-144.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-145.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-146.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-147.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-148.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-149.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-150.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-151.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-152.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-153.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-154.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-155.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-156.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-157.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-158.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-159.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-160.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-161.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-162.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-163.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-164.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-165.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-166.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-167.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-168.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-169.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-170.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-171.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-172.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-173.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-174.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-175.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-176.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-177.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-178.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-179.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-180.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-181.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-182.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-183.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-184.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-185.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-186.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-187.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-188.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-189.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-190.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-191.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-192.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-193.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-194.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-195.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-196.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-197.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-198.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-199.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-200.94_0.67.addTheta China_fold/rand94/
mv -f China_fold/input/China-1.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-2.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-3.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-4.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-5.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-6.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-7.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-8.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-9.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-10.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-11.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-12.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-13.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-14.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-15.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-16.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-17.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-18.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-19.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-20.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-21.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-22.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-23.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-24.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-25.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-26.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-27.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-28.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-29.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-30.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-31.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-32.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-33.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-34.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-35.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-36.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-37.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-38.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-39.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-40.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-41.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-42.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-43.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-44.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-45.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-46.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-47.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-48.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-49.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-50.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-51.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-52.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-53.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-54.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-55.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-56.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-57.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-58.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-59.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-60.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-61.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-62.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-63.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-64.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-65.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-66.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-67.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-68.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-69.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-70.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-71.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-72.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-73.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-74.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-75.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-76.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-77.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-78.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-79.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-80.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-81.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-82.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-83.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-84.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-85.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-86.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-87.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-88.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-89.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-90.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-91.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-92.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-93.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-94.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-95.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-96.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-97.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-98.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-99.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-100.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-101.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-102.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-103.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-104.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-105.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-106.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-107.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-108.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-109.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-110.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-111.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-112.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-113.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-114.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-115.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-116.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-117.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-118.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-119.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-120.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-121.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-122.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-123.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-124.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-125.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-126.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-127.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-128.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-129.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-130.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-131.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-132.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-133.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-134.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-135.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-136.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-137.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-138.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-139.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-140.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-141.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-142.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-143.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-144.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-145.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-146.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-147.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-148.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-149.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-150.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-151.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-152.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-153.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-154.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-155.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-156.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-157.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-158.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-159.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-160.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-161.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-162.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-163.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-164.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-165.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-166.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-167.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-168.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-169.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-170.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-171.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-172.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-173.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-174.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-175.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-176.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-177.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-178.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-179.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-180.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-181.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-182.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-183.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-184.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-185.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-186.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-187.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-188.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-189.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-190.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-191.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-192.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-193.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-194.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-195.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-196.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-197.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-198.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-199.126_0.67.addTheta China_fold/rand126/
mv -f China_fold/input/China-200.126_0.67.addTheta China_fold/rand126/
java -Xmx1g -cp stairway_plot_es/ Stairpainter China_fold.blueprint
bash China_fold.blueprint.plot.sh
date
