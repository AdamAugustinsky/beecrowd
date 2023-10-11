let () =
  let rec aux () =
    try
      Scanf.scanf " %d" ignore;
      aux ()
    with  
      _ -> ()
  in aux () 