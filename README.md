# Welcome

So, you've decided to try Codefresh? Welcome on board!

Using this repository we'll help you get up to speed with basic functionality such as: *building Docker images* and use the *shared volumes feature*.

This project uses `Node Js` to build an application which will eventually become a distributable Docker image.

## Looking around

In the root of this repository you'll find a file named `codefresh.yml`, this is our [build descriptor](https://docs.codefresh.io/docs/what-is-the-codefresh-yaml) and it describes the different steps that comprise our process.
Let's quickly review the contents of this file:

### Shared volumes between steps

If you want to save something data in shared volume you can do it using [```freestyle```](doc:steps#section-freestyle) step.
You will be able to get access to this volume in another build.

```yml
freestyle_step:
    image: ${{build_prj}}
    working_directory: ${{main_clone}}
    fail_fast: false
    commands:
      - ls -l /codefresh/volume/
      - cp artifact/artifact.example /codefresh/volume/artifact.example

  validate:
     image: ${{build_prj}}
     working_directory: ${{main_clone}}
     commands:
        - pwd
        - ls -l /codefresh/volume
```

### Building

To bake our application into a Docker image we use Codefresh's [Build step](https://docs.codefresh.io/docs/steps#section-build).

The Build is a simplified abstraction over the Docker build command.

```yml
build_prj:
    type: build
    description: UC - build step
    image_name: codefreshio/yaml-example
    dockerfile: Dockerfile
    tag: ${{CF_BRANCH}}
```

Use the `image_name` field to declare the name of the resulting image (don't forget to change the image owner name from `codefreshdemo` to your own!).

## Using This Example

To use this example:

* Fork this repository to your own [INSERT_SCM_SYSTEM (git, bitbucket)] account.
* Log in to Codefresh using your [INSERT_SCM_SYSTEM (git, bitbucket)] account.
* Click the `Add Service` button.
* Select the forked repository.
* Select the `I have a Codefresh.yml file` option.
* Complete the wizard.
* Rejoice!
