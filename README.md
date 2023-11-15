# x86 assembly language

Assembly language learning notes.

Reference Book: x86 Assembly Language From Real Mode to Protected Mode --lizhong

## 1. Software Preparation

### Oracle VM VirtualBox

1. Create a VHD virtual disk file.
2. Run virtual machine.

### bochs

1. Run virtual machine.
2. Debug virtual machine.

### nasm

1. Convert the assembly file into binary file.
2. Generate an instruction list file.

nasm compile command :

```shell
nasm name.s -f bin -o name.bin 
```

nasm compile command with listing file :

```shell
nasm name.s -f bin -o name.bin -l name.lst
```

### fixvhdw64.exe (wine)

1. Write the binary file into the VHD virtual disk file.

## 2. File Description

1. *.vhd : virtual hard disk file
2. bochsrc.txt ： bochs virtual machine configuration file
3. *.s : Posix x86 assembly language file
4. *.asm : Windows x86 assembly language file
5. *.bin : binary object file
6. *.lst : instruction list file
