.class public Lorg/apache/xml/security/c14n/helper/C14nHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lorg/w3c/dom/Attr;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->b(Lorg/w3c/dom/Attr;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lorg/w3c/dom/Attr;)Z
    .locals 0

    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
