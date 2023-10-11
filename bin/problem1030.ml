(* https://www.beecrowd.com.br/judge/en/problems/view/1030 *)

let remaining n k =
  let rec loop i r =
    if i > n then r
    else loop (i + 1) ((r + k) mod i)
  in
  loop 1 0

let () =
  Scanf.scanf "%s\n" ignore;
  let rec aux i =
    try
      Scanf.scanf "%u %u\n" (fun a b ->  remaining a b)
      |> succ
      |> Printf.printf "Case %l: %l\n" i;	
      aux (i+1)
    with _ -> ()
  in
  aux 1