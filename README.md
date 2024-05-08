# Flat Assembler (Dockerized)

I wanted to learn assembly and decided to use one of the best assemblers known
to man - [Flat Assembler](https://flatassembler.net/) (a.k.a `fasm`). My problem
was... my personal computer is a MacBook Pro with an M2 chip. And guess what,
`fasm` doesn't support that yet.

Hence, the workaround: I can play with it in the terminal through Docker. Thank
God for that.

## Usage

All you gotta know is...

### Build the Image

```bash
make build
```

It uses `docker build` under the hood and will display some logs in the process.
The image it builds is gonna be tagged as `fasm:latest`. The build is based on
`ubuntu:latest` (and if you want to change the base OS, you can of course just
change it in the [Dockerfile](Dockerfile)).

### Run and Attach to the Container

```bash
make run
```

Runs the image in interactive mode so you can play with `fasm`. As soon as you
`exit` out of it, the container will be removed for convenience.

If you'd like to keep the container after exiting, remove the `--rm` flag from
the `run` routine in the [Makefile](Makefile).

## License

All of this beauty is released under the all-permissive MIT license, so do with
it what you will but don't blame me if things go south. Thank you!
