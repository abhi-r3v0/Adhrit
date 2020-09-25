.class public Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac$IntegrityHmacSHA384;
.super Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/security/algorithms/implementations/IntegrityHmac;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/2001/04/xmldsig-more#hmac-sha384"

    return-object v0
.end method

.method e()I
    .locals 1

    const/16 v0, 0x180

    return v0
.end method
