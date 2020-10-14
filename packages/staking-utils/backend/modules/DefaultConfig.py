class DefaultConfig:
    data = {
        13: {"name": "FreightTrust Vietnam", "website": "https://freighttrustviet.com"},
        15: {"name": "FreightTrust Validator", "website": "https://www.freighttrustvalidator.com"},
        16: {"name": "bu1137", "website": "https://keybase.io/nickai"},
        17: {"name": "GoFreightTrust", "website": "https://gofreighttrust.net"},
        18: {"name": "GoStake Network", "website": "https://gostake.com"},
        19: {"name": "FreightTrust Ukraine", "website": ""},
        20: {"name": "Binary Fintech Group", "website": "http://binaryfin.com"},
        21: {"name": "FreightTrust Global", "website": "https://freighttrust.global"},
        22: {"name": "FreightTrust Russian", "website": ""},
        24: {"name": "lopalcar", "website": "https://freighttruststakers.com"},
        27: {"name": "Cryptoast.io", "website": "https://cryptoast.io"},
        28: {"name": "Hyperblocks", "website": "https://hyperblocks.pro"}
    }

    @staticmethod
    def containsInfoForValidator(validatorId):
        return validatorId in DefaultConfig.data

    @staticmethod
    def getInfoForValidator(validatorId):
        return DefaultConfig.data[validatorId]
