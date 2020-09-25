.class public abstract Lorg/apache/xml/security/transforms/TransformSpi;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lorg/apache/xml/security/transforms/Transform;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/transforms/TransformSpi;->a:Lorg/apache/xml/security/transforms/Transform;

    return-void
.end method


# virtual methods
.method protected a(Lorg/apache/xml/security/signature/XMLSignatureInput;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 0

    invoke-virtual {p0, p1, p3}, Lorg/apache/xml/security/transforms/TransformSpi;->a(Lorg/apache/xml/security/signature/XMLSignatureInput;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lorg/apache/xml/security/signature/XMLSignatureInput;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 2

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/security/transforms/TransformSpi;

    invoke-virtual {v1, p2}, Lorg/apache/xml/security/transforms/TransformSpi;->a(Lorg/apache/xml/security/transforms/Transform;)V

    invoke-virtual {v1, p1}, Lorg/apache/xml/security/transforms/TransformSpi;->a(Lorg/apache/xml/security/signature/XMLSignatureInput;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/transforms/TransformationException;

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method protected a(Lorg/apache/xml/security/transforms/Transform;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/security/transforms/TransformSpi;->a:Lorg/apache/xml/security/transforms/Transform;

    return-void
.end method
