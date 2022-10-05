local ok_status, comments = pcall(require, "nvim_comment")
if not ok_status then
	print "nvim comment not found"
end

return comments.setup{}
