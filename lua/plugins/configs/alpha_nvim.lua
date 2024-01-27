local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- The cat art was made by Takashi Fujita taken from https://fsymbols.com/text-art/twitter/
dashboard.section.header.val = {
    [[             ▄▀▄     ▄▀▄              ]],
    [[            ▄█░░▀▀▀▀▀░░█▄             ]],
    [[        ▄▄  █░░░░░░░░░░░█  ▄▄         ]],
    [[       █▄▄█ █░░▀░░┬░░▀░░█ █▄▄█        ]],
    [[██████████████████████████████████████]],
    [[█▄─▀█▄─▄█▄─▄▄─█─▄▄─█▄─█─▄█▄─▄█▄─▀█▀─▄█]],
    [[██─█▄▀─███─▄█▀█─██─██▄▀▄███─███─█▄█─██]],
    [[▀▄▄▄▀▀▄▄▀▄▄▄▄▄▀▄▄▄▄▀▀▀▄▀▀▀▄▄▄▀▄▄▄▀▄▄▄▀]],
}

alpha.setup(dashboard.config)
