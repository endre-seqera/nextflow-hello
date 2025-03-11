process writeHello {
  cpus 1
  memory '256 MB'

  output:
    stdout
  script:
    """
    touch "eend_out.txt"
    echo 'Hello world!' > "eend_out.txt"
    pwd 
    """
}

workflow {
  writeHello | view
}