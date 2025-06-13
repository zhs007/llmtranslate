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

## Run with Docker

You can also run the translation script using Docker:

```bash
docker build -t llmtranslate .
docker run --rm \
  -e GOOGLE_API_KEY=your_gemini_api_key \
  -e GEMINI_MODEL=gemini-pro \
  -e TRANSLATE_INPUT_FILE=your_input.xlsx \
  -v $(pwd):/app \
  llmtranslate
```

- Replace `your_gemini_api_key` with your actual Gemini API key.
- You can omit `GEMINI_MODEL` and `TRANSLATE_INPUT_FILE` to use their defaults.
- The `-v $(pwd):/app` option mounts your current directory so input/output Excel files are accessible.

---
