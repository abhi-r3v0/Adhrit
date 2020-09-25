.class public Lorg/apache/xml/security/transforms/implementations/TransformXPointer;
.super Lorg/apache/xml/security/transforms/TransformSpi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xml/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/xml/security/signature/XMLSignatureInput;Lorg/apache/xml/security/transforms/Transform;)Lorg/apache/xml/security/signature/XMLSignatureInput;
    .locals 1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "http://www.w3.org/TR/2001/WD-xptr-20010108"

    aput-object v0, p1, p2

    new-instance p2, Lorg/apache/xml/security/transforms/TransformationException;

    const-string v0, "signature.Transform.NotYetImplemented"

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method
