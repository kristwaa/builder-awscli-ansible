# builder-awscli-ansible
Docker image for a build pipeline using AWS cli and Ansible.

The motivation behind the image was to group a set of tools I
frequently need and have them reasonably updated on a recent
lightweight operating system.


## Tools provided by image

* initial version:
  aws cli, s3cmd, ansible, zip, jq


## Build

```
docker build -t kristwaa/builder-aws-ansible .
```

## Usage

The image is expected to be run inside a (build) pipeline, which should
handle setting environment variables and mounting volumes. Read the
[AWS cli documentation](https://aws.amazon.com/documentation/cli/) for details on authentication.
The easiest way it to set these:

```
export AWS_ACCESS_KEY_ID="<id>"
export AWS_SECRET_ACCESS_KEY="<key>"
export AWS_DEFAULT_REGION="<region>"
```

When configured, run whatever commands is required to perform the
wanted tasks, typically utilzing the AWS cli and Ansible.

The entrypoint is set to _/bin/sh_.

## License

Apache License, Version 2.0. See the LICENSE file for the full license.
The NOTICE file contains a reference to the Dockerfile I used as a
starting point :)
