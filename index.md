# Reinir's notes

- [Software development process](software_development_process/SDP_index.md)
- [Markdown syntax](syntax/markdown_syntax.txt)
- [Design Patterns](design_patterns/index.md)
- [Software requirement](requirement_engineering/req_eng_index.md)
- [Ethics in IT](ethics_in_IT/ethics_index.md)
- [Testing](testing/test_index.md)

## General structure

A notes folder has the general (recursive) structure of:
- Resources folder
- index file, only allow to link to .md files in its current directory
- one or more .md files, 
- inner notes folders

	notes
		resources
		index.md
		mdfile1.md
		mdfile2.md
		folder1
			resources
			index.md
			mdfile1.md
			mdfile2.md
			innerFolder1
				resources
				index.md
				...
			...
		folder2
		folder3
		...