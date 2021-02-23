defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "quando existir um arquivo com esse nome, retornaa a soma dos numeros desse arquivo" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "quando nao existir um arquivo com esse nome, retornara erro" do
      response = Numbers.sum_from_file("numb")
      expect_response = {:error, %{message: "Invalid file!"}}

      assert response == expect_response
    end
  end
end
