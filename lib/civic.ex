defmodule Civic do
  @keys [:cor, :ano, :velocidade]
  @enforce_keys @keys

  defstruct cor: nil, ano: nil, velocidade: nil

  def new(cor \\ "preto", ano \\ 2010, velocidade \\ 30) do
    %__MODULE__{
      cor: cor,
      ano: ano,
      velocidade: velocidade
    }
  end

  defimpl Carro, for: __MODULE__ do
    def acelerar(carro), do: carro.velocidade + 30
    def freiar(carro), do: carro.velocidade - 30
  end
end
