#!/usr/bin/env nextflow
params.inputWord = "Hello"

process sayHello {
  publishDir 'output'
  cpus 1
  memory '256 MB'

  input: 
    val x
  output:
    path 'output.txt'
  script:
    """
    echo '$x world!'
    echo 'Hello reporting world!'>output.txt
    """
}

workflow {
  Channel.of("$params.inputWord") | sayHello | view
}