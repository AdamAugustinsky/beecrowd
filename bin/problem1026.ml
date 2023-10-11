(* https://www.beecrowd.com.br/judge/en/problems/view/1026 *)

(* classic, works for sure 1.3s-0.8s *)
(* let read_input () =
   let rec aux acc =
    try
      let a, b = Scanf.scanf "%Ld %Ld\n" (fun a b -> a, b) in
      aux ((Int64.logxor a b) :: acc)
    with _ -> List.rev acc
   in
   aux [] *)



(* new, much better, 0.32s *)
let () =
  let rec aux () =
    try
      Scanf.scanf "%Ld %Ld\n" (fun a b ->  Int64.logxor a b)
      |> Printf.printf "%Ld\n";	
      aux ()
    with _ -> ()
  in
  aux ()