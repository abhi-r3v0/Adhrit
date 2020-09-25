.class public Lorg/apache/xml/security/transforms/params/XPathFilterCHGPContainer;
.super Lorg/apache/xml/security/utils/ElementProxy;

# interfaces
.implements Lorg/apache/xml/security/transforms/TransformParam;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/security/utils/ElementProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.nue.et-inf.uni-siegen.de/~geuer-pollmann/#xpathFilter"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "XPathAlternative"

    return-object v0
.end method
