DEFAULT REL

section .text
global _start

_start:
    ; mov qword[rdi], env ; -> Mach-O 64-bit format does not support 32-bit absolute addresses
    ; mov [rdi], env ; -> operation size not specified
    mov  r15, env ; ok
    mov qword[rdi], r15 ; ok
    ret
;==============================================================
section .data

  envstr        db   'PATH=/bin:/usr/bin', 0
  env           dq   envstr, 0
  cginame       db   'wltvr', 0
