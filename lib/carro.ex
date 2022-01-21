defprotocol Carro do
  @fallback_to_any true
  def acelerar(carro)
  def freiar(carro)

  defdelegate tipo(carro), to: Carro.Any
  defdelegate script_vendas(carro), to: Carro.Any
end

defimpl Carro, for: Any do
    def acelerar(_), do: 5
    def freiar(_), do: -5

    def script_vendas(carro), do: """
        Este carro é um/a #{Carro.tipo(carro)} com uma cor diferenciada: #{carro.cor}.
        Quando acelera, vai de 0 a #{Carro.acelerar(carro)} e, quando freia vai de #{Carro.freiar(carro)} a 0.
    """

    def tipo(carro), do: carro.__struct__ |> Module.split()
end
