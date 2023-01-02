local ok_status, ftools = pcall(require, 'flutter-tools')
if not ok_status then
	print "flutter tools not found"
	return
end

ftools.setup {
}

return ftools
