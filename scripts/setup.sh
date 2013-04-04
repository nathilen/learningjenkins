#! /bin/sh

src_compile() {
	echo "Will now compile source code"
	/usr/bin/javac $WORKSPACE/src/main/*.java &&
	echo "Done Compiling!. Status: SUCCESS"
}

generate_jar() {
	cd $WORKSPACE/src/main
	/usr/bin/jar -cvef Hello MyHello.jar *.class &&
	mv -f MyHello.jar $WORKSPACE/out/production/lib
}

run_jar() {
	/usr/bin/java -jar $WORKSPACE/out/production/lib/MyHello.jar 
}
