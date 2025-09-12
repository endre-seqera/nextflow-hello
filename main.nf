#!/usr/bin/env nextflow
nextflow.enable.dsl = 2

process CSV_REPORT {
    container 'alpine:latest'
    publishDir "results", mode: 'copy'
    output: path "data.csv"
    script:
    """
    echo "sample,value" > data.csv
    echo "A,10" >> data.csv
    echo "B,20" >> data.csv
    """
}

process HTML_REPORT {
    container 'alpine:latest'
    publishDir "results", mode: 'copy'
    output: path "report.html"
    script:
    """
    echo "<h1>Analysis Report</h1><p>Pipeline completed successfully!</p>" > report.html
    """
}

workflow {
    CSV_REPORT()
    HTML_REPORT()
}