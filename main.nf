#!/usr/bin/env nextflow

process cowsay {
  container 'ghcr.io/endre-seqera/cowsay:latest'
  arch 'amd64'

  output:
    stdout
  script:
    """
    #!/bin/sh
    date -R | cowsay
    sleep 2
    pwd | cowsay
    """
}

workflow {
  cowsay | view()
}