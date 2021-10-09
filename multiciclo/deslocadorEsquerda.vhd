library IEEE;
use ieee.std_logic_1164.all;

entity deslocadorEsquerda is 
   generic(largura: natural := 8);
   port(
      entrada: in std_logic_vector(largura-1 downto 0);
      saida: out std_logic_vector(largura-1 downto 0)
   );
end entity;

architecture comportamental of deslocadorEsquerda is
begin
	saida <= entrada(largura-3 downto 0) & "00";
end architecture;
