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

## ISO Login

As soon as the ISO boots up and attemps to load, the user `astolfos` will be created with password `astolfos`. You still can use `root` to login.

## License

Everything in this repo is licensed under the GPL3 (or any later version)
