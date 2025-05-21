.global _start
_start:
    # write システムコール
    mov x0, #1
    ldr x1, =message
    mov x2, length
    mov x8, #64
    svc 0
    b _start

    # exit システムコール
    # mov x0, #0
    # mov x8, #93
    # svc 0

.data
message:
    .ascii "BURI\n"
    length = . - message