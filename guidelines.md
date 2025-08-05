- Commit:

• 🐛: Bug related
• ✨: Feature added
• 🎨: Style related
• 🎵: SFX related
• 🛠️: Touched something
• ❌: Removed something
• 📝: Docs
• ❤️: Testing
• 💡: Change in guidelines.md (idea/change)
• ↩️: Revert changes
• 🚀: Improve efficiency

- To-Do:
    - Fixes:
        - Confirmed:
            - Item duplication / disappearing when using backpack in offhand (#35)
            - Upgrade recipes loose their previous dye/style (1.21.4+)
            - Crash when scrolling on bundle which is on a backpack (#27) -> Sentinel Error -> Current fix: Prevent bundles from entering a backpack (WARNING: This still affects ender backpacks)
        - Unknown:
            - Items in the backpack get deleted when player tps (#9)
            - Dupe (#10)
            - When upgrading a backpack it sometimes doesn't unlock the new slots (#28)
            - When tp the backpack loses everything in it (#29)
            - Items get deleted randomly (#30)
    - Other:
        - (?) Add another layer of protection to the team
        - Make backpacks equippable (Accesory support)
            - Make so you can open the backpack while equipped when crouching
