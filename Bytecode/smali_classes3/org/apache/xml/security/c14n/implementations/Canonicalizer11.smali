.class public abstract Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;
.super Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;


# static fields
.field static d:Lorg/apache/commons/logging/Log;

.field static f:Ljava/lang/Class;


# instance fields
.field b:Z

.field final c:Ljava/util/SortedSet;

.field e:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->f:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.c14n.implementations.Canonicalizer11"

    invoke-static {v0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->f:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->d:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;-><init>(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->b:Z

    new-instance p1, Ljava/util/TreeSet;

    sget-object v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->g:Lorg/apache/xml/security/c14n/helper/AttrCompare;

    invoke-direct {p1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->c:Ljava/util/SortedSet;

    new-instance p1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;

    invoke-direct {p1}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;-><init>()V

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->e:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;

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

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->d:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->d:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ":   "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->d:Lorg/apache/commons/logging/Log;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\t\t\t\t"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->d:Lorg/apache/commons/logging/Log;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\t\t\t"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    sget-object v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->d:Lorg/apache/commons/logging/Log;

    const-string v1, "STEP   OUTPUT BUFFER\t\tINPUT BUFFER"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :goto_0
    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "/"

    if-ltz v1, :cond_0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "1 "

    invoke-static {v6, v3, p0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".."

    if-eqz v6, :cond_16

    const-string v6, "./"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v8, "2A"

    const/4 v9, 0x2

    if-eqz v6, :cond_3

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6, p0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v6, "../"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x3

    if-eqz v10, :cond_4

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_4
    const-string v8, "/./"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v10, "2B"

    if-eqz v8, :cond_5

    invoke-virtual {p0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, p0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v8, "/."

    invoke-virtual {p0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    const-string v8, "/../"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "2C"

    const/4 v10, -0x1

    const-string v12, "/.."

    if-eqz v8, :cond_c

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-nez v8, :cond_7

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_6
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v10, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_b

    :goto_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v0

    :cond_b
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6, p0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-nez v8, :cond_d

    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    goto :goto_5

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v10, :cond_a

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_b

    goto :goto_7

    :cond_10
    const-string v6, "."

    invoke-virtual {p0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v8, "2D"

    if-eqz v6, :cond_12

    :cond_11
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0, v3}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v3

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_13
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-nez v6, :cond_14

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    move v13, v7

    move v7, v6

    move v6, v13

    goto :goto_a

    :cond_14
    const/4 v7, 0x0

    :goto_a
    if-ne v6, v10, :cond_15

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v6, v3

    goto :goto_b

    :cond_15
    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    move-object v6, p0

    move-object p0, v7

    :goto_b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v7, "2E"

    invoke-static {v7, p0, v6}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v6

    goto/16 :goto_1

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3 "

    invoke-static {v2, v1, p0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "/"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string v2, ".."

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v4, ""

    move-object p0, v1

    move-object v3, p0

    move-object v5, v3

    :goto_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, p1

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v7}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v9, p0

    move-object v7, v1

    move-object v10, v2

    move-object v8, v6

    goto :goto_5

    :cond_3
    if-eqz v6, :cond_4

    invoke-static {v7}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v3, v6

    goto :goto_4

    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    :goto_2
    move-object v5, v2

    goto :goto_4

    :cond_6
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    :goto_3
    invoke-static {v7}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_8
    const/16 p1, 0x2f

    invoke-virtual {v4, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    goto :goto_3

    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :goto_4
    move-object v7, p0

    move-object v8, v3

    move-object v9, v4

    move-object v10, v5

    :goto_5
    new-instance p0, Ljava/net/URI;

    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 9

    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->b:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->c:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Attr;

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "xml"

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    invoke-virtual {p2, v6, v7, v5}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v0, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->a(Lorg/w3c/dom/Attr;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v3

    const/4 p1, 0x1

    aput-object v6, p2, p1

    const/4 p1, 0x2

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    new-instance p1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    const-string v0, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {p1, v0, p2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->b:Z

    if-eqz p1, :cond_6

    invoke-virtual {p2, v0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->e:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;

    invoke-virtual {p1, v0}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a(Ljava/util/Collection;)V

    iput-boolean v3, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->b:Z

    :cond_6
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method a(Lorg/apache/xml/security/signature/XMLSignatureInput;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->b()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Ljava/util/Set;)Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method public a(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .locals 0

    new-instance p1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    const-string p2, "c14n.Canonicalizer.UnsupportedOperation"

    invoke-direct {p1, p2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->e:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a(I)V

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->f()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->a(Lorg/w3c/dom/Node;I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    iget-object v9, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->c:Ljava/util/SortedSet;

    invoke-interface {v9}, Ljava/util/SortedSet;->clear()V

    const/4 v10, 0x0

    :goto_2
    const-string v11, "http://www.w3.org/2000/xmlns/"

    const-string v12, "xmlns"

    if-ge v10, v8, :cond_b

    invoke-interface {v6, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Attr;

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v15, "http://www.w3.org/XML/1998/namespace"

    if-nez v11, :cond_4

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "id"

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    if-eqz v3, :cond_a

    goto :goto_3

    :cond_2
    iget-object v11, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->e:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;

    invoke-virtual {v11, v13}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a(Lorg/w3c/dom/Attr;)V

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_a

    :goto_3
    invoke-interface {v9, v13}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v14

    const-string v7, "xml"

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_5
    invoke-virtual {v0, v13}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->c(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v3, :cond_6

    invoke-virtual {v2, v11}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_6
    invoke-virtual {v2, v11, v14, v13}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-interface {v9, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Lorg/apache/xml/security/c14n/helper/C14nHelper;->a(Lorg/w3c/dom/Attr;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    aput-object v11, v2, v5

    const/4 v1, 0x2

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    const-string v3, "c14n.Canonicalizer.RelativeNamespace"

    invoke-direct {v1, v3, v2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v12, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v2, v11}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v11, v14, v13}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    :cond_a
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_b
    if-eqz v3, :cond_f

    invoke-interface {v1, v11, v12}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual {v2, v12}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    goto :goto_5

    :cond_c
    invoke-virtual {v0, v1}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->c(Lorg/w3c/dom/Node;)Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->i:Lorg/w3c/dom/Attr;

    const-string v3, ""

    invoke-virtual {v2, v12, v3, v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_5

    :cond_d
    const/4 v7, 0x0

    :goto_5
    if-eqz v7, :cond_e

    invoke-interface {v9, v7}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v1, v0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->e:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;

    invoke-virtual {v1, v9}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a(Ljava/util/Collection;)V

    invoke-virtual {v2, v9}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/util/Collection;)V

    :cond_f
    invoke-interface {v9}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method c(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)V
    .locals 7

    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->e:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a(I)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "http://www.w3.org/XML/1998/namespace"

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11;->e:Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;

    invoke-virtual {v3, v2}, Lorg/apache/xml/security/c14n/implementations/Canonicalizer11$XmlAttrStack;->a(Lorg/w3c/dom/Attr;)V

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    invoke-virtual {p2, v3, v5, v2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
