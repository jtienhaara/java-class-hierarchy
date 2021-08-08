# ClassHierarchy
This tool is a crude alternative to javadoc for situations
where you don't have a browser handy, and / or the javadoc
is not readily available.

For example, if you're ssh'ed into a server, and the
environment is all set up for running Java programs
(PATH etc), then to examine a particular class
"com.example.BuggyMemLeakService", you might run
something like:

    java -classpath /opt/buggy/lib/buggy.jar -jar /tmp/classhierarchy.jar com.example.BuggyMemLeakService

And the output might be something like:

    class BuggyMemLeakService [ package com.example ]
    --------------------------------------------------
        extends class java.lang.Object
        implements MemLeakable
   
        BuggyMemLeakService ()
   
        main ( String[] ) : void &lt;&lt;static&gt;&gt;
            throws BuggyException,
                   MemLeakError
        induceBug () : void
            throws BuggyException
   
    &lt;&lt;interface&gt;&gt;
    class MemLeakable [ package com.example.mem ]
    --------------------------------------------------
   
        growHeap ( byte[] ) : boolean
            throws MemLeakError

Questions?  Comments?  Bug reports?  Contact Johann Tienhaara:

jtienhaara@yahoo.com
