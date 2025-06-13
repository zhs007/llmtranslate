# LLM Translate with Gemini

This project uses the Google Gemini API to perform text translation in Excel files.

## Installation

```bash
pip install -r requirements.txt
```

## Usage

1. Set the environment variable `GOOGLE_API_KEY` to your Gemini API key.
2. (Optional) Set `GEMINI_MODEL` to specify the Gemini model (default: gemini-pro).
3. (Optional) Set `TRANSLATE_INPUT_FILE` to specify the input Excel file (default: solarreels_v1.xlsx).
4. Run the script:

```bash
python translate.py
```

- The script will read the Excel file, translate the English column to all target languages using Gemini, and save the result as `<input>_translated.xlsx`.
- Only empty or whitespace-only cells in target language columns will be translated and filled.
- Each cell is saved immediately after translation to avoid data loss.

---
