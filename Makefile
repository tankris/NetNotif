install: one_off_install run_script

one_off_install:
	@go get -v github.com/m-lab/ndt7-client-go/cmd/ndt7-client
	@echo "Successfully Installed!"

run_script:
	@./netNotif.sh

clean:
	@rm ~/go/ndt7-client
