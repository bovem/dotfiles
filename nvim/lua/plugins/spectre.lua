  return {
   {
     "nvim-pack/nvim-spectre",
     config = function()
       require("spectre").setup()
     end,
     keys = {
       { "<leader>S", function() require("spectre").toggle() end, desc = "Spectre" },
       { "<leader>sw", function() require("spectre").open_visual({select_word=true}) end, desc = "Search word under cursor" },
       { "<leader>sf", function() require("spectre").open_file_search() end, desc = "Search in current file" },
       { "<leader>sw", function() require("spectre").open_visual() end, mode = "v", desc = "Search visual selection" },
     },
   },
 }
