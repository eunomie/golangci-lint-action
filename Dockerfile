FROM golang:1.13.7-alpine3.11

LABEL repository="https://github.com/eunomie/golangci-lint-action"
LABEL homepage="https://github.com/eunomie/golangci-lint-action"
LABEL maintainer="Yves Brissaud <yves.brissaud@gmail.com>"

LABEL com.github.actions.name="GolangCI-Lint"
LABEL com.github.actions.description="Linters Runner for Go"

RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.23.3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
