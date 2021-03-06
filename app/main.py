from fastapi import FastAPI
import rpg_dice

app = FastAPI(docs_url="/")


@app.get("/roll")
def roll(dice_str: str = "d20"):
    return {"result": rpg_dice.roll(dice_str)}
