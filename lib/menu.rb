class MainMenu
    def initialize
        prompt = TTY::Prompt.new
        banner = File.read "bannerfile.txt"
        puts banner.colorize :light_blue
        prompt.select("  MAIN MENU ", %w(New_Game New_Player Leaderboard EXIT))

    end
end