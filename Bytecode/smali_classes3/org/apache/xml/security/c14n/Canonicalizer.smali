.class public Lorg/apache/xml/security/c14n/Canonicalizer;
.super Ljava/lang/Object;


# static fields
.field static a:Z = false

.field static b:Ljava/util/Map;


# instance fields
.field protected c:Lorg/apache/xml/security/c14n/CanonicalizerSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/c14n/Canonicalizer;->c:Lorg/apache/xml/security/c14n/CanonicalizerSpi;

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1}, Lorg/apache/xml/security/c14n/Canonicalizer;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/security/c14n/CanonicalizerSpi;

    iput-object v1, p0, Lorg/apache/xml/security/c14n/Canonicalizer;->c:Lorg/apache/xml/security/c14n/CanonicalizerSpi;

    iput-boolean v0, v1, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance p1, Lorg/apache/xml/security/c14n/InvalidCanonicalizerException;

    const-string v1, "signature.Canonicalizer.UnknownCanonicalizer"

    invoke-direct {p1, v1, v0}, Lorg/apache/xml/security/c14n/InvalidCanonicalizerException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static final a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/Canonicalizer;
    .locals 1

    new-instance v0, Lorg/apache/xml/security/c14n/Canonicalizer;

    invoke-direct {v0, p0}, Lorg/apache/xml/security/c14n/Canonicalizer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-boolean v0, Lorg/apache/xml/security/c14n/Canonicalizer;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/apache/xml/security/c14n/Canonicalizer;->b:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xml/security/c14n/Canonicalizer;->a:Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lorg/apache/xml/security/c14n/Canonicalizer;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/xml/security/c14n/Canonicalizer;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "c14n class not found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    const/4 p0, 0x1

    aput-object v0, p1, p0

    new-instance p0, Lorg/apache/xml/security/exceptions/AlgorithmAlreadyRegisteredException;

    const-string v0, "algorithm.alreadyRegistered"

    invoke-direct {p0, v0, p1}, Lorg/apache/xml/security/exceptions/AlgorithmAlreadyRegisteredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lorg/apache/xml/security/c14n/Canonicalizer;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/c14n/Canonicalizer;->c:Lorg/apache/xml/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Lorg/w3c/dom/Node;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/c14n/Canonicalizer;->c:Lorg/apache/xml/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a(Lorg/w3c/dom/Node;)[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/c14n/Canonicalizer;->c:Lorg/apache/xml/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1, p2}, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
