#! /bin/sh
MAIN_DIRECTORY="$WORKSPACE/src/main"
JAR_DIRECTORY="$WORKSPACE/out/production/lib"

src_compile() {
	echo "Will now compile source code"
	/usr/bin/javac $MAIN_DIRECTORY/*.java &&
	echo "Done Compiling!. Status: SUCCESS"
}

generate_jar() {
	echo "Will now generate jar file"
	cd $MAIN_DIRECTORY &&
	
   /usr/bin/jar -cvef Hello MyHello.jar *.class &&
   
	if [! -d "$JAR_DIRECTORY" ]; then
		mkdir "$JAR_DIRECTORY"
	fi
	mv -f MyHello.jar $JAR_DIRECTORY
	echo "Done generating jar file. Status: SUCCESS"
}

run_jar() {
	echo "Now trying to run the jar file"
	/usr/bin/java -jar $WORKSPACE/out/production/lib/MyHello.jar 
}

echo $MAIN_DIRECTORY
src_compile &&
generate_jar &&
run_jar

