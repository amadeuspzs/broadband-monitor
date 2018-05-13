# Broadband Monitor

Broadband monitoring from a Raspberry Pi.

Source article: [https://thepi.io/how-to-use-your-raspberry-pi-to-monitor-broadband-speed/](https://thepi.io/how-to-use-your-raspberry-pi-to-monitor-broadband-speed/)

## Pre-requisites

1. A Raspberry Pi or other embedded device running *nix
2. Wired internet connection for Pi
3. Follow all of [https://thepi.io/how-to-use-your-raspberry-pi-to-monitor-broadband-speed/](https://thepi.io/how-to-use-your-raspberry-pi-to-monitor-broadband-speed/) - if some parts don't work, don't worry. It contains the software setup necessary.

## Setup

1. Clone this repo into your home directory, and rename it `speedtest`
2. Update `monitor.sh` and replace `[ID-OF-GDRIVE-FOLDER]` with the ID as found in step 3 in the pre-requisites
3. Update `crontab` and replace `[USER]` with your username
4. Copy the contents of `crontab` into `crontab -e`
5. Make sure the `.csv` files contain just the header when you set this up

Every hour, at 42 minutes past the hour (feel free to change this), the script will run `speedtest` and `ping`, storing the results in the Google Drive folder.

## Analysis

1. See [Analysis.ipynb](Analysis.ipynb) for basic analysis
2. Have a look at this [Tableau Dashboard](https://public.tableau.com/profile/amadeus.stevenson#!/vizhome/BandwidthMonitor/Dashboard) for visual analysis: 

![screen shot 2018-05-12 at 8 05 00 pm](https://user-images.githubusercontent.com/534681/39962552-da6cd448-561f-11e8-8826-47203438475b.png)