.class public Lorg/apache/xml/security/transforms/implementations/TransformC14N11;
.super Lorg/apache/xml/security/transforms/TransformSpi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 0

    new-instance p3, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11_OmitComments;

    invoke-direct {p3}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11_OmitComments;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p3, p2}, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a(Ljava/io/OutputStream;)V

    :cond_0
    invoke-virtual {p3, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b(Lorg/apache/xml/security/signature/XMLSignatureInput;)[B

    move-result-object p1

    new-instance p3, Lorg/apache/xml/security/signature/XMLSignatureInput;

    invoke-direct {p3, p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;-><init>([B)V

    if-eqz p2, :cond_1

    invoke-virtual {p3, p2}, Lorg/apache/xml/security/signature/XMLSignatureInput;->b(Ljava/io/OutputStream;)V

    :cond_1
    return-object p3
.end method

.method public a(Lorg/apache/xml/security/signature/XMLSignatureInput;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/apache/xml/security/transforms/implementations/TransformC14N11;->a(Lorg/apache/xml/security/signature/XMLSignatureInput;Ljava/io/OutputStream;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;

    move-result-object p1

    return-object p1
.end method
