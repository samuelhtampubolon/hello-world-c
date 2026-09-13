# Hello World (C to Windows .exe)

A tiny C program that prints `Hello, World!` and builds to a Windows executable (`hello.exe`).

## Source

See [`hello.c`](hello.c):

```c
#include <stdio.h>

int main(void)
{
    printf("Hello, World!\n");
    return 0;
}
```

## Download the .exe

GitHub Actions compiles this on Windows and publishes **hello.exe** here:

**https://github.com/samuelhtampubolon/hello-world-c/releases**

1. Open the latest release (`v1.0.0`)
2. Download `hello.exe`
3. Double-click it, or in Command Prompt run:

```bat
hello.exe
```

Output:

```
Hello, World!
```

Windows Defender may warn about an unsigned program from the internet — that is expected for a tiny unsigned `.exe`. Choose **More info → Run anyway** if you trust this repo.

## Build on Windows yourself

### Option A — Visual Studio / Build Tools

From a **Developer Command Prompt**:

```bat
cl /nologo /W3 /O2 /Fe:hello.exe hello.c
hello.exe
```

Or run `build.bat`.

### Option B — MinGW-w64 (gcc)

```bat
gcc -Wall -Wextra -O2 -o hello.exe hello.c
hello.exe
```

## Build on Linux / macOS

This produces a native `hello` binary (not a `.exe`):

```bash
make
./hello
```

To cross-compile a Windows `.exe` you need MinGW:

```bash
sudo apt install mingw-w64   # Debian/Ubuntu
make windows                 # writes hello.exe
```
