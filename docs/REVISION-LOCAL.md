# Revisión local de la v1

## Ubicación del sitio
- `/home/glaux/workspace/web`

## Qué revisar
- navegación mínima: About, Selected Publications, Profile, Links & Contact;
- bio, afiliaciones y tono general;
- selección inicial de publicaciones;
- foto inicial importada desde el portal UDC;
- enlaces institucionales y académicos.

## Ejecución local con Jekyll
Si Ruby/Bundler están disponibles:

```bash
cd /home/glaux/workspace/web
bundle install
bundle exec jekyll serve
```

Luego abrir `http://127.0.0.1:4000/`.

## Alternativa con Docker
Si no se quiere instalar Ruby localmente:

```bash
cd /home/glaux/workspace/web
docker compose up
```

## Observación
Esta base está preparada para revisión local y edición, no para despliegue final todavía.
