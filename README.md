# Codefresh shared volume example

[Codefresh](codefresh.io) is a CI/CD platform that provides an [automatic shared volume](https://codefresh.io/docs/docs/configure-ci-cd-pipeline/pipeline-caching/#traditional-build-caching) in all pipelines.

This volume is used for the workspace directory and can be used to share information not only between
pipeline steps but also between subsequent builds of the same pipeline.

## To use this project in Codefresh

See the [codefresh.yml](codefresh.yml) for an example pipeline.

More details can be found in [Codefresh documentation](https://codefresh.io/docs/docs/yaml-examples/examples/shared-volumes-between-builds).

