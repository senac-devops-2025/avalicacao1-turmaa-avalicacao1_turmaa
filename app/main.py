def calcular_media(valores):
    if not valores:
        raise ValueError("A lista não pode estar vazia.")
    return sum(valores) / len(valores)


def verificar_aprovacao(valores):
    media = calcular_media(valores)
    return "Aprovado" if media >= 7 else "Reprovado"


if __name__ == "__main__":

    prompt = "Digite as notas separadas por espaço: "
    entrada_usuario = input(prompt)

    notas = [float(x) for x in entrada_usuario.split()]

    print(verificar_aprovacao(notas))
