from superflore.generators.ebuild.ebuild import Ebuild

MCAP_V = '1.3.0'


class CustomEbuild(Ebuild):
    def get_ebuild_text(self, distributor, license_text):
        self.src_uri = f'''
    https://github.com/foxglove/mcap/archive/refs/tags/releases/cpp/v{MCAP_V}.tar.gz -> mcap-{MCAP_V}.gh.tar.gz
    {self.src_uri}
'''.replace('    ', '\t')
        return super(CustomEbuild, self).get_ebuild_text(distributor, license_text)
