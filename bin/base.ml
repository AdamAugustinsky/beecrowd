(* base to start coding a problem thas requires loop reading *)
let () =
  let rec aux () =
    try
      let a = Scanf.scanf "%u\n" (fun a -> a) in
      Printf.printf "%u\n" a;
      aux ()
    with  
      _ -> ()
  in
  aux ()