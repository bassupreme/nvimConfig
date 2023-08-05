function Compile()

	local path = vim.fn.expand('%:p')
	local ans  = ""

	if vim.bo.filetype == "tex" then
		ans = "!cd " .. vim.fn.expand("%:p:h") .. " && pdflatex "
	elseif vim.bo.filetype == "java" then
		ans = "!cd " .. vim.fn.expand("%:p:h") .. " && javac "
	elseif vim.bo.filetype == "rust" then
		ans = "!cd " .. vim.fn.expand("%:p:h") .. " && rustc "
	elseif vim.bo.filetype == "c" then
		ans = "!cd " .. vim.fn.expand("%:p:h") .. " && gcc "
	elseif vim.bo.filetype == "cpp" then
		ans = "!cd " .. vim.fn.expand("%:p:h") .. " && g++ "
	end

	-- esegui il comando di compilazione
	-- (questa print serve per il debug)
	-- print(ans .. path) 
	vim.api.nvim_command(ans .. path)
end
