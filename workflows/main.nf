/*
========================================================================================
    IMPORT LOCAL MODULES/SUBWORKFLOWS
========================================================================================
*/

//
// SUBWORKFLOW: Create input channels
//

workflow CREATE_INPUT_CHANNEL_TEST {
    main:

    // create channels from input files
    database = Channel.fromPath("${params.database}", checkIfExists: true)

    emit:
    ch_database               = database
}


//
// WORKFLOW: Run main analysis pipeline
//

workflow TEST_WORKFLOW {
    //
    // SUBWORKFLOW: Create input channels
    //
    CREATE_INPUT_CHANNEL_TEST()
    //
    // WORKFLOW: DecoyPyRat analysis
    //
    DECOYPYRAT(
        CREATE_INPUT_CHANNEL_TEST.out.ch_database,
        params.add_decoys,
        params.decoy_prefix
    )
}

/*
========================================================================================
    THE END
========================================================================================
*/
