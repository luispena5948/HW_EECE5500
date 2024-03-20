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
	
	(a => '1', b => '1', c => '1', d => '1', e => '1', f => '1', g => '0'), --0
	(a => '0', b => '1', c => '1', d => '0', e => '0', f => '0', g => '0'),	--1
	(a => '1', b => '1', c => '0', d => '1', e => '1', f => '0', g => '1'),	--2
	(a => '1', b => '1', c => '1', d => '1', e => '0', f => '0', g => '1'),	--3
	(a => '0', b => '1', c => '1', d => '0', e => '0', f => '1', g => '1'),	--4
	(a => '1', b => '0', c => '1', d => '1', e => '0', f => '1', g => '1'),	--5
	(a => '1', b => '0', c => '1', d => '1', e => '1', f => '1', g => '1'),	--6
	(a => '1', b => '1', c => '1', d => '0', e => '0', f => '0', g => '0'),	--7
	(a => '1', b => '1', c => '1', d => '1', e => '1', f => '1', g => '1'),	--8
	(a => '1', b => '1', c => '1', d => '1', e => '0', f => '1', g => '1'),	--9
	(a => '1', b => '1', c => '1', d => '0', e => '1', f => '1', g => '1'),	--A = 10
	(a => '0', b => '0', c => '1', d => '1', e => '1', f => '1', g => '1'), --B = 11
	(a => '1', b => '0', c => '0', d => '1', e => '1', f => '1', g => '0'), --C = 12
	(a => '0', b => '1', c => '1', d => '1', e => '1', f => '0', g => '1'), --D = 13
	(a => '1', b => '0', c => '0', d => '1', e => '1', f => '1', g => '1'), --E = 14
	(a => '1', b => '0', c => '0', d => '0', e => '1', f => '1', g => '1')  --F = 15

);

subtype hex_digit is natural range 0 to seven_segment_table'high;

function get_hex_digit (
	digit: in hex_digit;
	lamp_mode: in lamp_configuration := default_lamp_config
) return seven_segment_config;

function lamps_off (
	lamp_mode: in lamp_configuration := default_lamp_config
) return seven_segment_config;




	