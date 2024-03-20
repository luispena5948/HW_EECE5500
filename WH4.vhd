include ieee;
include ieee.std_logic_1164.all;

type seven_segment_config is record
	
	a:	std_logic;
	b:	std_logic;
	c:	std_logic;
	d:	std_logic;
	e:	std_logic;
	f:	std_logic;
	g:	std_logic;
	a:	std_logic;
end record seven_segment_config;

type seven_segment_decoder is array (natural range<>) of seven_segment_config;


type lamp_configuration (common_anade, common_cathode);

constant default_lamp_config: lamp_configuration := common_anade;

constant seven_segment_table: seven_segment_decoder :=(
	
	(a => '1', b => '1', c => '1', d => '1', e => '1', f => '1', g => '0'), 
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => '1', b => '1', c => '1', d => '1', e => '1', f => '1', g => '1'), 
	(a => '1', b => '1', c => '1', d => '1', e => '0', f => '1', g => '1'), 
	(a => '1', b => '1', c => '1', d => '0', e => '1', f => '1', g => '1'), 
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>),
	(a => , b => , c => , d => , e => , f => , g =>)

);
	