(lang dune 3.10)

(name eunomia)

(generate_opam_files true)

(source
 (github jan-pi-sona-lili/eunomia))

(authors "ilo Kali")

(maintainers "ilo Kali")

(license BSD-3-Clause)

(documentation about:blank)

(package
 (name eunomia)
 (synopsis "Backend for the Themis forum software")
 (description "")
 (depends ocaml dune caqti-eio integers)
 (tags
  (topics forum forums)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project