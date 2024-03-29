#!/usr/bin/env nextflow
params.inputWord = "Hello"

process sayHello {
  cpus 1
  memory '256 MB'

  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

workflow {
  Channel.of("$params.inputWord") | sayHello | view
}