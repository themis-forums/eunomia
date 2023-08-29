module User : sig
        type t = private int

        val s : (t,t) Hashtbl.t
        val make : int -> t option
end = struct
        type t = int

        let s = Hashtbl.create 0

        let make id = if Hashtbl.length s <= id then Some id else None
end

module Login = struct
        type t = 
                { email : string
                ; password : string
                ; id : User.t
                }

        let s : (User.t,t) Hashtbl.t = Hashtbl.create 0 
        let make x = x
end

module Session = struct
        type t =
                { session : int
                ; user : User.t
                }

        let s : (User.t,t) Hashtbl.t = Hashtbl.create 0 
        let make x = x
end

let register email password =
        let len = Hashtbl.length User.s in
        User.make len
        |> Option.iter begin fun id -> 
                        Hashtbl.replace User.s id id;
                        Hashtbl.replace Login.s id Login.{email;password;id}
        end

 