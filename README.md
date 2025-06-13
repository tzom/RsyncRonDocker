# RsyncRonDocker

set environment variables for the container in the compose.yaml:

```yaml
    volumes:
      - PATH_TO_SOURCE_VOLUME_AT_HOST:/source
      - PATH_TO_DESTINATION_VOLUME_AT_HOST:/destination    

volumes:
  PATH_TO_SOURCE_VOLUME_AT_HOST:
    external: true
  PATH_TO_DESTINATION_VOLUME_AT_HOST:
    external: true

```
