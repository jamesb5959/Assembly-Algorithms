fib:
  push   %rbp
  mov    %rsp,%rbp
  push   %rbx
  sub    $0x18,%rsp
  mov    %edi,-0x14(%rbp)
  cmpl   $0x0,-0x14(%rbp)
  jne    19 <fib+0x19>
  mov    $0x0,%eax
  jmp    44 <fib+0x44>
  cmpl   $0x1,-0x14(%rbp)
  jne    26 <fib+0x26>
  mov    $0x1,%eax
  jmp    44 <fib+0x44>
  mov    -0x14(%rbp),%eax
  sub    $0x1,%eax
  mov    %eax,%edi
  call   33 <fib+0x33>
  mov    %eax,%ebx
  mov    -0x14(%rbp),%eax
  sub    $0x2,%eax
  mov    %eax,%edi
  call   42 <fib+0x42>
  add    %ebx,%eax
  mov    -0x8(%rbp),%rbx
  leave
  ret

main:
  push   %rbp
  mov    %rsp,%rbp
  sub    $0x10,%rsp
  movl   $0xa,-0x4(%rbp)
  mov    -0x4(%rbp),%eax
  mov    %eax,%edi
  call   63 <main+0x19>
  mov    %eax,%esi
  lea    0x0(%rip),%rax        # 6c <main+0x22>
  mov    %rax,%rdi
  mov    $0x0,%eax
  call   79 <main+0x2f>
  mov    $0x0,%eax
  leave
  ret
