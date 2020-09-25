.class public Lorg/apache/xml/security/utils/resolver/implementations/ResolverAnonymous;
.super Lorg/apache/xml/security/utils/resolver/ResourceResolverSpi;


# instance fields
.field private d:Lorg/apache/xml/security/signature/XMLSignatureInput;


# virtual methods
.method public a(Lorg/w3c/dom/Attr;Ljava/lang/String;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 0

    iget-object p1, p0, Lorg/apache/xml/security/utils/resolver/implementations/ResolverAnonymous;->d:Lorg/apache/xml/security/signature/XMLSignatureInput;

    return-object p1
.end method

.method public b(Lorg/w3c/dom/Attr;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
