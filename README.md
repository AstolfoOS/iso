# AstolfOS ISO

## Building

Requires `archiso`

```bash
# Run as root
mkarchiso -v .
```

The ISO will be in the `out` directory

## Testing

Requires `archiso`, `qemu`, and (for UEFI) `edk2-ovmf`

```bash
# Legacy boot
run_archiso -i out/astolfos-yyyy-mm-dd-x86_64.iso
# UEFI
run_archiso -u -i out/astolfos-yyyy-mm-dd-x86_64.iso
```

## License

Everything in this repo is licensed under the GPL3 (or any later version)
