def calcular_media(valores):
    if not valores:
        raise ValueError("A lista não pode estar vazia.")
    return sum(valores) / len(valores)


def verificar_aprovacao(valores):
    media = calcular_media(valores)
    return "Aprovado" if media >= 7 else "Reprovado"


if __name__ == "__main__":
    entrada = input("Digite as notas separadas por espaço: ")
    notas = [float(x) for x in entrada.split()]
    print(verificar_aprovacao(notas))
