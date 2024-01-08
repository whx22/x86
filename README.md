# x86 assembly language

Assembly language learning notes.

Reference Book: ***x86 Assembly Language From Real Mode to Protected Mode*** by lizhong

Assembly language style: Intel

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

wine Chinese messy code solution:

[Chinese font are not visible in wine](https://askubuntu.com/questions/1019530/chinese-fonts-are-not-visible-in-programs-installed-in-wine)

1. Write the binary file into the VHD virtual disk file.

## 2. File Description

- *.vhd : virtual hard disk file
- bochsrc.txt ： bochs virtual machine configuration file
- *.s : Posix x86 assembly language file
- *.asm : Windows x86 assembly language file
- *.bin : binary object file
- *.lst : nasm instruction list file
- *.list : nasm instruction list file
