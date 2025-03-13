#!/usr/bin/env nextflow

process cowsay {
  container 'ghcr.io/endre-seqera/cowsay:latest'
  arch 'amd64'

  output:
    stdout
  script:
    """
    #!/bin/sh
    cowsay "Röff, röff!"
    """
}

workflow {
  cowsay | view()
}