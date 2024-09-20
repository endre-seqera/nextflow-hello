#!/usr/bin/env nextflow
params.file = "/proc/mounts"

process lsFile {
  cpus 1
  memory '256 MB'

  input: 
    val file
  output:
    stdout
  script:
    """
    pwd
    if [ -f "$file" ]; then
        echo "$file - file exists."
        cat "$file"
    else 
        echo "$file - file does not exist."
    fi
    """
}

workflow {
  Channel.of("$params.file") | lsFile | view
}