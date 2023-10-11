(* script_test.ml *)
open Beecrowd

let assert_equal a b =
  if a <> b then
    failwith (Printf.sprintf "Assertion failed: %s <> %s" (String.concat ", " a) (String.concat ", " b))

let test_read_lines () =
  let input = "1 2\n3 4\n" in
  let ic = Scanf.Scanning.from_string input in
  let results = Beecrowd.read_lines [] in
  let expected = [Int64.logxor 3L 4L; Int64.logxor 1L 2L] in
  assert_equal expected results;
  print_endline "test_read_lines passed!"

let test_process_input () =
  let input = "1 2\n3 4\n" in
  let ic = Scanf.Scanning.from_string input in
  let results = Beecrowd.process_input () in
  let expected = ["X = 7"; "X = 3"] in
  assert_equal expected results;
  print_endline "test_process_input passed!"

let () =
  test_read_lines ();
  test_process_input ()
