all:
	docker build -t "pengo26/ubuntu-full" .

start:
	docker run --name "ubuntu-1" -v /var/run/mysqld/mysqld.sock:/tmp/mysqld.sock -d -t "pengo26/ubuntu-full"

clean:
	docker stop ubuntu-1 && docker rm ubuntu-1


