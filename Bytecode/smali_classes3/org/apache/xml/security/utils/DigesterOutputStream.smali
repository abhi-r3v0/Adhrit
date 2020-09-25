.class public Lorg/apache/xml/security/utils/DigesterOutputStream;
.super Ljava/io/ByteArrayOutputStream;


# static fields
.field static b:Lorg/apache/commons/logging/Log;

.field static c:Ljava/lang/Class;


# instance fields
.field final a:Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xml/security/utils/DigesterOutputStream;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.utils.DigesterOutputStream"

    invoke-static {v0}, Lorg/apache/xml/security/utils/DigesterOutputStream;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/utils/DigesterOutputStream;->c:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/utils/DigesterOutputStream;->b:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/security/utils/DigesterOutputStream;->a:Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/Class;
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
.method public a()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/utils/DigesterOutputStream;->a:Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;

    invoke-virtual {v0}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->b()[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/utils/DigesterOutputStream;->a:Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a(B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 3

    sget-object v0, Lorg/apache/xml/security/utils/DigesterOutputStream;->b:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/xml/security/utils/DigesterOutputStream;->b:Lorg/apache/commons/logging/Log;

    const-string v1, "Pre-digested input:"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v1, p2

    :goto_0
    add-int v2, p2, p3

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/apache/xml/security/utils/DigesterOutputStream;->b:Lorg/apache/commons/logging/Log;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/security/utils/DigesterOutputStream;->a:Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xml/security/algorithms/MessageDigestAlgorithm;->a([BII)V

    return-void
.end method
