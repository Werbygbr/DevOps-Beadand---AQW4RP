# Stage 1: Build the Blazor WebAssembly project
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src

COPY . .
RUN dotnet publish -c Release -o /app/publish

# Stage 2: Run Blazor WASM using nginx (static file hosting)
FROM nginx:alpine AS final
WORKDIR /usr/share/nginx/html

# Másoljuk be a WASM buildet nginx web rootba
COPY --from=build /app/publish/wwwroot .

EXPOSE 80

# Nginx automatikusan indul, nincs szükség ENTRYPOINT-re
