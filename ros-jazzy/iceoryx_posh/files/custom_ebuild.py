from superflore.generators.ebuild.ebuild import Ebuild


class CustomEbuild(Ebuild):
    def get_ebuild_text(self, distributor, license_text):
        self.add_build_depend('cpptoml', False)
        return super(CustomEbuild, self).get_ebuild_text(distributor, license_text)
