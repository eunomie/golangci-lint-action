FROM golangci/golangci-lint:v1.23.3

LABEL repository="https://github.com/eunomie/golangci-lint-action"
LABEL homepage="https://github.com/eunomie/golangci-lint-action"
LABEL maintainer="Yves Brissaud <yves.brissaud@gmail.com>"

LABEL com.github.actions.name="GolangCI-Lint"
LABEL com.github.actions.description="Linters Runner for Go"

COPY entrypoint.sh /entrypoint.sh

CMD [ "/entrypoint.sh" ]
