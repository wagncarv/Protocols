defmodule Concessionaria do
  def cadastrar_carros(cor \\ "branco", ano \\ 2000, velocidade \\ 10, modelo \\ Fusca) do
    modelo.__struct__(
      cor: cor,
      ano: ano,
      velocidade: velocidade
    )
  end

  def vender(carro), do: Carro.script_vendas(carro)

end
