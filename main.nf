#!/usr/bin/env nextflow
echo true

cheers = Channel.from 'Bonjour', 'Ciao', 'Hello', 'Hola'

process sayHello {

  input: 
    val x from cheers
  script:
    """
    sleep 3360;
    echo '$x world!'
    """
}

