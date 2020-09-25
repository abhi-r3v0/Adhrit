.class Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private final a:Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;


# direct methods
.method constructor <init>(Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$1;->a:Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
