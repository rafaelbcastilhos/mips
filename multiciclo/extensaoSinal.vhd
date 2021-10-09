library IEEE;
use ieee.std_logic_1164.all;

entity extensaoSinal is 
   generic(
      larguraOriginal: natural := 8;
      larguraExtendida: natural := 8);
   port(
      entrada: in std_logic_vector(larguraOriginal-1 downto 0);
      saida: out std_logic_vector(larguraExtendida-1 downto 0)
   );
end entity;

architecture comportamental of extensaoSinal is
begin
	saida(larguraOriginal-1 downto 0) <= entrada;

	saida(larguraExtendida-1 downto larguraOriginal) <= (others => entrada(larguraOriginal-1));
end architecture;
