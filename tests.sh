#!/bin/bash

# reset db
export FLASK_APP=core/server.py
rm core/store.sqlite3
flask db upgrade -d core/migrations/

# run tests
#pytest -vvv -s tests/

# for test coverage report
pytest --cov

#open htmlcov/index.html