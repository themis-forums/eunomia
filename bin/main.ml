open Eunomia

let () = 
        register "testing@gmail.com" "tokilena";
        register "testing" "testing";
        Hashtbl.iter (fun k v -> Printf.printf "%d %d\n" (k : User.t :> int) (v : User.t :> int)) User.s