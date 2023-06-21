# How to run migrations

`docker-compose exec web python app/db.py`


# Test

## Some example snippets to get you started:
- Normal run: `docker-compose exec web python -m pytest`

- Disable warnings: `docker-compose exec web python -m pytest -p no:warnings`

- Run only the last failed tests: `docker-compose exec web python -m pytest --lf`

- Run only the tests with names that match the string expression: `docker-compose exec web python -m pytest -k "summary and not test_read_summary"`

- Stop the test session after the first failure: `docker-compose exec web python -m pytest -x`

- Enter PDB after first failure then end the test session: `docker-compose exec web python -m pytest -x --pdb`

- Stop the test run after two failures: `docker-compose exec web python -m pytest --maxfail=2`

- Show local variables in tracebacks: `docker-compose exec web python -m pytest -l`

- List the 2 slowest tests: `docker-compose exec web python -m pytest --durations=2`
