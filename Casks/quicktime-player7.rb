cask 'quicktime-player7' do
  version '7.6.6'
  sha256 '954c2376d2d747821614dc802249cf3c708a4792abed08945d7261de3894e759'

  url "http://support.apple.com/downloads/DL923/en_US/QuickTimePlayer#{version}_SnowLeopard.dmg"
  name 'QuickTime Player 7'
  homepage 'https://support.apple.com/kb/dl923'

  depends_on macos: '>= :snow_leopard'

  pkg "QuickTimePlayer#{version}_SnowLeopard.pkg"

  uninstall pkgutil: "com.apple.pkg.QuickTimePlayer#{version}_SnowLeopard"
end
