default: dev

dev:
	uvicorn app.main:app --reload