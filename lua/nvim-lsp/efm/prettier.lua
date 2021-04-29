return {
    formatCommand = ([[
        prettier
        --single-quote
        --trailing-comma es5
		--arrow-parens avoid
    ]]):gsub(
        "\n",
        ""
    )
}
