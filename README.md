## Build

### Előfeltételek
A projekt buildeléséhez szükséges:
- .NET 8 SDK (https://dotnet.microsoft.com/download)

## Build

### Előfeltételek

A projekt buildeléséhez szükséges:

- .NET 8 SDK (https://dotnet.microsoft.com/download)

### Build parancs

A projekt gyökerében futtatható:

```bash
dotnet build

## Docker

### Image buildelése

```bash
docker build -t hello-wasm:v1 .

### Konténer futtatása

docker run -p 8080:80 hello-wasm:v1

### Innen futattható

http://localhost:8080


## Dev Container használata (cmd-vel)

A projekt tartalmaz egy fejlesztői konténer konfigurációt a `.devcontainer` mappában.

A Dev Container célja, hogy a Blazor WASM alkalmazás egy elkülönített, reprodukálható
Docker alapú környezetben is buildelhető és futtatható legyen.

### Image buildelése

```bash
docker build -f .devcontainer/Dockerfile -t hello-devcontainer .

### A projekt futtatása Dev Containerben

docker run -it --rm -p 8080:8080 -v FULL/PATH/TO/REPO:/workspace hello-devcontainer

