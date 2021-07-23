
<!-- README.md -->

# FuseSoC

Repository: <https://github.com/E4tHam/fusesoc_template>

## About

This repository gives an example of getting started with [FuseSoC](https://github.com/olofk/fusesoc), the best HDL package manager available.

[Install FuseSoc from here](https://fusesoc.readthedocs.io/en/stable/user/installation.html)

This repository has three different cores:

* `ethan:tests:and`
* `ethan:tests:or`
* `ethan:tests:and_or`

## Supported Software

* [Icarus Verilog](https://www.howtoinstall.me/ubuntu/18-04/iverilog/)
* [IceStorm, nextpnr, Yosys](http://bygone.clairexen.net/icestorm/#install)
* [Vivado](https://www.xilinx.com/support/download.html)

## Supported Hardware

* [TinyFPGA BX](https://tinyfpga.com/)
* [Nexys A7](https://store.digilentinc.com/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum/)

## Usage

To add this library from GitHub:

```bash
fusesoc library add and https://github.com/E4tHam/fusesoc_template --sync-type=git
fusesoc library add or https://github.com/E4tHam/fusesoc_template --sync-type=git
fusesoc library add and_or https://github.com/E4tHam/fusesoc_template --sync-type=git
```

### `ethan:tests:and`

```bash
# Simulate in Icarus Verilog
fusesoc run --target=sim ethan:tests:and:1.0.0
# Synthesize for TinyFPGA BX
fusesoc run --target=tinyfpga_bx ethan:tests:and:1.0.0
# Synthesize for Nexys A7
fusesoc run --target=nexys_a7 ethan:tests:and:1.0.0
```

### `ethan:tests:or`

```bash
# Simulate in Icarus Verilog
fusesoc run --target=sim ethan:tests:or:1.0.0
# Synthesize for TinyFPGA BX
fusesoc run --target=tinyfpga_bx ethan:tests:or:1.0.0
# Synthesize for Nexys A7
fusesoc run --target=nexys_a7 ethan:tests:or:1.0.0
```

### `ethan:tests:and_or`

```bash
# Simulate in Icarus Verilog
fusesoc run --target=sim ethan:tests:and_or:1.0.0
# Synthesize for TinyFPGA BX
fusesoc run --target=tinyfpga_bx ethan:tests:and_or:1.0.0
# Synthesize for Nexys A7
fusesoc run --target=nexys_a7 ethan:tests:and_or:1.0.0
```
