defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "quando existir um aquivo com o nome infrmado retorna a some dos numeros" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "quando não existir um aquivo com o nome infrmado retorna o erro" do
      response = Numbers.sum_from_file("xuaxua")

      expected_response = {:error, %{message: "Invalid file!"}}

      assert response == expected_response
    end
  end

end
