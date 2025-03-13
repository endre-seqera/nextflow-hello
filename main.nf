#!/usr/bin/env nextflow

process cowsay {
  container 'ghcr.io/endre-seqera/cowsay:latest'
  arch 'amd64'

  output:
    stdout
  script:
    """
    #!/bin/sh
    pwd | cowsay
    """
}

workflow {
  cowsay | view()
}