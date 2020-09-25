.class Lorg/apache/xml/security/keys/storage/StorageResolver$StorageResolverIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Iterator;

.field b:Ljava/util/Iterator;


# direct methods
.method private a()Ljava/util/Iterator;
    .locals 2

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/StorageResolver$StorageResolverIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/StorageResolver$StorageResolverIterator;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/security/keys/storage/StorageResolverSpi;

    invoke-virtual {v0}, Lorg/apache/xml/security/keys/storage/StorageResolverSpi;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/StorageResolver$StorageResolverIterator;->b:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0}, Lorg/apache/xml/security/keys/storage/StorageResolver$StorageResolverIterator;->a()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/keys/storage/StorageResolver$StorageResolverIterator;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xml/security/keys/storage/StorageResolver$StorageResolverIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/StorageResolver$StorageResolverIterator;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove keys from KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
