#! /bin/sh

src_compile() {
	echo "Will now compile source code"
	/usr/bin/javac $WORKSPACE/src/main/*.java &&
	echo "Done Compiling!. Status: SUCCESS"
}

generate_jar() {
	echo "Will now generate jar file"
	cd $WORKSPACE/src/main
	/usr/bin/jar -cvef Hello MyHello.jar *.class &&
	mv -f MyHello.jar $WORKSPACE/out/production/lib
	echo "Done generating jar file. Status: SUCCESS"
}

run_jar() {
	echo "Now trying to run the jar file"
	/usr/bin/java -jar $WORKSPACE/out/production/lib/MyHello.jar 
}

