from superflore.generators.ebuild.ebuild import Ebuild

RWQ_COMMIT = 'ef7dfbf553288064347d51b8ac335f1ca489032a'


class CustomEbuild(Ebuild):
    def get_ebuild_text(self, distributor, license_text):
        self.src_uri = f'''
    https://github.com/cameron314/readerwriterqueue/archive/{RWQ_COMMIT}.tar.gz -> readerwriterqueue-{RWQ_COMMIT}.tar.gz
    {self.src_uri}
'''.replace('    ', '\t')
        return super(CustomEbuild, self).get_ebuild_text(distributor, license_text)
