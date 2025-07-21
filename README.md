EhBASIC for Glitch Works Projects
=================================

**E**n**h**anced **BASIC** is a rework of Microsoft 6502 BASIC by Lee Davidson, which is often used in open source hardware projects. It is well documented, and fairly easy to customized. This repository contains customizations for [Glitch Works](http://www.glitchwrks.com) projects. It is based on [Jeff Tranter's CA65 compatible version](https://github.com/jefftranter/6502/tree/master/asm/ehbasic) of Lee Davidson's work.

Available Customizations
------------------------

Building EhBASIC
----------------

Typing `make` will build all EhBASIC customizations. Many convert into Intel HEX format or other loadable formats. This project uses the assembler from the [CC65 package](https://cc65.github.io/).

License and Original README.TXT
-------------------------------

All Glitch Works, LLC changes and customizations are released under the GNU GPL v3, a copy of which should have been made available with this source. See `GPL-3.0` in project root.

[Jeff Tranter](https://github.com/jefftranter) did not provide a license for his [CA65 compatible version](https://github.com/jefftranter/6502/tree/master/asm/ehbasic).

Here's the original `README.TXT` contents from Lee Davidson's source archive:

```
Enhanced BASIC is a BASIC interpreter for the 6502 family microprocessors. It
is constructed to be quick and powerful and easily ported between 6502 systems.
It requires few resources to run and includes instructions to facilitate easy
low level handling of hardware devices. It also retains most of the powerful
high level instructions from similar BASICs.

EhBASIC is free but not copyright free. For non commercial use there is only one
restriction, any derivative work should include, in any binary image distributed,
the string "Derived from EhBASIC" and in any distribution that includes human
readable files a file that includes the above string in a human readable form
e.g. not as a comment in an HTML file.

For commercial use please contact me,  Lee Davison, at leeedavison@googlemail.com
for conditions.

For more information on EhBASIC, other versions of EhBASIC and other projects
please visit my site at ..

 http://members.multimania.co.uk/leeedavison/index.html


P.S. c't magazin, henceforth refered to as "those thieving german bastards", are
prohibited from using this or any version of EhBASIC for any of their projects
or products. The excuse "we don't charge people for it" doesn't wash, it adds
value to your product so you owe me.
 ```

As our designs are open and we're making any changes/customizations available as open source software, we're pretty sure we are at least complying with the *spirit of the above*; however, as Lee Davidson passed away some time ago, we're unable to verify.

Additionally, Lee Davidson's work appears to be a derivative of Microsoft's 6502 BASIC, though based on reverse engineering/disassembly work rather than the now-available open source project Microsoft has released. We're completely unable to offer a guess on what the legal status is at this point!
