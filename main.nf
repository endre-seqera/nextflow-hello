#!/usr/bin/env nextflow

process sayVersion {
  conda 'env.yaml'

  output:
    stdout
  script:
    """
    samtools --version
    """
}

workflow {
  sayVersion | view
}