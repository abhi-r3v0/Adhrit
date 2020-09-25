.class public Lorg/apache/xml/security/signature/XMLSignatureInput;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static a:Lorg/apache/commons/logging/Log;

.field static l:Ljava/lang/Class;


# instance fields
.field b:Ljava/io/InputStream;

.field c:Ljava/util/Set;

.field d:Lorg/w3c/dom/Node;

.field e:Lorg/w3c/dom/Node;

.field f:Z

.field g:Z

.field h:[B

.field i:Ljava/util/List;

.field j:Z

.field k:Ljava/io/OutputStream;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xml/security/signature/XMLSignatureInput;->l:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.signature.XMLSignatureInput"

    invoke-static {v0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/signature/XMLSignatureInput;->l:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/signature/XMLSignatureInput;->a:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->e:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->f:Z

    iput-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->g:Z

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->m:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->n:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->i:Ljava/util/List;

    iput-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->j:Z

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->k:Ljava/io/OutputStream;

    iput-object p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->e:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->f:Z

    iput-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->g:Z

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->m:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->n:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->i:Ljava/util/List;

    iput-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->j:Z

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->k:Ljava/io/OutputStream;

    iput-object p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->e:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->f:Z

    iput-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->g:Z

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->m:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->n:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->i:Ljava/util/List;

    iput-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->j:Z

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->k:Ljava/io/OutputStream;

    iput-object p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    return-void
.end method

.method static c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->a(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;Z)V
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->k:Ljava/io/OutputStream;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    new-instance p2, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11_OmitComments;

    invoke-direct {p2}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11_OmitComments;-><init>()V

    goto :goto_0

    :cond_2
    new-instance p2, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315OmitComments;

    invoke-direct {p2}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315OmitComments;-><init>()V

    :goto_0
    invoke-virtual {p2, p1}, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a(Ljava/io/OutputStream;)V

    invoke-virtual {p2, p0}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b(Lorg/apache/xml/security/signature/XMLSignatureInput;)[B

    return-void

    :cond_3
    instance-of p2, v0, Ljava/io/FileInputStream;

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/16 p2, 0x1000

    new-array p2, p2, [B

    :goto_1
    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->o()Ljava/io/InputStream;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    if-eqz v1, :cond_5

    array-length p2, v1

    invoke-virtual {p1, v1, v0, p2}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_5
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_2
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->m:Ljava/lang/String;

    return-void
.end method

.method public a(Lorg/apache/xml/security/signature/NodeFilter;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;

    const-string v1, "signature.XMLSignatureInput.nodesetReference"

    invoke-direct {v0, v1, p1}, Lorg/apache/xml/security/exceptions/XMLSecurityRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->e:Lorg/w3c/dom/Node;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->j:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->j:Z

    return v0
.end method

.method public b()Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->b(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {v0}, Lorg/apache/xml/security/utils/XMLUtils;->b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Document;)V

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->e:Lorg/w3c/dom/Node;

    iget-boolean v2, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->f:Z

    invoke-static {v0, p1, v1, v2}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V

    iget-object p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    return-object p1

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->q()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "getNodeSet() called but no input data present"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->k:Ljava/io/OutputStream;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->n:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    instance-of v1, v0, Ljava/io/FileInputStream;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->o()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->f:Z

    return-void
.end method

.method public d()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->g:Z

    return-void
.end method

.method public e()[B
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->o()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    invoke-static {v0}, Lorg/apache/xml/security/utils/JavaUtils;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    return-object v0

    :cond_2
    new-instance v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315OmitComments;

    invoke-direct {v0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer20010315OmitComments;-><init>()V

    invoke-virtual {v0, p0}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b(Lorg/apache/xml/security/signature/XMLSignatureInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->g:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->k:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->n:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->e:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public m()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->f:Z

    return v0
.end method

.method protected o()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    instance-of v1, v0, Ljava/io/ByteArrayInputStream;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Accepted as Markable but not truly been"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    if-eqz v1, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_0
    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    return-object v0

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lorg/apache/xml/security/signature/XMLSignatureInput;->a:Lorg/apache/commons/logging/Log;

    const-string v1, "Mark Suported but not used as reset"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/apache/xml/security/utils/JavaUtils;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0
.end method

.method public p()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->i:Ljava/util/List;

    return-object v0
.end method

.method q()V
    .locals 3

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/apache/xml/security/utils/IgnoreAllErrorHandler;

    invoke-direct {v1}, Lorg/apache/xml/security/utils/IgnoreAllErrorHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->c()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "<container>"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->e()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string v2, "</container>"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->b:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->h:[B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "XMLSignatureInput/OctetStream//"

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "XMLSignatureInput/NodeSet/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " nodes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "XMLSignatureInput/Element/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->d:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " exclude "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->e:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " comments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lorg/apache/xml/security/signature/XMLSignatureInput;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "XMLSignatureInput/OctetStream/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->e()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " octets/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/xml/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/security/signature/XMLSignatureInput;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
