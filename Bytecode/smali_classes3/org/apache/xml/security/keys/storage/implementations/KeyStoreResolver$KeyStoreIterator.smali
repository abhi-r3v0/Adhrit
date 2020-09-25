.class Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/security/KeyStore;

.field b:Ljava/util/Enumeration;

.field c:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->a:Ljava/security/KeyStore;

    iput-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->b:Ljava/util/Enumeration;

    iput-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->c:Ljava/security/cert/Certificate;

    :try_start_0
    iput-object p1, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->a:Ljava/security/KeyStore;

    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->b:Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$1;

    invoke-direct {p1, p0}, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$1;-><init>(Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;)V

    iput-object p1, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->b:Ljava/util/Enumeration;

    return-void
.end method

.method private a()Ljava/security/cert/Certificate;
    .locals 3

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->b:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->b:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->a:Ljava/security/KeyStore;

    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    :cond_1
    return-object v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->c:Ljava/security/cert/Certificate;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->a()Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->c:Ljava/security/cert/Certificate;

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->c:Ljava/security/cert/Certificate;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->c:Ljava/security/cert/Certificate;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->a()Ljava/security/cert/Certificate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->c:Ljava/security/cert/Certificate;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->c:Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xml/security/keys/storage/implementations/KeyStoreResolver$KeyStoreIterator;->c:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove keys from KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
