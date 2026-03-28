ci-test:
    cd demo && mix test

initial_create:
    @if [ -d "demo" ]; then \
        echo "Error: demo directory exists"; \
        exit 1; \
    fi; \
    mix phx.new demo --no-ecto

initial_destroy:
    rm -rf demo

install:
    cd demo && mix setup



run:
    cd demo && mix phx.server
