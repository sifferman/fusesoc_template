
<!-- README.md -->

# FuseSoC

Repository: <https://github.com/E4tHam/fusesoc_template>

## About

This repository gives an example of getting started with [FuseSoC](https://github.com/olofk/fusesoc), the best HDL package manager available.

[Install FuseSoc from here](https://fusesoc.readthedocs.io/en/stable/user/installation.html)

This repository has three different cores:

* `e4tham:templates:and`
* `e4tham:templates:or`
* `e4tham:templates:and_or`

## Supported Software

* [Icarus Verilog](https://www.howtoinstall.me/ubuntu/18-04/iverilog/)
* [IceStorm, nextpnr, Yosys](http://bygone.clairexen.net/icestorm/#install)
* [Vivado](https://www.xilinx.com/support/download.html)

## Supported Hardware

* [TinyFPGA BX](https://tinyfpga.com/)
* [Nexys A7](https://store.digilentinc.com/nexys-a7-fpga-trainer-board-recommended-for-ece-curriculum/)

## Getting Started

### To add this library via Git

```bash
fusesoc library add e4tham_templates https://github.com/E4tHam/fusesoc_template --sync-type=git
```

### To add this library from local clone

```bash
fusesoc library add e4tham_templates ${fusesoc_template_location}/cores
cores --sync-type=local
```

## Usage

### `e4tham:templates:and`

```bash
# Simulate in Icarus Verilog
fusesoc run --target=sim e4tham:templates:and:1.0.0
# Synthesize for TinyFPGA BX
fusesoc run --target=tinyfpga_bx e4tham:templates:and:1.0.0
# Synthesize for Nexys A7
fusesoc run --target=nexys_a7 e4tham:templates:and:1.0.0
```

### `e4tham:templates:or`

```bash
# Simulate in Icarus Verilog
fusesoc run --target=sim e4tham:templates:or:1.0.0
# Synthesize for TinyFPGA BX
fusesoc run --target=tinyfpga_bx e4tham:templates:or:1.0.0
# Synthesize for Nexys A7
fusesoc run --target=nexys_a7 e4tham:templates:or:1.0.0
```

### `e4tham:templates:and_or`

```bash
# Simulate in Icarus Verilog
fusesoc run --target=sim e4tham:templates:and_or:1.0.0
# Synthesize for TinyFPGA BX
fusesoc run --target=tinyfpga_bx e4tham:templates:and_or:1.0.0
# Synthesize for Nexys A7
fusesoc run --target=nexys_a7 e4tham:templates:and_or:1.0.0
```
