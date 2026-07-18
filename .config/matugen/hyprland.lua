return {
<* for name, value in colors *>
	{{name}} = "0xdd{{value.default.hex_stripped}}",
<* endfor *>
}
