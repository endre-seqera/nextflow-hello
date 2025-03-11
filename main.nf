process writeHello {
  cpus 1
  memory '256 MB'

  output:
    stdout
  script:
    """
    echo 'Hello base directory!' > "$baseDir/eend_base_out.txt"
    echo "$baseDir/eend_base_out.txt"
    echo 'Hello sub directory!' > "eend_sub_out.txt"
    pwd 
    """
}

workflow {
  writeHello | view
}