.class public Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;
.super Lorg/apache/xml/security/algorithms/Algorithm;


# static fields
.field static b:Ljava/lang/ThreadLocal;


# instance fields
.field a:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm$1;

    invoke-direct {v0}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm$1;-><init>()V

    sput-object v0, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lorg/w3c/dom/Document;Ljava/security/MessageDigest;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/apache/xml/security/algorithms/Algorithm;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a:Ljava/security/MessageDigest;

    iput-object p2, p0, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a:Ljava/security/MessageDigest;

    return-void
.end method

.method public static a(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;
    .locals 2

    invoke-static {p1}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    new-instance v1, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;

    invoke-direct {v1, p0, v0, p1}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;-><init>(Lorg/w3c/dom/Document;Ljava/security/MessageDigest;Ljava/lang/String;)V

    return-object v1
.end method

.method public static a([B[B)Z
    .locals 0

    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 6

    sget-object v0, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/apache/xml/security/algorithms/JCEMapper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/apache/xml/security/algorithms/JCEMapper;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "algorithms.NoSuchAlgorithm"

    const/4 v5, 0x2

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0, v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception p0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    new-instance p0, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {p0, v4, v3}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :catch_1
    move-exception p0

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    new-instance p0, Lorg/apache/xml/security/signature/XMLSignatureException;

    invoke-direct {p0, v4, v3}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0

    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p0, v0, v1

    new-instance p0, Lorg/apache/xml/security/signature/XMLSignatureException;

    const-string v1, "algorithms.NoSuchMap"

    invoke-direct {p0, v1, v0}, Lorg/apache/xml/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public a(B)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "http://www.w3.org/2000/09/xmldsig#"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "DigestMethod"

    return-object v0
.end method
