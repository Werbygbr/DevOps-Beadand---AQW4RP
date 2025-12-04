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
