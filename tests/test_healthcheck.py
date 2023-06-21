from pytest import mark

from app import main


@mark.skip(reason="Don't work yet")
def test_healthcheck(test_app):
    response = test_app.get("/healthcheck")

    assert response.status_code == 200
    assert response.text == "Ok"
