.class Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Z

.field c:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack$XmlsStackElement;->c:Ljava/util/List;

    return-void
.end method
