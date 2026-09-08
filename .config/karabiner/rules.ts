import fs from "fs";
import { KarabinerRules } from "./types";
import { createHyperSubLayers, app, open } from "./utils";

const rules: KarabinerRules[] = [
  // Define the Hyper key itself
  {
    description: "Hyper Key (⌃⌥⇧⌘)",
    manipulators: [
      {
        description: "Caps Lock -> Hyper Key",
        from: {
          key_code: "caps_lock",
        },
        to: [
          {
            key_code: "left_shift",
            modifiers: ["left_command", "left_control", "left_option"],
          },
        ],
        to_if_alone: [
          {
            key_code: "escape",
          },
        ],
        type: "basic",
      },
      //      {
      //        type: "basic",
      //        description: "Disable CMD + Tab to force Hyper Key usage",
      //        from: {
      //          key_code: "tab",
      //          modifiers: {
      //            mandatory: ["left_command"],
      //          },
      //        },
      //        to: [
      //          {
      //            key_code: "tab",
      //          },
      //        ],
      //      },
    ],
  },

  ...createHyperSubLayers({
    // I use spacebar as the app launcher
    spacebar: {
      f: app("Finder"),
      h: open("https://hotstar.com"),
      n: open("https://netflix.com"),
      // Below I'm just leaving comments of the shortcuts I specifically use on
      // apps in case I need to configure them on a new computer
      // hyper+w - paste activate
      // hyper+1 - paste stack
      // hyper+0 - cleanshot x capture area
      // hyper+9 - cleanshot x capture previous area
      // hyper+p - cleanshot x OCR
      // hyper+` - cleanshot x record screen
      // hyper+2 - betterdisplay fav res 1
      // hyper+3 - betterdisplay fav res 2
    },

    // v: {
    //   h: open(
    //     "btt://execute_assigned_actions_for_trigger/?uuid=351720FE-6657-4551-8D25-E4C732718B78",
    //   ),
    //
    //   b: app("Sublime Text"),
    // },
    x: {
      n: open(
        "btt://execute_assigned_actions_for_trigger/?uuid=B66E8E94-8227-4078-A59D-BCFD5EA2B917",
      ),
      p: open(
        "btt://execute_assigned_actions_for_trigger/?uuid=83DF9E9B-D6C6-419F-B560-1CF7DFE3BB44",
      ),
      m: open(
        "btt://execute_assigned_actions_for_trigger/?uuid=C8C11936-AC91-45E5-B823-F57F5CE83D93",
      ),
    },
    // v: open("https://vercel.com/saral-guptas-projects/"),

    g: open("https://github.com/saral-gupta7"),

    // s = "System" or "Service"
    s: {
      j: {
        to: [
          {
            key_code: "volume_decrement",
          },
        ],
      },
      k: {
        to: [
          {
            key_code: "volume_increment",
          },
        ],
      },
      // Move to left tab in browsers
      h: {
        to: [
          {
            key_code: "open_bracket",
            modifiers: ["left_command", "left_shift"],
          },
        ],
      },
      // Move to right tab in browsers
      l: {
        to: [
          {
            key_code: "close_bracket",
            modifiers: ["left_command", "left_shift"],
          },
        ],
      },
      u: {
        to: [
          {
            key_code: "display_brightness_decrement",
          },
        ],
      },
      i: {
        to: [
          {
            key_code: "display_brightness_increment",
          },
        ],
      },
      // Previous song
      y: {
        to: [
          {
            key_code: "rewind",
          },
        ],
      },
      // Next song
      o: {
        to: [
          {
            key_code: "fastforward",
          },
        ],
      },
      p: {
        to: [
          {
            key_code: "play_or_pause",
          },
        ],
      },
      // Lock screen
      d: {
        to: [
          {
            key_code: "q",
            modifiers: ["right_control", "right_command"],
          },
        ],
      },
      // Close browser tab
      e: {
        to: [
          {
            key_code: "w",
            modifiers: ["left_command"],
          },
        ],
      },
      // BetterTouchTool, connect airpods via bluetooth
      n: open(
        "btt://execute_assigned_actions_for_trigger/?uuid=9A1CFA49-416C-480E-9430-184D2DAEE1CA",
      ),
    },

    // For betterTouchTool
    d: {
      // Select text from alacritty
      j: open(
        "btt://execute_assigned_actions_for_trigger/?uuid=5A708885-4D65-465C-B87A-996BA6C23B86",
      ),
      // Paste alacritty text and go down
      k: open(
        "btt://execute_assigned_actions_for_trigger/?uuid=5AF2559D-E6C9-4665-8D06-2CAF35B1AB07",
      ),
      // Paste alacritty text and go up
      l: open(
        // This one is working great
        // paste alacritty go up LESS DELAY
        "btt://execute_assigned_actions_for_trigger/?uuid=E46BB0D5-F67F-46D5-850C-197337EB26E3",
      ),
      // Reboot router
      u: open(
        "btt://execute_assigned_actions_for_trigger/?uuid=EA461EE0-4C15-4113-93B6-07C12086FF1F",
      ),
      // Test ping
      hyphen: open(
        "btt://execute_assigned_actions_for_trigger/?uuid=EADC365D-0747-4E8F-ACB6-79564FEF1410",
      ),
    },

    // shift+arrows to select stuff
    f: {
      h: {
        to: [{ key_code: "left_arrow", modifiers: ["left_shift"] }],
      },
      j: {
        to: [{ key_code: "down_arrow", modifiers: ["left_shift"] }],
      },
      k: {
        to: [{ key_code: "up_arrow", modifiers: ["left_shift"] }],
      },
      l: {
        to: [{ key_code: "right_arrow", modifiers: ["left_shift"] }],
      },
      y: {
        to: [
          { key_code: "left_arrow", modifiers: ["left_shift", "left_option"] },
        ],
      },
      u: {
        to: [
          { key_code: "down_arrow", modifiers: ["left_shift", "left_option"] },
        ],
      },
      i: {
        to: [
          { key_code: "up_arrow", modifiers: ["left_shift", "left_option"] },
        ],
      },
      o: {
        to: [
          { key_code: "right_arrow", modifiers: ["left_shift", "left_option"] },
        ],
      },
      // // Magicmove via homerow.app
      // m: {
      //   to: [{ key_code: "f", modifiers: ["right_control"] }],
      // },
      // // Scroll mode via homerow.app
      // s: {
      //   to: [{ key_code: "j", modifiers: ["right_control"] }],
      // },
    },

    // copy, paste and other stuff
    right_command: {
      // I use this for fzf
      r: {
        to: [{ key_code: "r", modifiers: ["left_control"] }],
      },
      // Slack go to all unreads
      a: {
        to: [{ key_code: "a", modifiers: ["left_command", "left_shift"] }],
      },
      h: {
        to: [{ key_code: "delete_or_backspace" }],
      },
      l: {
        to: [{ key_code: "delete_forward" }],
      },
      // Switch between windows of same app, normally cmd+~
      spacebar: {
        to: [
          { key_code: "grave_accent_and_tilde", modifiers: ["left_command"] },
        ],
      },
    },
    // // 'e' for extra tools

    // e: {
    //   // To edit the contents of an excel cell
    //   u: {
    //     to: [{ key_code: "f2" }],
    //   },
    //   // Focus outline in obsidian
    //   o: {
    //     to: [{ key_code: "x", modifiers: ["left_command", "left_shift"] }],
    //   },
    //   // Increase LG TV volume
    //   k: {
    //     to: [
    //       {
    //         shell_command: `~/opt/lgtv/bin/python3 ~/opt/lgtv/bin/lgtv MyTV volumeUp ssl`,
    //       },
    //     ],
    //   },
    //   // Decrease LG TV volume
    //   j: {
    //     to: [
    //       {
    //         shell_command: `~/opt/lgtv/bin/python3 ~/opt/lgtv/bin/lgtv MyTV volumeDown ssl`,
    //       },
    //     ],
    //   },
    // },

    // ALWAYS LEAVE THE ONES WITHOUT ANY SUBLAYERS AT THE BOTTOM
    // Vim nagivation
    h: {
      to: [{ key_code: "left_arrow" }],
    },
    j: {
      to: [{ key_code: "down_arrow" }],
    },
    k: {
      to: [{ key_code: "up_arrow" }],
    },
    l: {
      to: [{ key_code: "right_arrow" }],
    },
    // Map hyper+b to ctrl+a for tmux
    a: {
      to: [{ key_code: "a", modifiers: ["left_control"] }],
    },
  }),
];

fs.writeFileSync(
  "karabiner.json",
  JSON.stringify(
    {
      global: {
        show_in_menu_bar: false,
      },
      profiles: [
        {
          name: "Default",
          complex_modifications: {
            rules,
          },
        },
      ],
    },
    null,
    2,
  ),
);
