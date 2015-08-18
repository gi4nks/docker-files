## Volume sample for .m2

### run
	docker run -d -P --name mvn-volume gi4nks/mvn-volume:1.0.0

### use 
	docker run --volumes-from mvn-volume -ti --name bash-2 busybox


