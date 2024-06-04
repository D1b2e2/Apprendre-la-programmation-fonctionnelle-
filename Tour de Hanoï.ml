let deplacement position1 position2 =
  print_string ("bouge le disque de " ^ position1 ^ " vers " ^ position2);
  print_newline ();;
let rec hanoi debut milieu arrivee n =
  if n > 0 then begin
    hanoi debut arrivee milieu (n - 1);
    deplacement debut arrivee;
    hanoi milieu debut arrivee (n - 1)
  end;;
hanoi "A" "B" "C" 7;;
