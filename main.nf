#!/usr/bin/env nextflow

nextflow.enable.dsl = 2

params.urls = ''

process DOWNLOAD {
    input:
    val urls

    output:
    path 'downloaded_*', emit: files
    
    """
    #!/bin/sh
    echo "$urls" | tr ',' '\n' | while read url; do      
      name="\${url##*/}"
      wget -O downloaded_\${name} \$url > /dev/null
      echo "Downloaded \$url"
      df -h
    done
    """
}

workflow {
    DOWNLOAD(params.urls)  
    DOWNLOAD.out.files.flatten().view { file -> "Downloaded: ${file}" }
}