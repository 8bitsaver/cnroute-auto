sync: sync_apnic_latest generate_cnroutes

sync_apnic_latest:
	curl --connect-timeout 5 --retry 5 --retry-delay 5 --retry-max-time 25 -sLo 'delegated-apnic-latest' 'https://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest'

generate_cnroutes:
	src/cnroutes.py
