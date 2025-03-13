#!/usr/bin/env nextflow

process oink {
  container 'community.wave.seqera.io/library/pip_cowsay:131d6a1b707a8e65'
  cpus 1
  memory '256 MB'
  arch 'amd64'

  output:
    stdout
  script:
    """
    cowsay -t "Röff, röff!" -c pig
    """
}

workflow {
  oink | view()
}