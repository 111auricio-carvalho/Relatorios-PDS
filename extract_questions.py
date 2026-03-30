import fitz  # PyMuPDF
import sys

def extract_pdf_text(pdf_path):
    try:
        doc = fitz.open(pdf_path)
        full_text = ""
        for page_num in range(len(doc)):
            page = doc.load_page(page_num)
            full_text += f"\n--- Página {page_num + 1} ---\n"
            full_text += page.get_text("text")
        return full_text
    except Exception as e:
        return f"Erro ao processar PDF: {e}"

if __name__ == "__main__":
    pdf_file = "Lista_n01_PDS.pdf"
    print(f"Extraindo questões de {pdf_file}...")
    extracted_text = extract_pdf_text(pdf_file)
    
    with open("questoes_extraidas.txt", "w", encoding="utf-8") as f:
        f.write(extracted_text)
    
    print("\nTexto extraído e salvo em 'questoes_extraidas.txt'.")
    print("\n--- Trecho Inicial ---\n")
    print(extracted_text[:1000]) # Mostra o começo no terminal
