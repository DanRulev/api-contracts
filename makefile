gen-auth:
	protoc -I proto proto/auth.proto --go_out=./gen/go/auth/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/auth/ --go-grpc_opt=paths=source_relative

gen-user:
	protoc -I proto proto/user.proto --go_out=./gen/go/user/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/user/ --go-grpc_opt=paths=source_relative

gen-task:
	protoc -I proto proto/task.proto --go_out=./gen/go/task/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/task/ --go-grpc_opt=paths=source_relative

gen-group:
	protoc -I proto proto/group.proto --go_out=./gen/go/group/group/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/group/group/ --go-grpc_opt=paths=source_relative

gen-group-members:
	protoc -I proto proto/group_member.proto --go_out=./gen/go/group/member/ --go_opt=paths=source_relative --go-grpc_out=./gen/go/group/member/ --go-grpc_opt=paths=source_relative

gen: gen-auth gen-user gen-task gen-group gen-group-members

.PHONY: gen-auth gen-user gen-task gen-group gen-group-members gen