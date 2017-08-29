This is the Git repo for the Docker image bjornhell/cim, containing the CSIM
Simula compiler (http://simula67.at.ifi.uio.no/cim.shtml) created by
Sverre Hvammen Johansen and Terje Mjøs.

Example usage:

```bash
blarsen@T560 ~/work/cim $ docker run -ti -v /c/cygwin/home/blarsen/work/cim:/cim -h mycim bjornhell/cim bash
root@mycim:/# cd /cim
root@mycim:/cim# cat hello.sim
BEGIN
  OutText("hello, world");
  OutImage;
END
root@mycim:/cim# cim hello
Compiling hello.sim:
gcc -w -c hello.c
gcc -w -o hello hello.o -L/usr/local/lib -lcim
root@mycim:/cim# ./hello
hello, world
root@mycim:/cim#
```