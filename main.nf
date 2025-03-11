process writeHello {
  cpus 1
  memory '256 MB'

  output:
    stdout
  script:
    """
    touch "eend_sub_out.txt"
    echo 'Hello sub directory!' > "eend_sub_out.txt"
    pwd 
    """
}

workflow {
  writeHello | view
}