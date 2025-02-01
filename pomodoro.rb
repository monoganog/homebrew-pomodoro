class Pomodoro < Formula
    desc "A simple terminal-based Pomodoro timer"
    homepage "https://github.com/monoganog/Pomodoro-Terminal"
    url "https://github.com/monoganog/Pomodoro-Terminal/archive/1.0.0.tar.gz"
    sha256 "482cc8c5aa0cc7a757b17c1c3376d8a2ef039f87045ad6909ed55e386ffe3c02"
    version "1.0.0"
  
    def install
      # Assumes that your main executable is named 'pomodoro' and is in the root of the archive.
      bin.install "pomodoro"
    end
  
    test do
      # A simple test to check if the command returns a help message or usage instructions.
      assert_match "Usage", shell_output("#{bin}/pomodoro --help 2>&1", 1)
    end
  end
  