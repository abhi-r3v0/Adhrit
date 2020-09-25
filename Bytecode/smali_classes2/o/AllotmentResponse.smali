.class public Lo/AllotmentResponse;
.super Lo/AllotmentResponseJsonAdapter;


# static fields
.field private static ICustomTabsService$Stub:J

.field private static IPostMessageService:Z

.field private static final extraCommand:Ljava/lang/Object;

.field private static final postMessage:Ljava/lang/String;


# instance fields
.field private ICustomTabsService$Stub$Proxy:Ljava/lang/String;

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:Lo/LeaderBoardDetailsResponse;

.field protected mayLaunchUrl:Z

.field private validateRelationship:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/AllotmentResponse;->extraCommand:Ljava/lang/Object;

    const-class v0, Lo/AllotmentResponse;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/AllotmentResponse;->postMessage:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lo/AllotmentResponse;->IPostMessageService:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lo/AllotmentResponse;->ICustomTabsService$Stub:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lo/AllotmentResponseJsonAdapter;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/AllotmentResponse;->mayLaunchUrl:Z

    iput-boolean p1, p0, Lo/AllotmentResponse;->validateRelationship:Z

    iput-boolean p1, p0, Lo/AllotmentResponse;->IPostMessageService$Stub:Z

    iput-object p2, p0, Lo/AllotmentResponse;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    iput-boolean p3, p0, Lo/AllotmentResponse;->mayLaunchUrl:Z

    return-void
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;Z)Lo/SubmitScoreRequestJsonAdapter;
    .locals 8

    sget-object v0, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    if-nez v0, :cond_3

    sget-object v0, Lo/AllotmentResponse;->extraCommand:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    if-nez v1, :cond_2

    const-string v1, "fFhi0cTZpyVQYwMwl7BCfa0fa6esmkRUaNr4ktfJYZ8="

    const-string v2, "zY7ve7yH5iwXsZtHVz/pFTcqrVRjw/9S9WONYMEynFZkAF4xrgKtx3h3xuRzPQMip20QRDRywy1HyfSvsGm2QD2lFm3fBa4qeMYXgHmF+kpqlPfJAEMz0yf03LjtHdIAYnd5paqwPUucI/8oDC5VukmMYEhMd/BuS1xZZ26+WYmG3wxCjOvYbT1vYSoa11uMo3KWvGbRZPaBD5nkeJtsWDGIQyHsGcqr4PgPUXrDxfmZ9CZsMufTx0ZWjWl3DSSBsv37spbXazz8PVpx0NpiG1IyqqLtjAHguOKWJaWQHI/IxuT//acsHr8VfuDEekchcK6MMdOo02/+23AMQLnJ+e1if6WFEc74iIqduVpbc6WlBKXOFDb+hbNHD/23baxwVoQ+ZnXiswUpikT0eZ+0vD3sgjnCVHpdexwGRfdM94NLn5XZn+HW2QC6tNoqWDgYnKEmP+lZbB7MNikCR6sKsv8NUj7hflN/ZlsZFvBTdERG3X8XDbGLCW8NsMx/gJeA/Ujl8fFnngjf6P4WdUmMSn1l96JMMA528OjkjKO9ZXspi6zkIMXrPQeYMMEgxoyNT7mPwgtms2HUSI1k7VxVY/liuff7Ew6AxM8FbJZ+OAgcuzrj0HHO86SpXxXfWmtzf9hN2WFrLFdKotQ8OobScFqFyq4ZIbG3bxsHhLViIyPNxve/qoLaLGLtHHQ/qVGxgg+pz58v3P9Be6TanBUhHD613/qu0XghyOhUkKHa3R3+knAAIzLhvbF9cX0oPDxWgcdG7NzqN3Oc6PYK+ojwk3OYgR3RBq9+8/7sGY133Vxj1y60yAF+pTrzT6CBcNWkGnCRVQIyuQxYExAPlqBPr6e1BgcyiqYUNJD+IGK4Q9tGlOjoP4z8YRiD/dXDX9IS7MBGf4xb51ESY93Il1whOggn7tQBM24MyDl4zSA4RSAmAKUvz++E74xEUSjG6AdiZ0i+1A9xx4k5FfE5QLshvnCQiwwQjO5SI+lJeGTT3KGpe8fBmfdLweC6IRCfPavr3B+zuj8k7FN7wk9y/MEC7tyuDhmCbsQge8lJC+mbZdj+2oyYR0iA7a2IFK60X9Wh6EJwbr8yDy5jlEQCmlnP40Trm/8jeRAZkp7JX2jPy6pj4DXHnxyY4o2OOm0FP5p4kvzr5zdqwOpFLiKxDQ83ULAtx/7K5XjNtw3LGDW0Y8nNtvZgnvbfSYEZelXLJ4LiB85w14yMm3BKUj/o8loBtQGutkLP21t2t8Lcw+T3Vziu0+aZ//Qv9ZbGGudLuRLFrFQrMlpglKWRYQQ9sc5LC/9tOC7Y0AL/Blg4R5mF7aEvAqX0nqo2kzAa8nIMuUk+qjGHkSnNdqswILW8U6SpwI9xKHKK1wpf0nMOgJ3/tfk0529JpTqDKEtzm9SGZO71P+bNPc4hs63NjRd/OhKv9zVTfrE0Jh3e/c0O2vI4z73AH7k1v1qyQq3neEJ3hSSu1sQKhck3l76ZlXxnxoRhCGkQTKF6xZ4IqxfvmRKOCkoskNhgJFL7xfL9LvVjRCoZhGuMWdCkUfeU8CBLMe8nb14d8G0eZADt7W6qRlrEDnsnivbgnNz/r2/5zZlwLnr6uWLHlmBjNxHTM4MtHvNeYgcsd5CkGdbXWfI/KgqG3gE5LV30dSC1fxfwwZaOTB5vmcELfCk+7QAnjqqJqQpQl4DTVbiwsb9QVDXIpj/IHeDIXue7crrutibJC4bjRL8XZGn4PXBSIRygyLKHdGQVaBiIg/XMoF6PUw8IhxX/542ArKLlKWb7jOGSfhHKT99kUeJB0KVPO/v6VMTfP779K9wT9UK0SpqCfDOWOdOsi8JSVGYJCM9bquAWy8x87QFKTsUG7brWk0/zTZJsIWpu+JTBh+RTIKKOhl03hTzMy2RJ1eFiZXZGnJ20G2UlSVlWXVNFDQClhXZtoQgaq6oL+G4MuT+W9KEK+Yosj1lNOzjrUEVuGjqX0V690mSwl3BR279uMmySKkACIm7jDdORldvNPT6gM9UDnnVsKsq8omZDkp1esEVbUzZgFF1s+5ZSWIldnH0vCTpv2X8sV2EZMNVLIdjalWbTbsg3tbReIT1shsoW1ddMUGrikQzwpb656mznY5MT3dl1fYCU7ijLj+fEj4bznbupMLL5/lPpNRc965obHlb/R3ElpGBYb3AfXRjv10QDjPXG5nkf0HwSShdowJCANw3R6oUQqURih86VRmtO24ivfXG56sAmGN7iE5mEpw9urJfDogNX/b9/SyjTNpdqMy8lOx+XZlM7Lb8nTQQTipK9KgyX/wF8Tieur9eGDBmJh3zYJSjo7kkC4FB8ofwn67C4iNZIGdSigwbKFVa2he6pngi+l2kr9i5A2UmwuZCVWwjfnI7+nY8ympDJlNXL72HRYIxbPbd9r+CG3GbRa/stxS2DdyJrLQufFoPdkUc9h1JQIrmqVSp9vZOOs4fsGm66HxvA2vpfdplxwJjf7GtAnI53sxRAfG1Oj339z6jP5+4ecHMxjg6Jr15CKr9MglbgyuiHdl1a38LRC3U2hB2OYVvNo1Ipm/JLu+bYS1ThljaoUZavyEZaPG5GnB1q6WXAIZDDOoiucQZRm6RGAz+NA2R3Fr7AVT/ukGEH3PRySP0Bk43C+OX8f0gHjx3aAfCQ6PAlZbiIA8UDFwf832/DM0fbC1H8rUmsAO4tGrfXHCE3sYPWQrYfXOSmsD/168RNl9YJm58KAF1i8f97KX3+IPbF2pihf2dUsowWfy2ic8S9iVje+xbSws3oF6a3iI/pMxeOR++SA6UDK/a8N4lK8ZO1jXhp3mNRG9aqDYaZoEWia0yPIOXV5cvUq0hQvLvhkwRxpec70VHc0UZ9WDAqkMaK6aeZXy+h3cW3BTcGhOKPGlBZL+Y5q0l53IOGJ9t+OR1xobQrSk5LG5FGcKTPtxp0OE5UxTFnSV2FB4k55kBgO2Z9YrVefWiqxYz0nnxysQyHOooWqWKfURZC+VCv4ViHdusXvAgtYhXbyg1mTSKt8YQDM4EVt0vL1FvFcPbMWl3ZJA5zyhqwcL12Q03WAlS6M0edZ3Au28qxeDwmBJDG6Ybl4SXzB+GirbNo9WqbGwJ0Kid3hs4N96r5pxfdn3CZCm5Ed2PQ13qSXei3mvKIIpGtBy1utW010NKYo1GfgyTkmCn5yae+FZQAVO5BfwyTzkGtIsOdeyvI8+X/CSXw4LEOdhw7CoBAn/0hyRiCDwSBkFElOZqZsxRhLN7kXMBJtclCdWKdVUhBL9Vxss2WdUq41zf2GTP/DwJi99LZVwLLBNH53KMELFMced9isnNtHxONcikXx31J+ScvpO+3zJ0gi+45IgNhZl+yvk23CYg/zwYGZJhyTVh5o32LvLEQQ4DJDap7drb7/kQbXFn5VKEp4cLe5Yk3q/QAI0gAVRWo5ZofQpClRofpLdLgxgKSEeMkkvS8FWKYxj3AnJF16Zp8mrxCgh25QN3Q+YKKqZMz1hyuBdFmDQIMjSXpX8wv+HDPGiM8AEE/ZVXJJcfVjr/ilTryaWjhr/ZunNWvPBJerObqIQJu3GG4eNYkXeefAZK9fNq5m7Ht8c+I7tmLwimYk2ANuyJr3+hlguEKNXVd0X7u/TU8DaO/Z1JV8jx554VHC1BgCSxFeXvuw2S+wpoprAXDg74HAd7rYcGH0X9o9nHr0gPGF9ucIWJDnVTnU4NpMHJai0cqno1En13l0u6HruA78CtNkeHUlsopI1XasK/XCNJrJ6Hea+MmRYIRCZeJPHZQ2sWUGeawZv6okRKH5A77/cxNYoOD5W/P99iHKmGGdoxx3TEK0uZZyg3MulQUb0XQyqvlF0RXB9qlq92Byb095aDSFQk2K0Uq2dG7xD5/VvoTV9M0DDggfZ0iBaMe4Km/wvxSqo1N4WhaU0CQqAiOMfFlxX2XSsU/xBDnaATGlun8Xj/MSCTU7vpZlM0CXFpTsucfApWI2vGL/kto4Ty0MOv7lbc0JpdWdalkeASv29Lk0feRrYc7KG/CvNZZxgw5WuXsWi5pr3rOW6YcKTBYhHJepSAdlSaWskpys5rb86S+LoScyeNHGnfflPjV9XeGdbflvdOQUn1WuZ/7yw99l26opk+3AJ2zNO5wiycivml1a3psTAOQaj57Z7QMEQnhL1d8ZP7cLcoQNXjt9xTZ78Eqr3xPnWxdqEYMKV94NHlIxYzb1ThZFw7onc6I8HYIdtNzwjAkzdD0f+Hzwb4gcJhVY1Z7G1is029O8alynmrXZTmZ+H4USVwG+FBMWKqrKao23cW1j9lZqh6MbShi3luKhxry/whg+hS2C64FMuMbH5WebQzt5qoxExp6WqyaHPWUABIP+6Uvt2rOEdsrPKhjfRVjwsNkzFTn+Vzr+HBS1Ktv4MRp50y8ZShxm7iFkqfEcE4o52OGIH7djTeIPEwnYAeh3oFQ7tTq113s+KC+DGwglAnDpUpESB+DHXV7TBr31pvjovM2YJD6DMJAjXH1YLfCnUu8aTHt9ATb3YhL8Kv96LTkgjDQ9zuXGH2WXLs4AElwk7bMvZaicV8HmiTO5kNQKyxzeSAgZ9C7EdAQ9SXQp+rPpNO+iz5NZnQgbd53g9HPX+m0fJ/6uaIkQHu5c51KP/VYwSYWa+vPZp95d+Sn9V/c87iwelf9o26uq72OA43P9Z74jwOtyNl6WT0Tv8MlTNclZ3oW3SzAKBtkllvhml1Eo1tfwStVl1Ol7yPPXScACNx0JXaxxp6qEiDXMcFfR7FhzYX9ZZWrCtMPb08JzFg9WoMUaNhnPq2SR1PKtOhJNHs0YsduizDNFRhY+FlaAZ5Xj9738wSi4yMA8CWKbuQrXGyJATAZR2NnNXywB7eWu8E5mmpbkEpABFoakMTPBqCPnapPh/uChyuenuWv2UN80/eMT7T1bZVX4kQRQvhcea5sDTpHoYGhLnDw8fUrxi8m65WhAwwrsqY3vOj2t2SC5c5fXl0D8LRQ5J4LXq4JtEPllLGH00RvJuGSNj+iTXmQKTTieUS3fDQXe9PAakylcokx0A7zRomWsaIGpwtQkzlIH210OQXo9gjdRKMp3Z5Oe6c/qq+tBVs6H7jNQAxKniEDl8m3RHGtNRgOvzQMlgZ/SoiqhsKreZGmtC+QhZLBqJEl+Y0B/6NmjlyOd9HBPliA5gxZxGu8+xhuf8Gips4OndiOkoWNoTOmzktcowck1KUNz4EXwdxiZYlOFH89VFfOxec9h1BOKZMRwdHh5QhOVUGMN/kraCsWq7hMdQ/CfAqVbgzl5tOtff4R2Ni+KsfchtIHClogDKt4WILWWRsTWR22XCxbJZtlK4YxBMjaT31QcHzf/SizlaFyr14XAkps3+7+os2Y8Q6bfLhzwCFxWj90kY/UN0efIRsr35VPvc++SVoSzcqFSb1kacZpTu8lRA38zYpK8RbL8IUDcra33J5FmHNhxrvp+Hckariw7SPys5/Lxn/aMkC6q1w3tPCTfigrKgjoudu3CCrVC/ge8hRii7U8NJaYzRe5XsWWhogmlfZOjobd4Y2GNiaBZsYz+X7fNQ72nM2xbY8fO7qTe34E/zO/TGTnMa5XF/wKmneg4MnYrirNVbFdfI9N4QwWFJa0Yf1jPhQUTqNGa2sJQHBLLeNrVl6rya5Bz3vpRQhyEBaA15CBopctUcclTBNfBzEhesPdooWzLtutZ/wQfCkw1gPcG3gHrQ1azx+LY72u7ezHRww05oy/TIoLXnTYBm56FP5lEbeA5kyneEVl1W+VYKjAnB9qj1pHDaEgDebqybttdkmnU6ximnshHonevcSZvA3l16osUyxNSbXoXymWEJMeb2X7X5Jidh5h3sf0jq8e9ENjSJO1kFehHR+XwB/OVD1I5CkS7Ia8Ii0nHP9qeONqy2vsUwOR6z9/RZnVGi7R3RJKd4TqLhm8AF+CD7Q6RZuEj3Zl1czSjXVCSzHPt6Ug7XvIcOU9RY6oEyjPLqPIxMQOeVo5eSVFfiAZ+Yyz1qeiYRthiIdSgRtpuQkRrMSAoinyO7w2tcB3vE2cftRjgJNVhCyx82yTFV9JorvBTVRZuoeRXrUJF6AfgGCAa8ossZPc3vf/9KfQQId63wgoAR2pFzDVo3x5uuaDK34KVqGMdQiDU4TmT7djX2ug58KYLObl2QaytNYFfrBrA5+n6VpIQ7L3QStSuOH+Ze67E+wSRyaBGOSmBLUGnC5ftR62W3OLvJcuRT002/HFO4UXigaNe29PwvpBf/P9nNydRl4ahi+X2VmXdraKzuJCEgXy3uTaBnYd2AXIF99FVErG1WjzscCee7csuFvEAirXoZGNX9xADperAUOWaN4QIqOD3QZv1GnLUl7eRAjfI9pR0wdVx2Se5Lco9ymEdsXhN1klfMKbrUQT4YyInb4Bwg7E33kOcbl24tPq8E+YXX35Lg5D1gXJQtfqxxNETOcpPUl35LHaRbJX7oDcjzBQ9J1N5mwF8EkRh5+ZdTuSEkE/07MERH9Fsv4hMQdrtNHWqXzKtH/R1Eo0ZAoRax+FNfB5TQOeD+cn1CkgWkU/ZAW5TLx+dRrRmBdou/yRVOdUuOFwxt7TZ4HjZVOc6fwVQYnI+1oK7GN5EYRXAY4yMrg+KV/Wz4lIVeQKDXL0IiajWu+zYjRTkvvH8/8ODaBiqH1hqTGXSDxTX+wHfFtXIomY0DYjYyy+uAXCsv86TSfKSUOfv0biGWoAQqH8nieXaJUmojSIl7Ub6IU2e3wSFez3346vkbjaDloIk5vlKvbgXK44PEUMIEogat8BnK3s41kzbsOfTIPlVbLl0oY8JmxaNz5B7Wiso+TxrY+tqnmhekpKD9X4ze/uBIlA3S2Ie3IsUbhA0W2aAQExWERoU+G3fvtUciYz1bAo+b4bkAHOk+d02pvfgJdvuVdDb38JG2Kl6AfKl3uuvB8ddObdJpm6dUXDlmq1GLch41qLX1BBctfnhZqVmLcPoOpUo7jNuod2IBflpU6L8tKF/vMDF0/M9DXLpdvTK7ERaKQL0n4PsXwHhop7k+8iZYMYKsboFwa+FBDwyDPCC7UtDAiMoQVBvs3fiSjpyjKEYX37Vd+0em6mJXIWm28lEuB2Xkx4B9LyL1ydB6FogARhFCQk8Mmv1xzjgP1+f/v/Nb6VOXapQQT7Tdcpr7PXha80HdgAPqvTdp7Cd49o+n8IUAG8Gue3RJlL7/XWFqIZPvMuUMAT36JEFoccacrE5UvWQNNlJYQjgYStPs8xbLgEGNe8FzyozGV7fyrxhYiQVphEma3pWv3KkxzglgJMEG4761lRDuE99INiuUvVSTTOzB8+dCeuDVsL0odwHzJZZGvr58sYWjWxDFe1i1Djy5rNzklUor9rLd3ydLzl2NdVsX8fYqLl9X9KN27euMkQCiGIV7kaN+VJ91AW8env3w1KIEgfbimqVqUJHNJN/DG+rDakGbArVQrU8qmDkP3RbrfEZsmqu/c/BWfZC6iXvbYXN3IsXORPJZA9//wAnhMLaM60XyRYNXHitNCSvEndof4HhpHzgJ8gIYTfHbilDAGqvFEB8LKs3nm7ZznxPPFtiNMJzJgTfOy5r5DzpVP3iayC9TZpEPGTq55s90d+lHiWdoSaolsJS6fwZM0Oku+jrgdCWsTy0I856ZThxm10CYAJna46DBVwZfwzdgWfcHp0aKkikXv8+TG+gTIflAYCQtCCOa7XQ3tQNMq7WRe4mWK7csaVEPwy/3y90MkKykcvQOg61+1VdmcaKH6tzBd0yRHtuDybNnlV8Pqvhkze6pp49yXbt035ReQ3r/eyAIZKqJqajjyRcmAkN6t2CSNpinP4agcr3dEXlvHsjmm3jfua8rU6APlU7DZ8dCRJu03Icffo9307BqFGz9+Agacyu1Qi17OoVbgIIH/yyvB6RCsFKxXJ5GvQfifjn/cPg2dyD1KFfcr4JEqCjx9gBP8c0meN60eX6piqx3x9jVymrC0HKWUiQB1e08nIhEvETDosHSCk2dWH7fMbqgSYbxR7cb2fnoLZDG09CAirBJpAoSxU0Gcw73sUb3VhAJcryRw7vsP53px6MN+ku9+v+ukxOVlwWX02Vdt/Iujd+GJ6sTrBoLoDDFmaKo7quuz7nRLfQY7o+plcQpC+HsN62QTpdTNyXEf7xWsidyYb/+wk/xBx8MKRnzh1Hf518sWd4xKaJcYlq5reLZmV/XttTKXHPLDDwj17TnnwtQ+9+F2fz3pKHcxQRON9BbjE6aQtVgjfnxtnXQOeZyolim114GsFnPz4aeYLHZnndsIRi9cqCjGca95oESbzDUxyGl/JxVtvaJ9RKabQlN7Rc5oah56GCi6XJB+hvVjMs0e0hkieXRiTkoW9sz+XPQf5NTsnDFybwPLq2QGZ9m9lf7bjpBpF2sZ6ywDArZpjsKl1NN0R+FWm/nGxVUka5QUKSOx++4JjW9KkIDfgV0bXOyvXZNKIIHPfZWI42XlqyMANhHVkWTxVBq5iEVTVmV+O6krL/1Zy7wGX6djNpuZdRtruW+4CcEvzJId9aBDB+f64b2TBqm/HrkL/QN8+XheIa2EbkkM8bMweq8b+2sgoxvSwPsd0/unJEeXyhFDvOkSEpHtx5TwcQNVPNNUSGsIyLJK4pLZMIA1Fv8Pe4lI3aD3RE1ypnFcAch9cegrQtz7TPajZPemUuGaz0lGucrr0Ydew4zpkj6yqycHyNuoSAfQecqXOtzcAdLAHQ0Pcy8Unh06YqAf2sfXBL02+D+inLhcqCaM1L4V+lgQB1ptJnudvPvjCuGpCq8kB0kKKBsFbysux8ULy2X7kPDZCvYdl9WRbz6BpCKyBiA0Up/uTN11ZUn4EcRB6mbob01y9lG36GN9n5Bj4/dXeUTY6qgNhKujBcmm/zH5EDYhGDWn/xvxEVOP0Ol8CK/1B5xt49x6Gij5GzLYP5K9A8kdQ5777Sn66pvKPMf1oq4AFK9IYz4VTjt7I2gN/vobCb1iN9bUdVI9Qf2H6YNON7HYBpi89IMjmRFbhx9TgozjBc7H3Y2HWxsMt471B0og3kxgjCHYFxjn7fyPy+TcHthRkE5rK8pfcbufySIY8ojBWo9JGP2IhyWNr4jMGP99lWTqSx22mN/XiQmsdwHddaQQ7pdGdoichPaOIJf8gc3zLtqybSYrxGFDIW9Hu75YnV7tpUgEuFx4PXRlCI4xAS1yzUYiPwaPXypf5On1B+Bz9w14MxXlPsnzAmubdZCxYwJVpCFY5YSVNfwsaI0Tg7wNd16FyUa/aD1Yn0Pnm45flMNiMKs36/IN2vQUGPxQ5DoYmL6N3lcxJ75Mx1zBcP076ni1IPFugub2KBpMjaY7MOzgHHXttIxlwLv0PahcMDW3kYuok2NCAr1ljD6Y6m7nlCKnRWaafHYeuqgxuT5bwvJe8d5Tlz0sa92XpHyX8py1pi3Y3YnctWXfXF0PwjTPsmpb9XXIZTMSfVZDiqiR3eYM4HdHhiP77dlytpXEkYZKe95wbdsxiBBmYRKKOCpCUXrLoxZ6PFYgrv3IsUgbMrtsq/82ok54/Jr1oc1RAnbD5XqwlhPzM3slY0/o1BzLv6S6AI4vFEPvT4sdgmg5armIZYXPbQrOyga5dYzjn7Rd4AVqaeFWiKyb0M+Z9W7ElmK0kkpwsjqb0zwLh2Y2zAXf1pu0tSalJcEVk3iZGZYTzJsXjvc4AQV2Z4C8Wdf5QPq7kY20sfpKW7AxmPEpHeq3465Y8+Ugyzx8l69hUIBOZWSs/FbnaVsjBoEjOBLFs+9FOq0ouE2x8y7RHSNzT2NSpWQnVmGSgXyq6IuwgvnqdgeXIesv/B7VkKE3u9M2m1cdnjre3Hra/2AposG3Frl4n081U8uni9Uxz9mC07GvuMIbYU5Oswxx7n/E2by8YJbYwqFcWZPajHbunEoGCmtlwXfAFGON3DK53SueDumtOUWuvR1cbJ6TLYuYMTpURvWNA9E4Mb3K6THYGQLDa2PNEfIj6HgnnyzvwHQFZmp4ppg3W47zLzXMQHnHv9K1eWry7waPCI64nZjPcn9gGYHLNv02kmzFKFZ7qcjFJCdkaSnrRjvNZFzM63eS+4NMFYSwuz4bPfkXhydK/u/A83S9V+8lBczapY2rl2myk0pIP1qkR6fMnbI+uWJw4f85aDYNruMlWp7ah9mbxRWIcmy/f9RDWH/RRK7iag6Wb61eCq3PrN9zOuW+czPRQdiKPDqYFt+i83gqFT8vwQklHSoyVxajE/vG1AhdEMsRPH/FqfWRY9TjJpBocYLa/yGwIpsxFDEI9h0dtfVbtyf6wy/JKLJBw33SgkXURgQAmB1cbnYubpjyikU6wOt9hVavROKL7I8sPWISp/p4X9RJN9lc/Af+0lObp6UpBpOke6h7K3Leio+wVWBXaj9d36Tth7bEgFVSlgYyh/HjM2hZlg586Y0PQeII3mqVJ+Z9AFTctkiTKtWqTuykvaQYywOug3INvg4vEnTJhOQZq3N0oKDLTxleqNBitgk9ZTam2AnRyvMuOvPi2lt2QjjpnhLc/fgr6IBqYFTduaprVbVGNI6dXYotv0DCL/4yPFwdWNuIhBSjyDzyh8tHJckCygDNYbvh5HXVTCTXHTXbaJwDEBj0sD+Hj7DRyEcvV0Mx01aUWgShz7hrxoxpEsfot9nzf0ETa0wHdboa5Gb+QyI0qTRmoHq4kqZN5NjtLZX0S2mOCXadnpnPM7ulkOSCRG5DuXl/yqgpBCYA/VF1YB4IDzbmYfcukvOx3MBrb2vL2fqrcw0NpZ5AtboF9vPgz/ZOv4jVMwV9vnTKh6JHKhrIfvLn45n6lqwKkWw8GlX61XF1sqHG7Q/sLm0lG1YMWAXALGxECfLMyvATc8mfkSzT+J+pvXtrEEzu6awFssj0OfD4XOW6skvlziqv5WPOeoCWx36CifE0i7sRVVi2Bi6kJwd9955hKWx0rKAtRKLnqXJjegfhEdcXuxVJG78uN7/ey5JuBf8IyZmbY3tUxYTMuVTZRu29fQJzr9W77SiehjbVbnrlahUxLvqO5SwGKbUzAbAe5V8PiYAp0aNkbzT7gOO1eDmHWzz9slTAr4XOuFNq0Wgp78jBvQMYlIGvf7ekY/5A6FQ0ICOyeiPjgPuGaH5lxjuwnPvEAGyChLj5iY/pwiI1iwjRE8Ne3Xqyr4sj8WmHXI9WdMxdN0pFwxQQ2+SMF+DrP5Xy55FNXUSSIfiiN4B5ZlNjX7g8izs5ABhgRicZM+w1Gz/czGckXdzBpTXvVr4sQSgnFnwu3x4WZnW8R6FXxYJY8UNmcNs7zeGqDcmlgI8DvpkxN5N2rm1UaJh+kbIPxeyg7x4w544k93vsxBvY2L8BBVy9djeW7nLOmhain+39SvFWwGVaTeKZUxCljVofGeAWOFFhFCmlsosDJgm1x0vtAHUrlPoY78quQF8ZSvBng2wvfoW6cF0TiXfwv0kXguKUnO9WVWGsbCCY0Ku1fkrSqKSwaXnpJqGfbgd663npXKxehM1vM8GVeRH7ldL2HaebLZ/zpbgEYYSJ6cBSSuWtZXvoTNXxYlhYQJcbU5POfjRRAKu/dzgqitS2lhwQYOgAbo0GOiXiHlELr5edMB4i4F6Mg7Cez7g/dbNm1C2bIsLDbEgmg3/BkWpwhmu/vi31LDE0zJ94uUsazaOeFic6J3x+hhbZoaasENp1rJmmlOrKgAsOauornGTvzcbTE5MlxEZFbad900aR47i1DWYPhHpVmZsBXWXeRQGM8/bRRuddesEerjnnC7Tk9LzpWHGN9L+myB2xYixztd/A4vDZArfV11Kau9uTX"

    invoke-static {p0, v1, v2, p1}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lo/SubmitScoreRequestJsonAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lo/WinningTypes;->putCallback:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "4o7tecxtkw7XaNt5hPj+0H1LvOi0SgxCIJTY9VcbazM/HSl/sFlxBFwnc8glnvoB"

    const-string v2, "RgSY6YxU2k1vLXOV3vapBnQwJDzYDlmX50wbm2tDcnw="

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2, v3}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    :cond_0
    const-string p1, "1QeH3Cf7T53ayw17Ebbo9YTdhU+IFx0X5nCtC5gZQym4uicOVPXxYWmMK9k58i8n"

    const-string v2, "bHJRpFJ+2R5LAbYQUBDMyfYpLd1oiGixlpIqMJOBQPY="

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {p0, p1, v2, v4}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "1DzTSPdcTVkbB0cTQEaPo/MU1E1TGypt38nYJILt/8CcQbOuYjF6hLShUHnLb5uw"

    const-string v2, "dkCo8xze5sFyp7Msrb8F1JKjVIP7LutspgZPYQvsMlo="

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {p0, p1, v2, v4}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "+8WN7RfVBrTKK5NXM+y9JA4Ygu2jPZokHNFGgulhBRZ32uCnyKWWGQNTE1weoQCM"

    const-string v2, "peILYfFejTn8xmazfpiZWeK2eaYjjxEBmAZ8bUD9PWU="

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {p0, p1, v2, v4}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "6hrke/fCJ5tLCck7L6DvYxDB/To2PLUVGD3lbM1fdL2y9IScTypVRvrPFLLn4rDM"

    const-string v2, "+GAY853+DQRMYkeMG8Hbv1THvRgwf43Jh+3p4yQDqGw="

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {p0, p1, v2, v4}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "f8J+j+UhiTEjRF3iyDcFnM9Rm6LC/P+2PE2qff5S0gHSDPzrH4HNcnCaI+twvhbv"

    const-string v2, "MOBosqV6pejtL/WEgsHP3Y2p2WtApcEEa2XyqqRQCo0="

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {p0, p1, v2, v4}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "bYi99wWoqjOnUF4nnSWQsu9qLqARRsoauNez1uhJPws2YAlolLPh/xgKDnyI06MJ"

    const-string v2, "pjeIE8EsMfMk4SIebXHXNWKXTpK8v5vG6YqOxp1QH1M="

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {p0, p1, v2, v4}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "ug+duzFNTlMWhYez8qKOR3bxkM8vLOPy9xVUBCCMTrplDFf/BnF2bNmA7hw0iYtI"

    const-string v2, "ogMtakENM6NAXJL7DCVTIbgawd5T3ZVhEaXugMAz+D4="

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {p0, p1, v2, v4}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "PRnAd1qZLf3/u2x/ZslcDq2vQzDbmFHkH/jSij536nFGwYo+g6o8PpQOJcDeuz++"

    const-string v2, "99eM4BYfXxOCBAhS2wQJENWQ4BMWrR/wKqrfHx1Ws8w="

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    invoke-virtual {p0, p1, v2, v4}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "ryulhTIO44CH2QVINEPOtPkpQOSdbbq7HgisLeHH33VCs+TjwYWzYttvzJcQiI1k"

    const-string v2, "dnKLchXhJgI3U7L4th0PQJWe3DOIJJ7MUji5p7t5mjc="

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/MotionEvent;

    aput-object v6, v5, v1

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v5, v3

    invoke-virtual {p0, p1, v2, v5}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "oT49Nu6m3oNdAQwbQzvwr/RE4TwZbR8mJKypakrI/GqBgyD2niyVic8N9UaqvU10"

    const-string v2, "LS3Cw7DlWSqpRsXrajoVsCxXOedCBnQXFZcLjXzD8so="

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/view/MotionEvent;

    aput-object v6, v5, v1

    const-class v6, Landroid/util/DisplayMetrics;

    aput-object v6, v5, v3

    invoke-virtual {p0, p1, v2, v5}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "1GzFbNgtZBsZ6xBrCbOvmw4GuyabWdtXgJqf+Aoik3E00oSTfDga4UiXvbD1YLYB"

    const-string v2, "1EiWqNFog84woyMiTveFonfDO5rsRz44QrKedC4xw+8="

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2, v5}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "R1L5/7J00Fko/kDi6VDsBhCzpp4/7wzabnzdihUS7rPLvaXLFWrERChyvYYgVJRF"

    const-string v2, "4WtEOgM4wQ7wiw1OB3pMyAbaplBizcjE6LRBT/nrDgM="

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2, v5}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "uFEr0moMuWuurgrUpfSBjyUksFv6IqKMSuNqo2jCjRmu9JHDaSBf9LDKs2u/XE/B"

    const-string v2, "hDtufeJTxJSs5qQMCIPuyzc9ZPOtO/34yyf8Kf44rGo="

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2, v5}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "C4t4eP72HKoZsX62gBXGicLgvQbyKikYhXkvESjpMVAOEyUibmrLmpkJ5lZygzZE"

    const-string v2, "onbJNRechKgg7ilJYzLDEQ07M0uNlDZp05nZ4h6WJ40="

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2, v5}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "YOE4tLd8IhAbsNGoUEFHfu51/79yG0YlK4bMxi/e6gOIrtpqPN+TQgqpfYNBoiRy"

    const-string v2, "aFY444Zz3/sMYl+Q7uujofvlLWJ37651UMbaKJCFBnU="

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2, v5}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "Q7gHsedaZvBKvqRLQGMIPKihViSMmXus6bBgU0lNdv+Pm9sSlP+Z+JltWG56lF1K"

    const-string v2, "mrdNgIRzsAu+cEIamFRkeCivuYIijUjvD76p38JyQec="

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2, v5}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "LJD7GILw6ox/o3kYqhR5FF4FDylErrAaJ66Y8V8gtnNGF8DcetGJrYvTlHeK8kyR"

    const-string v2, "GKdCM/OywOIR4FMFS5XrDdTIpVvhoMFma/KSfRUdsbQ="

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    invoke-virtual {p0, p1, v2, v6}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "nXKe8Ev09tosW935mj67BeJvnsHiQzgrotB4vyuZm+aJQgx77SXcf757aVGtnDOm"

    const-string v2, "yl+F7AaTCLci2yEfPOMTGPVVFLoqw9fKWSf4HTpN46M="

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, [Ljava/lang/StackTraceElement;

    aput-object v7, v6, v1

    invoke-virtual {p0, p1, v2, v6}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "j5/WVRJsgiWNVIg0a6aXYQYocHm4rEEozf0LrIkPezct93ISwgyVBTLRIkEvztpn"

    const-string v2, "gCYklRkrI0pyKJ3j1u5Yl6Jj12a6PD1K39diuw7+f7o="

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v6, v1

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v6, v3

    invoke-virtual {p0, p1, v2, v6}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "WiMYovSpRj6RF1r6zXON0hYVyLxgllUAYyMyyeBevdbJbdYcoBpd8nDjCwwclcSu"

    const-string v2, "vpq7z91A+vN3MIS65A+GwiFRgEFOFpQOdK5Z+mjW21w="

    new-array v6, v4, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {p0, p1, v2, v6}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "wxabFp8V9bGKut15duzoi2M8ew0t/HWGFw3NoPp8pFanKwQpdIx0WzpFbmJaLX9T"

    const-string v2, "grSrEy+Ml8J7boJNrN9uNiXpddsqwR6A9NVesV/hHT8="

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/view/View;

    aput-object v6, v5, v1

    const-class v6, Landroid/app/Activity;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    invoke-virtual {p0, p1, v2, v5}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    const-string p1, "aH422z6bUtRL57gOABo0AU5IQDHmWvjsQgQZk64bzhjXVYUZmajAsUz/rrnMYVsw"

    const-string v2, "UAmRxgiWCEqHprf42V+e65VvIvUfFXeXbaMy5B8vzwA="

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    invoke-virtual {p0, p1, v2, v3}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    :cond_1
    sput-object p0, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    sget-object p0, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    return-object p0
.end method

.method private static extraCallback(Lo/SubmitScoreRequestJsonAdapter;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lo/WinnerSheetBlockJsonAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcw;
        }
    .end annotation

    const-string v0, "ryulhTIO44CH2QVINEPOtPkpQOSdbbq7HgisLeHH33VCs+TjwYWzYttvzJcQiI1k"

    const-string v1, "dnKLchXhJgI3U7L4th0PQJWe3DOIJJ7MUji5p7t5mjc="

    invoke-virtual {p0, v0, v1}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Lo/WinnerSheetBlockJsonAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lo/WinnerSheetBlockJsonAdapter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    throw p0
.end method

.method private static onMessageChannelReady(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    invoke-virtual {v0}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_0
    sget-object v1, Lo/WinningTypes;->getOptionsList:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    sget-object v0, Lo/AllotmentResponse;->postMessage:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "class methods got exception: %s"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method protected static declared-synchronized onNavigationEvent(Landroid/content/Context;Z)V
    .locals 5

    const-class v0, Lo/AllotmentResponse;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lo/AllotmentResponse;->IPostMessageService:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    sput-wide v1, Lo/AllotmentResponse;->ICustomTabsService$Stub:J

    invoke-static {p0, p1}, Lo/AllotmentResponse;->ICustomTabsCallback(Landroid/content/Context;Z)Lo/SubmitScoreRequestJsonAdapter;

    move-result-object p0

    sput-object p0, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    const/4 p0, 0x1

    sput-boolean p0, Lo/AllotmentResponse;->IPostMessageService:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected final ICustomTabsCallback([Ljava/lang/StackTraceElement;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcw;
        }
    .end annotation

    sget-object v0, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    const-string v1, "nXKe8Ev09tosW935mj67BeJvnsHiQzgrotB4vyuZm+aJQgx77SXcf757aVGtnDOm"

    const-string v2, "yl+F7AaTCLci2yEfPOMTGPVVFLoqw9fKWSf4HTpN46M="

    invoke-virtual {v0, v1, v2}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lo/UserGameDetails;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lo/UserGameDetails;-><init>(Ljava/lang/String;)V

    iget-object p1, v1, Lo/UserGameDetails;->onMessageChannelReady:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    throw p1
.end method

.method public final ICustomTabsCallback(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lo/WinningTypes;->onChildrenLoaded:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/AllotmentResponse;->IPostMessageService$Stub$Proxy:Lo/LeaderBoardDetailsResponse;

    if-nez v0, :cond_1

    new-instance v0, Lo/LeaderBoardDetailsResponse;

    sget-object v1, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    invoke-direct {v0, v1, p1}, Lo/LeaderBoardDetailsResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lo/AllotmentResponse;->IPostMessageService$Stub$Proxy:Lo/LeaderBoardDetailsResponse;

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lo/LeaderBoardDetailsResponse;->onMessageChannelReady(Landroid/view/View;)V

    return-void
.end method

.method protected final onMessageChannelReady(Landroid/content/Context;Lo/EmiDetails;)Lo/LoanStatusResponse$CaptchaInput;
    .locals 1

    new-instance p2, Lo/LoanStatusResponse$CaptchaInput;

    invoke-direct {p2}, Lo/LoanStatusResponse$CaptchaInput;-><init>()V

    iget-object v0, p0, Lo/AllotmentResponse;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/AllotmentResponse;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    iput-object v0, p2, Lo/LoanStatusResponse$CaptchaInput;->onNavigationEvent:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Lo/AllotmentResponse;->mayLaunchUrl:Z

    invoke-static {p1, v0}, Lo/AllotmentResponse;->ICustomTabsCallback(Landroid/content/Context;Z)Lo/SubmitScoreRequestJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lo/AllotmentResponse;->onNavigationEvent(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;Lo/EmiDetails;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lo/AllotmentResponse;->onMessageChannelReady(Ljava/util/List;)V

    :cond_1
    return-object p2
.end method

.method protected onNavigationEvent(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;Lo/EmiDetails;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/SubmitScoreRequestJsonAdapter;",
            "Lo/LoanStatusResponse$CaptchaInput;",
            "Lo/EmiDetails;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lo/SubmitScoreRequestJsonAdapter;->warmup()I

    move-result v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p2, Lo/LoanStatusResponse$CaptchaInput;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Long;

    return-object v10

    :cond_0
    new-instance v8, Lo/getParticipants;

    const/16 v6, 0x1b

    const-string v2, "LJD7GILw6ox/o3kYqhR5FF4FDylErrAaJ66Y8V8gtnNGF8DcetGJrYvTlHeK8kyR"

    const-string v3, "GKdCM/OywOIR4FMFS5XrDdTIpVvhoMFma/KSfRUdsbQ="

    move-object v0, v8

    move-object v1, p1

    move-object v4, p2

    move v5, v9

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lo/getParticipants;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;IILo/EmiDetails;)V

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/LeaderBoardResponseJsonAdapter;

    sget-wide v5, Lo/AllotmentResponse;->ICustomTabsService$Stub:J

    const/16 v8, 0x19

    const-string v2, "1GzFbNgtZBsZ6xBrCbOvmw4GuyabWdtXgJqf+Aoik3E00oSTfDga4UiXvbD1YLYB"

    const-string v3, "1EiWqNFog84woyMiTveFonfDO5rsRz44QrKedC4xw+8="

    move-object v0, p3

    move v7, v9

    invoke-direct/range {v0 .. v8}, Lo/LeaderBoardResponseJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;JII)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/setRank;

    const/4 v6, 0x1

    const-string v2, "uFEr0moMuWuurgrUpfSBjyUksFv6IqKMSuNqo2jCjRmu9JHDaSBf9LDKs2u/XE/B"

    const-string v3, "hDtufeJTxJSs5qQMCIPuyzc9ZPOtO/34yyf8Kf44rGo="

    move-object v0, p3

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lo/setRank;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/getPhoto_url;

    const/16 v6, 0x1f

    const-string v2, "+8WN7RfVBrTKK5NXM+y9JA4Ygu2jPZokHNFGgulhBRZ32uCnyKWWGQNTE1weoQCM"

    const-string v3, "peILYfFejTn8xmazfpiZWeK2eaYjjxEBmAZ8bUD9PWU="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/getPhoto_url;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/Banner;

    const/16 v6, 0x21

    const-string v2, "R1L5/7J00Fko/kDi6VDsBhCzpp4/7wzabnzdihUS7rPLvaXLFWrERChyvYYgVJRF"

    const-string v3, "4WtEOgM4wQ7wiw1OB3pMyAbaplBizcjE6LRBT/nrDgM="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/Banner;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/LeaderBoardResponse;

    const/16 v6, 0x1d

    const-string v2, "1DzTSPdcTVkbB0cTQEaPo/MU1E1TGypt38nYJILt/8CcQbOuYjF6hLShUHnLb5uw"

    const-string v3, "dkCo8xze5sFyp7Msrb8F1JKjVIP7LutspgZPYQvsMlo="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/LeaderBoardResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/LeaderBoardPrizesResponseJsonAdapter;

    const/4 v6, 0x5

    const-string v2, "6hrke/fCJ5tLCck7L6DvYxDB/To2PLUVGD3lbM1fdL2y9IScTypVRvrPFLLn4rDM"

    const-string v3, "+GAY853+DQRMYkeMG8Hbv1THvRgwf43Jh+3p4yQDqGw="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/LeaderBoardPrizesResponseJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/UsersJsonAdapter;

    const/16 v6, 0xc

    const-string v2, "f8J+j+UhiTEjRF3iyDcFnM9Rm6LC/P+2PE2qff5S0gHSDPzrH4HNcnCaI+twvhbv"

    const-string v3, "MOBosqV6pejtL/WEgsHP3Y2p2WtApcEEa2XyqqRQCo0="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/UsersJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/WinnerStatusResponse;

    const/4 v6, 0x3

    const-string v2, "bYi99wWoqjOnUF4nnSWQsu9qLqARRsoauNez1uhJPws2YAlolLPh/xgKDnyI06MJ"

    const-string v3, "pjeIE8EsMfMk4SIebXHXNWKXTpK8v5vG6YqOxp1QH1M="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/WinnerStatusResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/Prizes;

    const/16 v6, 0x2c

    const-string v2, "C4t4eP72HKoZsX62gBXGicLgvQbyKikYhXkvESjpMVAOEyUibmrLmpkJ5lZygzZE"

    const-string v3, "onbJNRechKgg7ilJYzLDEQ07M0uNlDZp05nZ4h6WJ40="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/Prizes;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/PrizesJsonAdapter;

    const/16 v6, 0x16

    const-string v2, "YOE4tLd8IhAbsNGoUEFHfu51/79yG0YlK4bMxi/e6gOIrtpqPN+TQgqpfYNBoiRy"

    const-string v3, "aFY444Zz3/sMYl+Q7uujofvlLWJ37651UMbaKJCFBnU="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/PrizesJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/ClaimedRewardDetailsResponseJsonAdapter;

    const/16 v6, 0x30

    const-string v2, "ug+duzFNTlMWhYez8qKOR3bxkM8vLOPy9xVUBCCMTrplDFf/BnF2bNmA7hw0iYtI"

    const-string v3, "ogMtakENM6NAXJL7DCVTIbgawd5T3ZVhEaXugMAz+D4="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/ClaimedRewardDetailsResponseJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/LeaderBoardPrizesResponse;

    const/16 v6, 0x31

    const-string v2, "PRnAd1qZLf3/u2x/ZslcDq2vQzDbmFHkH/jSij536nFGwYo+g6o8PpQOJcDeuz++"

    const-string v3, "99eM4BYfXxOCBAhS2wQJENWQ4BMWrR/wKqrfHx1Ws8w="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/LeaderBoardPrizesResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/WinnerStatusResponseJsonAdapter;

    const/16 v6, 0x33

    const-string v2, "Q7gHsedaZvBKvqRLQGMIPKihViSMmXus6bBgU0lNdv+Pm9sSlP+Z+JltWG56lF1K"

    const-string v3, "mrdNgIRzsAu+cEIamFRkeCivuYIijUjvD76p38JyQec="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/WinnerStatusResponseJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lo/getFormatted_score;

    const/16 v6, 0x3d

    const-string v2, "WiMYovSpRj6RF1r6zXON0hYVyLxgllUAYyMyyeBevdbJbdYcoBpd8nDjCwwclcSu"

    const-string v3, "vpq7z91A+vN3MIS65A+GwiFRgEFOFpQOdK5Z+mjW21w="

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lo/getFormatted_score;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v10, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v10
.end method

.method protected final onNavigationEvent(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lo/LoanStatusResponse$CaptchaInput;
    .locals 15

    move-object v0, p0

    new-instance v10, Lo/LoanStatusResponse$CaptchaInput;

    invoke-direct {v10}, Lo/LoanStatusResponse$CaptchaInput;-><init>()V

    iget-object v1, v0, Lo/AllotmentResponse;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lo/AllotmentResponse;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    iput-object v1, v10, Lo/LoanStatusResponse$CaptchaInput;->onNavigationEvent:Ljava/lang/String;

    :cond_0
    iget-boolean v1, v0, Lo/AllotmentResponse;->mayLaunchUrl:Z

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/AllotmentResponse;->ICustomTabsCallback(Landroid/content/Context;Z)Lo/SubmitScoreRequestJsonAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lo/SubmitScoreRequestJsonAdapter;->onMessageChannelReady()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const-wide/16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lo/LoanStatusResponse$CaptchaInput;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Long;

    new-array v1, v3, [Ljava/util/concurrent/Callable;

    new-instance v3, Lo/getRank;

    invoke-direct {v3, v11, v10}, Lo/getRank;-><init>(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;)V

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_6

    :cond_1
    :try_start_0
    iget-object v1, v0, Lo/AllotmentResponse;->onPostMessage:Landroid/view/MotionEvent;

    iget-object v4, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v11, v1, v4}, Lo/AllotmentResponse;->extraCallback(Lo/SubmitScoreRequestJsonAdapter;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lo/WinnerSheetBlockJsonAdapter;

    move-result-object v1

    iget-object v4, v1, Lo/WinnerSheetBlockJsonAdapter;->ICustomTabsCallback:Ljava/lang/Long;

    iput-object v4, v10, Lo/LoanStatusResponse$CaptchaInput;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    iget-object v4, v1, Lo/WinnerSheetBlockJsonAdapter;->onNavigationEvent:Ljava/lang/Long;

    iput-object v4, v10, Lo/LoanStatusResponse$CaptchaInput;->asBinder:Ljava/lang/Long;

    iget-object v4, v1, Lo/WinnerSheetBlockJsonAdapter;->extraCallback:Ljava/lang/Long;

    iput-object v4, v10, Lo/LoanStatusResponse$CaptchaInput;->onRelationshipValidationResult:Ljava/lang/Long;

    iget-boolean v4, v0, Lo/AllotmentResponse;->updateVisuals:Z

    if-eqz v4, :cond_2

    iget-object v4, v1, Lo/WinnerSheetBlockJsonAdapter;->onPostMessage:Ljava/lang/Long;

    iput-object v4, v10, Lo/LoanStatusResponse$CaptchaInput;->IPostMessageService:Ljava/lang/Long;

    iget-object v1, v1, Lo/WinnerSheetBlockJsonAdapter;->onMessageChannelReady:Ljava/lang/Long;

    iput-object v1, v10, Lo/LoanStatusResponse$CaptchaInput;->ICustomTabsService$Stub:Ljava/lang/Long;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_2
    :goto_0
    new-instance v1, Lo/LoanStatusResponse$UserDetail;

    invoke-direct {v1}, Lo/LoanStatusResponse$UserDetail;-><init>()V

    iget-wide v4, v0, Lo/AllotmentResponse;->extraCallback:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    iget-object v4, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v4}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady(Landroid/util/DisplayMetrics;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-wide v4, v0, Lo/AllotmentResponse;->warmup:D

    iget-object v8, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5, v8}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lo/LoanStatusResponse$UserDetail;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/Long;

    iget v4, v0, Lo/AllotmentResponse;->newSession:F

    iget v5, v0, Lo/AllotmentResponse;->getInterfaceDescriptor:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v8, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5, v8}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lo/LoanStatusResponse$UserDetail;->newSession:Ljava/lang/Long;

    iget v4, v0, Lo/AllotmentResponse;->ICustomTabsService:F

    iget v5, v0, Lo/AllotmentResponse;->ICustomTabsCallback$Stub$Proxy:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v8, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5, v8}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lo/LoanStatusResponse$UserDetail;->getInterfaceDescriptor:Ljava/lang/Long;

    iget v4, v0, Lo/AllotmentResponse;->getInterfaceDescriptor:F

    float-to-double v4, v4

    iget-object v8, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5, v8}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lo/LoanStatusResponse$UserDetail;->mayLaunchUrl:Ljava/lang/Long;

    iget v4, v0, Lo/AllotmentResponse;->ICustomTabsCallback$Stub$Proxy:F

    float-to-double v4, v4

    iget-object v8, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5, v8}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lo/LoanStatusResponse$UserDetail;->postMessage:Ljava/lang/Long;

    iget-boolean v4, v0, Lo/AllotmentResponse;->updateVisuals:Z

    if-eqz v4, :cond_4

    iget-object v4, v0, Lo/AllotmentResponse;->onPostMessage:Landroid/view/MotionEvent;

    if-eqz v4, :cond_4

    iget v4, v0, Lo/AllotmentResponse;->getInterfaceDescriptor:F

    iget v5, v0, Lo/AllotmentResponse;->newSession:F

    sub-float/2addr v4, v5

    iget-object v5, v0, Lo/AllotmentResponse;->onPostMessage:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lo/AllotmentResponse;->onPostMessage:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v8, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5, v8}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-eqz v8, :cond_3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lo/LoanStatusResponse$UserDetail;->extraCommand:Ljava/lang/Long;

    :cond_3
    iget v4, v0, Lo/AllotmentResponse;->ICustomTabsCallback$Stub$Proxy:F

    iget v5, v0, Lo/AllotmentResponse;->ICustomTabsService:F

    sub-float/2addr v4, v5

    iget-object v5, v0, Lo/AllotmentResponse;->onPostMessage:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lo/AllotmentResponse;->onPostMessage:Landroid/view/MotionEvent;

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v8, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5, v8}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->ICustomTabsCallback(DLandroid/util/DisplayMetrics;)J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lo/LoanStatusResponse$UserDetail;->requestPostMessageChannel:Ljava/lang/Long;

    :cond_4
    const/4 v4, 0x0

    :try_start_1
    iget-object v5, v0, Lo/AllotmentResponse;->onPostMessage:Landroid/view/MotionEvent;

    invoke-virtual {p0, v5}, Lo/AllotmentResponseJsonAdapter;->onPostMessage(Landroid/view/MotionEvent;)Lo/WinnerSheetBlockJsonAdapter;

    move-result-object v5

    iget-object v8, v5, Lo/WinnerSheetBlockJsonAdapter;->ICustomTabsCallback:Ljava/lang/Long;

    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->onPostMessage:Ljava/lang/Long;

    iget-object v8, v5, Lo/WinnerSheetBlockJsonAdapter;->onNavigationEvent:Ljava/lang/Long;

    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->onNavigationEvent:Ljava/lang/Long;

    iget-object v8, v5, Lo/WinnerSheetBlockJsonAdapter;->extraCallback:Ljava/lang/Long;

    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->asBinder:Ljava/lang/Long;

    iget-boolean v8, v0, Lo/AllotmentResponse;->updateVisuals:Z

    if-eqz v8, :cond_9

    iget-object v8, v5, Lo/WinnerSheetBlockJsonAdapter;->onMessageChannelReady:Ljava/lang/Long;

    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->ICustomTabsCallback:Ljava/lang/Long;

    iget-object v8, v5, Lo/WinnerSheetBlockJsonAdapter;->onPostMessage:Ljava/lang/Long;

    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->onMessageChannelReady:Ljava/lang/Long;

    iget-object v8, v5, Lo/WinnerSheetBlockJsonAdapter;->onRelationshipValidationResult:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v12, v8, v6

    if-eqz v12, :cond_5

    const/4 v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->onTransact:Ljava/lang/Integer;

    iget-wide v8, v0, Lo/AllotmentResponse;->ICustomTabsCallback:J

    cmp-long v12, v8, v6

    if-lez v12, :cond_7

    iget-object v8, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v8}, Lo/LeaderBoardFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$1;->onMessageChannelReady(Landroid/util/DisplayMetrics;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-wide v8, v0, Lo/AllotmentResponse;->onRelationshipValidationResult:J

    long-to-double v8, v8

    iget-wide v12, v0, Lo/AllotmentResponse;->ICustomTabsCallback:J

    long-to-double v12, v12

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_2

    :cond_6
    move-object v8, v4

    :goto_2
    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->extraCallback:Ljava/lang/Long;

    iget-wide v8, v0, Lo/AllotmentResponse;->onTransact:J

    long-to-double v8, v8

    iget-wide v12, v0, Lo/AllotmentResponse;->ICustomTabsCallback:J

    long-to-double v12, v12

    div-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->onRelationshipValidationResult:Ljava/lang/Long;

    :cond_7
    iget-object v8, v5, Lo/WinnerSheetBlockJsonAdapter;->asInterface:Ljava/lang/Long;

    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    iget-object v8, v5, Lo/WinnerSheetBlockJsonAdapter;->onTransact:Ljava/lang/Long;

    iput-object v8, v1, Lo/LoanStatusResponse$UserDetail;->asInterface:Ljava/lang/Long;

    iget-object v5, v5, Lo/WinnerSheetBlockJsonAdapter;->warmup:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v1, Lo/LoanStatusResponse$UserDetail;->ICustomTabsService:Ljava/lang/Integer;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    nop

    :cond_9
    :goto_4
    iget-wide v8, v0, Lo/AllotmentResponse;->ICustomTabsCallback$Stub:J

    cmp-long v5, v8, v6

    if-lez v5, :cond_a

    iget-wide v8, v0, Lo/AllotmentResponse;->ICustomTabsCallback$Stub:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lo/LoanStatusResponse$UserDetail;->warmup:Ljava/lang/Long;

    :cond_a
    iput-object v1, v10, Lo/LoanStatusResponse$CaptchaInput;->write:Lo/LoanStatusResponse$UserDetail;

    iget-wide v8, v0, Lo/AllotmentResponse;->extraCallback:J

    cmp-long v1, v8, v6

    if-lez v1, :cond_b

    iget-wide v8, v0, Lo/AllotmentResponse;->extraCallback:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lo/LoanStatusResponse$CaptchaInput;->ICustomTabsService$Stub$Proxy:Ljava/lang/Long;

    :cond_b
    iget-wide v8, v0, Lo/AllotmentResponse;->ICustomTabsCallback:J

    cmp-long v1, v8, v6

    if-lez v1, :cond_c

    iget-wide v8, v0, Lo/AllotmentResponse;->ICustomTabsCallback:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lo/LoanStatusResponse$CaptchaInput;->validateRelationship:Ljava/lang/Long;

    :cond_c
    iget-wide v8, v0, Lo/AllotmentResponse;->asBinder:J

    cmp-long v1, v8, v6

    if-lez v1, :cond_d

    iget-wide v8, v0, Lo/AllotmentResponse;->asBinder:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lo/LoanStatusResponse$CaptchaInput;->IPostMessageService$Stub:Ljava/lang/Long;

    :cond_d
    iget-wide v8, v0, Lo/AllotmentResponse;->asInterface:J

    cmp-long v1, v8, v6

    if-lez v1, :cond_e

    iget-wide v5, v0, Lo/AllotmentResponse;->asInterface:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v10, Lo/LoanStatusResponse$CaptchaInput;->cancelAll:Ljava/lang/Long;

    :cond_e
    :try_start_2
    iget-object v1, v0, Lo/AllotmentResponse;->onMessageChannelReady:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-lez v1, :cond_f

    new-array v3, v1, [Lo/LoanStatusResponse$UserDetail;

    iput-object v3, v10, Lo/LoanStatusResponse$CaptchaInput;->read:[Lo/LoanStatusResponse$UserDetail;

    :goto_5
    if-ge v2, v1, :cond_f

    sget-object v3, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    iget-object v5, v0, Lo/AllotmentResponse;->onMessageChannelReady:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    iget-object v6, v0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    invoke-static {v3, v5, v6}, Lo/AllotmentResponse;->extraCallback(Lo/SubmitScoreRequestJsonAdapter;Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Lo/WinnerSheetBlockJsonAdapter;

    move-result-object v3

    new-instance v5, Lo/LoanStatusResponse$UserDetail;

    invoke-direct {v5}, Lo/LoanStatusResponse$UserDetail;-><init>()V

    iget-object v6, v3, Lo/WinnerSheetBlockJsonAdapter;->ICustomTabsCallback:Ljava/lang/Long;

    iput-object v6, v5, Lo/LoanStatusResponse$UserDetail;->onPostMessage:Ljava/lang/Long;

    iget-object v3, v3, Lo/WinnerSheetBlockJsonAdapter;->onNavigationEvent:Ljava/lang/Long;

    iput-object v3, v5, Lo/LoanStatusResponse$UserDetail;->onNavigationEvent:Ljava/lang/Long;

    iget-object v3, v10, Lo/LoanStatusResponse$CaptchaInput;->read:[Lo/LoanStatusResponse$UserDetail;

    aput-object v5, v3, v2
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzcw; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :catch_2
    iput-object v4, v10, Lo/LoanStatusResponse$CaptchaInput;->read:[Lo/LoanStatusResponse$UserDetail;

    :cond_f
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Lo/SubmitScoreRequestJsonAdapter;->ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v11}, Lo/SubmitScoreRequestJsonAdapter;->warmup()I

    move-result v13

    new-instance v1, Lo/getRank;

    invoke-direct {v1, v11, v10}, Lo/getRank;-><init>(Lo/SubmitScoreRequestJsonAdapter;Lo/LoanStatusResponse$CaptchaInput;)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/setRank;

    const/4 v7, 0x1

    const-string v3, "uFEr0moMuWuurgrUpfSBjyUksFv6IqKMSuNqo2jCjRmu9JHDaSBf9LDKs2u/XE/B"

    const-string v4, "hDtufeJTxJSs5qQMCIPuyzc9ZPOtO/34yyf8Kf44rGo="

    move-object v1, v8

    move-object v2, v11

    move-object v5, v10

    move v6, v13

    invoke-direct/range {v1 .. v7}, Lo/setRank;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Lo/LeaderBoardResponseJsonAdapter;

    sget-wide v6, Lo/AllotmentResponse;->ICustomTabsService$Stub:J

    const/16 v9, 0x19

    const-string v3, "1GzFbNgtZBsZ6xBrCbOvmw4GuyabWdtXgJqf+Aoik3E00oSTfDga4UiXvbD1YLYB"

    const-string v4, "1EiWqNFog84woyMiTveFonfDO5rsRz44QrKedC4xw+8="

    move-object v1, v14

    move v8, v13

    invoke-direct/range {v1 .. v9}, Lo/LeaderBoardResponseJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;JII)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/Prizes;

    const/16 v7, 0x2c

    const-string v3, "C4t4eP72HKoZsX62gBXGicLgvQbyKikYhXkvESjpMVAOEyUibmrLmpkJ5lZygzZE"

    const-string v4, "onbJNRechKgg7ilJYzLDEQ07M0uNlDZp05nZ4h6WJ40="

    move-object v1, v8

    move v6, v13

    invoke-direct/range {v1 .. v7}, Lo/Prizes;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/UsersJsonAdapter;

    const/16 v7, 0xc

    const-string v3, "f8J+j+UhiTEjRF3iyDcFnM9Rm6LC/P+2PE2qff5S0gHSDPzrH4HNcnCaI+twvhbv"

    const-string v4, "MOBosqV6pejtL/WEgsHP3Y2p2WtApcEEa2XyqqRQCo0="

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/UsersJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/WinnerStatusResponse;

    const/4 v7, 0x3

    const-string v3, "bYi99wWoqjOnUF4nnSWQsu9qLqARRsoauNez1uhJPws2YAlolLPh/xgKDnyI06MJ"

    const-string v4, "pjeIE8EsMfMk4SIebXHXNWKXTpK8v5vG6YqOxp1QH1M="

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/WinnerStatusResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/PrizesJsonAdapter;

    const/16 v7, 0x16

    const-string v3, "YOE4tLd8IhAbsNGoUEFHfu51/79yG0YlK4bMxi/e6gOIrtpqPN+TQgqpfYNBoiRy"

    const-string v4, "aFY444Zz3/sMYl+Q7uujofvlLWJ37651UMbaKJCFBnU="

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/PrizesJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/LeaderBoardPrizesResponseJsonAdapter;

    const/4 v7, 0x5

    const-string v3, "6hrke/fCJ5tLCck7L6DvYxDB/To2PLUVGD3lbM1fdL2y9IScTypVRvrPFLLn4rDM"

    const-string v4, "+GAY853+DQRMYkeMG8Hbv1THvRgwf43Jh+3p4yQDqGw="

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/LeaderBoardPrizesResponseJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/ClaimedRewardDetailsResponseJsonAdapter;

    const/16 v7, 0x30

    const-string v3, "ug+duzFNTlMWhYez8qKOR3bxkM8vLOPy9xVUBCCMTrplDFf/BnF2bNmA7hw0iYtI"

    const-string v4, "ogMtakENM6NAXJL7DCVTIbgawd5T3ZVhEaXugMAz+D4="

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/ClaimedRewardDetailsResponseJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/LeaderBoardPrizesResponse;

    const/16 v7, 0x31

    const-string v3, "PRnAd1qZLf3/u2x/ZslcDq2vQzDbmFHkH/jSij536nFGwYo+g6o8PpQOJcDeuz++"

    const-string v4, "99eM4BYfXxOCBAhS2wQJENWQ4BMWrR/wKqrfHx1Ws8w="

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/LeaderBoardPrizesResponse;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/WinnerStatusResponseJsonAdapter;

    const/16 v7, 0x33

    const-string v3, "Q7gHsedaZvBKvqRLQGMIPKihViSMmXus6bBgU0lNdv+Pm9sSlP+Z+JltWG56lF1K"

    const-string v4, "mrdNgIRzsAu+cEIamFRkeCivuYIijUjvD76p38JyQec="

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/WinnerStatusResponseJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lo/BannerJsonAdapter;

    const/16 v7, 0x2d

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const-string v3, "nXKe8Ev09tosW935mj67BeJvnsHiQzgrotB4vyuZm+aJQgx77SXcf757aVGtnDOm"

    const-string v4, "yl+F7AaTCLci2yEfPOMTGPVVFLoqw9fKWSf4HTpN46M="

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lo/BannerJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II[Ljava/lang/StackTraceElement;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Lo/ClaimedResponseJsonAdapter;

    const/16 v7, 0x39

    const-string v3, "j5/WVRJsgiWNVIg0a6aXYQYocHm4rEEozf0LrIkPezct93ISwgyVBTLRIkEvztpn"

    const-string v4, "gCYklRkrI0pyKJ3j1u5Yl6Jj12a6PD1K39diuw7+f7o="

    move-object v1, v9

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, Lo/ClaimedResponseJsonAdapter;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;IILandroid/view/View;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Lo/getFormatted_score;

    const/16 v7, 0x3d

    const-string v3, "WiMYovSpRj6RF1r6zXON0hYVyLxgllUAYyMyyeBevdbJbdYcoBpd8nDjCwwclcSu"

    const-string v4, "vpq7z91A+vN3MIS65A+GwiFRgEFOFpQOdK5Z+mjW21w="

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/getFormatted_score;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;II)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lo/WinningTypes;->unregisterCallbackMessenger:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v14, Lo/getUsers;

    const/16 v7, 0x3e

    const-string v3, "wxabFp8V9bGKut15duzoi2M8ew0t/HWGFw3NoPp8pFanKwQpdIx0WzpFbmJaLX9T"

    const-string v4, "grSrEy+Ml8J7boJNrN9uNiXpddsqwR6A9NVesV/hHT8="

    move-object v1, v14

    move-object v2, v11

    move-object v5, v10

    move v6, v13

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lo/getUsers;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;IILandroid/view/View;Landroid/app/Activity;)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    sget-object v1, Lo/WinningTypes;->onChildrenLoaded:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v9, Lo/ClaimedLifestyleTemplateProperties;

    const/16 v7, 0x35

    iget-object v8, v0, Lo/AllotmentResponse;->IPostMessageService$Stub$Proxy:Lo/LeaderBoardDetailsResponse;

    const-string v3, "aH422z6bUtRL57gOABo0AU5IQDHmWvjsQgQZk64bzhjXVYUZmajAsUz/rrnMYVsw"

    const-string v4, "UAmRxgiWCEqHprf42V+e65VvIvUfFXeXbaMy5B8vzwA="

    move-object v1, v9

    move-object v2, v11

    move-object v5, v10

    move v6, v13

    invoke-direct/range {v1 .. v8}, Lo/ClaimedLifestyleTemplateProperties;-><init>(Lo/SubmitScoreRequestJsonAdapter;Ljava/lang/String;Ljava/lang/String;Lo/LoanStatusResponse$CaptchaInput;IILo/LeaderBoardDetailsResponse;)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    move-object v1, v12

    :goto_6
    invoke-static {v1}, Lo/AllotmentResponse;->onMessageChannelReady(Ljava/util/List;)V

    return-object v10
.end method

.method protected final onPostMessage(Landroid/view/MotionEvent;)Lo/WinnerSheetBlockJsonAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcw;
        }
    .end annotation

    sget-object v0, Lo/AllotmentResponse;->onNavigationEvent:Lo/SubmitScoreRequestJsonAdapter;

    const-string v1, "oT49Nu6m3oNdAQwbQzvwr/RE4TwZbR8mJKypakrI/GqBgyD2niyVic8N9UaqvU10"

    const-string v2, "LS3Cw7DlWSqpRsXrajoVsCxXOedCBnQXFZcLjXzD8so="

    invoke-virtual {v0, v1, v2}, Lo/SubmitScoreRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lo/WinnerSheetBlockJsonAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    iget-object v4, p0, Lo/AllotmentResponse;->requestPostMessageChannel:Landroid/util/DisplayMetrics;

    aput-object v4, v3, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v1, p1}, Lo/WinnerSheetBlockJsonAdapter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzcw;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcw;-><init>()V

    throw p1
.end method
