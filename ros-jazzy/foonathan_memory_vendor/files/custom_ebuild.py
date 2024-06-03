from superflore.generators.ebuild.ebuild import Ebuild

FM_V = '0.7-3'


class CustomEbuild(Ebuild):
    def get_ebuild_text(self, distributor, license_text):
        self.src_uri = f'''
    https://github.com/foonathan/memory/archive/refs/tags/v{FM_V}.tar.gz -> foonathan-memory-{FM_V}.tar.gz
    {self.src_uri}
'''.replace('    ', '\t')
        return super(CustomEbuild, self).get_ebuild_text(distributor, license_text)
