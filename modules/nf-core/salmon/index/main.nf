process SALMON_INDEX {
    tag "$transcript_fasta"
    label "process_low"

    conda "bioconda::salmon=1.10.1"
    container "${ workflow.containerEngine == 'singularity' && !task.ext.singularity_pull_docker_container ?
        'https://depot.galaxyproject.org/singularity/salmon:1.10.1--h7e5ed60_0' :
        'biocontainers/salmon:1.10.1--h7e5ed60_0' }"

    input:
    path genome_fasta
    path transcript_fasta
    path decoys

    output:
    path "salmon"      , emit: index
    path "versions.yml", emit: versions

    when:
    task.ext.when == null || task.ext.when

    script:
    """

    salmon \\
        index \\
        --threads $task.cpus \\
        -t $transcript_fasta \\
        -d $decoys \\
        $args \\
        -i salmon
  
    cat <<-END_VERSIONS > versions.yml
    "${task.process}":
        salmon: \$(echo \$(salmon --version) | sed -e "s/salmon //g")
    END_VERSIONS
    """
}
