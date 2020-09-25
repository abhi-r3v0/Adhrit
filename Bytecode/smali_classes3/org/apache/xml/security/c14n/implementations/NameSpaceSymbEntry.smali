.class Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:Lorg/w3c/dom/Attr;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Attr;ZLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    iput-object p2, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->f:Lorg/w3c/dom/Attr;

    iput-object p4, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
