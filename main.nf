#!/usr/bin/env nextflow
params.sleepInSec = 180

process sayHello {
  cpus 1
  memory '256 MB'

  input: 
    val sleepInSec
  output:
    stdout
  script:
    """
    sleep $sleepInSec
    echo 'Hello sleeping world!'
    """
}

workflow {
  Channel.of("$params.sleepInSec") | sayHello | view
}