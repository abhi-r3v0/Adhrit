.class public Lorg/apache/xml/security/algorithms/implementations/SignatureBaseRSA$SignatureRSASHA1;
.super Lorg/apache/xml/security/algorithms/implementations/SignatureBaseRSA;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/security/algorithms/implementations/SignatureBaseRSA;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/2000/09/xmldsig#rsa-sha1"

    return-object v0
.end method
