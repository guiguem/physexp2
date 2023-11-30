# physexp2

## Docker

```bash
docker build -t physexp2 .
docker run -v $(pwd):/home/builder/physexp2 -it physexp2 /bin/bash
jupyter-book build physexp2/
```

## Conda environment

```Bash
conda create -f env.yaml
jupyter-book build physexp2/
```