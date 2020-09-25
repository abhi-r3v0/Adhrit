.class public Lorg/apache/xml/security/utils/resolver/ResourceResolverException;
.super Lorg/apache/xml/security/exceptions/XMLSecurityException;


# instance fields
.field c:Lorg/w3c/dom/Attr;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Lorg/w3c/dom/Attr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;->c:Lorg/w3c/dom/Attr;

    iput-object p3, p0, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;->c:Lorg/w3c/dom/Attr;

    iput-object p4, p0, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lorg/w3c/dom/Attr;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xml/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;->c:Lorg/w3c/dom/Attr;

    iput-object p3, p0, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;->c:Lorg/w3c/dom/Attr;

    iput-object p4, p0, Lorg/apache/xml/security/utils/resolver/ResourceResolverException;->d:Ljava/lang/String;

    return-void
.end method
