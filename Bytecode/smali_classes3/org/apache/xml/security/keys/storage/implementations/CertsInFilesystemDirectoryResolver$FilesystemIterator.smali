.class Lorg/apache/xml/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/List;

.field b:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->a:Ljava/util/List;

    iput-object p1, p0, Lorg/apache/xml/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->a:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/xml/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lorg/apache/xml/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->b:I

    iget-object v1, p0, Lorg/apache/xml/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->a:Ljava/util/List;

    iget v1, p0, Lorg/apache/xml/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/xml/security/keys/storage/implementations/CertsInFilesystemDirectoryResolver$FilesystemIterator;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove keys from KeyStore"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
