.class public abstract Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;
.super Lorg/apache/xml/security/c14n/CanonicalizerSpi;


# static fields
.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field static final g:Lorg/apache/xml/security/c14n/helper/AttrCompare;

.field static final h:[B

.field protected static final i:Lorg/w3c/dom/Attr;

.field private static final o:[B

.field private static final p:[B

.field private static final q:[B

.field private static final r:[B

.field private static final s:[B

.field private static final t:[B

.field private static final u:[B


# instance fields
.field j:Ljava/util/List;

.field k:Z

.field l:Ljava/util/Set;

.field m:Lorg/w3c/dom/Node;

.field n:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->c:[B

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    sput-object v1, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->d:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    fill-array-data v2, :array_3

    sput-object v2, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->e:[B

    const/4 v2, 0x5

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    sput-object v3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->f:[B

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    sput-object v3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->o:[B

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    sput-object v3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->p:[B

    new-array v3, v2, [B

    fill-array-data v3, :array_7

    sput-object v3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->q:[B

    new-array v3, v1, [B

    fill-array-data v3, :array_8

    sput-object v3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->r:[B

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    sput-object v1, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->s:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_a

    sput-object v1, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->t:[B

    new-array v1, v2, [B

    fill-array-data v1, :array_b

    sput-object v1, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->u:[B

    new-instance v1, Lorg/apache/xml/security/c14n/helper/AttrCompare;

    invoke-direct {v1}, Lorg/apache/xml/security/c14n/helper/AttrCompare;-><init>()V

    sput-object v1, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->g:Lorg/apache/xml/security/c14n/helper/AttrCompare;

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->h:[B

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "http://www.w3.org/2000/xmlns/"

    const-string v2, "xmlns"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->i:Lorg/w3c/dom/Attr;

    const-string v1, ""

    invoke-interface {v0, v1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unable to create nullNode"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 1
        0x3ft
        0x3et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3ct
        0x3ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
        0x3et
    .end array-data

    :array_3
    .array-data 1
        0x3ct
        0x21t
        0x2dt
        0x2dt
    .end array-data

    :array_4
    .array-data 1
        0x26t
        0x23t
        0x78t
        0x41t
        0x3bt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x26t
        0x23t
        0x78t
        0x39t
        0x3bt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x26t
        0x71t
        0x75t
        0x6ft
        0x74t
        0x3bt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x26t
        0x23t
        0x78t
        0x44t
        0x3bt
    .end array-data

    nop

    :array_8
    .array-data 1
        0x26t
        0x67t
        0x74t
        0x3bt
    .end array-data

    :array_9
    .array-data 1
        0x26t
        0x6ct
        0x74t
        0x3bt
    .end array-data

    :array_a
    .array-data 1
        0x3ct
        0x2ft
    .end array-data

    nop

    :array_b
    .array-data 1
        0x26t
        0x61t
        0x6dt
        0x70t
        0x3bt
    .end array-data

    nop

    :array_c
    .array-data 1
        0x3dt
        0x22t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xml/security/c14n/CanonicalizerSpi;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->l:Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->m:Lorg/w3c/dom/Node;

    new-instance v0, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    iput-boolean p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->k:Z

    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    const/16 v3, 0x26

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :cond_0
    invoke-static {v2, p1}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(CLjava/io/OutputStream;)V

    goto :goto_2

    :cond_1
    sget-object v2, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->r:[B

    goto :goto_1

    :cond_2
    sget-object v2, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->s:[B

    goto :goto_1

    :cond_3
    sget-object v2, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->u:[B

    goto :goto_1

    :cond_4
    sget-object v2, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->q:[B

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V
    .locals 3

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    invoke-static {p0, p2, p3}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V

    sget-object p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->h:[B

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p3, 0x0

    :goto_0
    const/16 v0, 0x22

    if-ge p3, p0, :cond_7

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v2, 0x9

    if-eq p3, v2, :cond_6

    const/16 v2, 0xa

    if-eq p3, v2, :cond_5

    const/16 v2, 0xd

    if-eq p3, v2, :cond_4

    if-eq p3, v0, :cond_3

    const/16 v0, 0x26

    if-eq p3, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p3, v0, :cond_1

    const/16 v0, 0x80

    if-ge p3, v0, :cond_0

    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :cond_0
    invoke-static {p3, p2}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(CLjava/io/OutputStream;)V

    goto :goto_2

    :cond_1
    sget-object p3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->s:[B

    goto :goto_1

    :cond_2
    sget-object p3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->u:[B

    goto :goto_1

    :cond_3
    sget-object p3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->p:[B

    goto :goto_1

    :cond_4
    sget-object p3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->q:[B

    goto :goto_1

    :cond_5
    sget-object p3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->f:[B

    goto :goto_1

    :cond_6
    sget-object p3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->o:[B

    :goto_1
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    move p3, v1

    goto :goto_0

    :cond_7
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static final a(Lorg/w3c/dom/Comment;Ljava/io/OutputStream;I)V
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    sget-object v1, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->e:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p0}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    sget-object v3, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->q:[B

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_1
    const/16 v4, 0x80

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_2
    invoke-static {v3, p1}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(CLjava/io/OutputStream;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-object p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->d:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    const/4 p0, -0x1

    if-ne p2, p0, :cond_4

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_4
    return-void
.end method

.method static final a(Lorg/w3c/dom/ProcessingInstruction;Ljava/io/OutputStream;I)V
    .locals 7

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_0
    sget-object v1, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->c:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-interface {p0}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0xd

    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    sget-object v5, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->q:[B

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x80

    if-ge v6, v5, :cond_2

    invoke-virtual {p1, v6}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_2
    invoke-static {v6, p1}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(CLjava/io/OutputStream;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_4

    sget-object v2, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->q:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_4
    invoke-static {v2, p1}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(CLjava/io/OutputStream;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    sget-object p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b:[B

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    const/4 p0, -0x1

    if-ne p2, p0, :cond_6

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_6
    return-void
.end method

.method private d(Lorg/w3c/dom/Node;)[B
    .locals 2

    const-string v0, "empty"

    :try_start_0
    invoke-virtual {p0, p1, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    instance-of p1, p1, Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-boolean v1, p0, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_0
    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    instance-of p1, p1, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    check-cast p1, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;

    invoke-virtual {p1}, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->a()[B

    move-result-object p1

    iget-boolean v1, p0, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    check-cast v1, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;

    invoke-virtual {v1}, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->b()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method a(Lorg/w3c/dom/Node;I)I
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->j:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/security/signature/NodeFilter;

    invoke-interface {v2, p1, p2}, Lorg/apache/xml/security/signature/NodeFilter;->a(Lorg/w3c/dom/Node;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    return v2

    :cond_1
    iget-object p2, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->l:Ljava/util/Set;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method abstract a(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    return-void
.end method

.method abstract a(Lorg/apache/xml/security/signature/XMLSignatureInput;)V
.end method

.method final a(Lorg/w3c/dom/Node;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;Lorg/w3c/dom/Node;I)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b(Lorg/w3c/dom/Node;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    iget-object v2, v0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->m:Lorg/w3c/dom/Node;

    iget-boolean v3, v0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->k:Z

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v6, p1

    move/from16 v7, p4

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    const/16 v12, 0x3e

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a()V

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object/from16 v13, p2

    goto/16 :goto_3

    :pswitch_2
    if-eqz v3, :cond_4

    check-cast v6, Lorg/w3c/dom/Comment;

    invoke-static {v6, v1, v7}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/Comment;Ljava/io/OutputStream;I)V

    goto/16 :goto_2

    :pswitch_3
    check-cast v6, Lorg/w3c/dom/ProcessingInstruction;

    invoke-static {v6, v1, v7}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/ProcessingInstruction;Ljava/io/OutputStream;I)V

    goto :goto_2

    :pswitch_4
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_2

    :pswitch_5
    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    const-string v2, "empty"

    invoke-direct {v1, v2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    const/4 v7, 0x0

    if-eq v6, v2, :cond_4

    move-object v9, v6

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a()V

    const/16 v10, 0x3c

    invoke-virtual {v1, v10}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1, v4}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V

    move-object/from16 v13, p2

    invoke-virtual {v0, v9, v13}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;

    move-result-object v14

    if-eqz v14, :cond_1

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Attr;

    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15, v1, v4}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v12}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    if-nez v5, :cond_3

    sget-object v9, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->t:[B

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v10, v1}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-virtual {v1, v12}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b()V

    if-eqz v8, :cond_2

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    :cond_2
    move-object v6, v5

    goto :goto_3

    :cond_3
    move-object v6, v5

    move-object v8, v9

    goto :goto_3

    :cond_4
    :goto_2
    move-object/from16 v13, p2

    move-object v6, v9

    :cond_5
    :goto_3
    if-nez v6, :cond_8

    if-eqz v8, :cond_8

    sget-object v5, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->t:[B

    invoke-virtual {v1, v5}, Ljava/io/OutputStream;->write([B)V

    move-object v5, v8

    check-cast v5, Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1, v4}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V

    invoke-virtual {v1, v12}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual/range {p2 .. p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b()V

    move-object/from16 v5, p3

    if-ne v8, v5, :cond_6

    return-void

    :cond_6
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    if-eq v11, v9, :cond_5

    :cond_7
    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_3

    :cond_8
    move-object/from16 v5, p3

    if-nez v6, :cond_9

    return-void

    :cond_9
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public a(Ljava/util/Set;)[B
    .locals 0

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->l:Ljava/util/Set;

    invoke-static {p1}, Lorg/apache/xml/security/utils/XMLUtils;->a(Ljava/util/Set;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->d(Lorg/w3c/dom/Node;)[B

    move-result-object p1

    return-object p1
.end method

.method public a(Lorg/w3c/dom/Node;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)[B

    move-result-object p1

    return-object p1
.end method

.method a(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)[B
    .locals 4

    const-string v0, "empty"

    iput-object p2, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->m:Lorg/w3c/dom/Node;

    :try_start_0
    new-instance p2, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;

    invoke-direct {p2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;-><init>()V

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v2, v3, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v1, p2}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->d(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p1, v1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/Node;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;Lorg/w3c/dom/Node;I)V

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    instance-of p1, p1, Ljava/io/ByteArrayOutputStream;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-boolean p2, p0, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    check-cast p2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    :cond_1
    return-object p1

    :cond_2
    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    instance-of p1, p1, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    check-cast p1, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;

    invoke-virtual {p1}, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->a()[B

    move-result-object p1

    iget-boolean p2, p0, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    check-cast p2, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;

    invoke-virtual {p2}, Lorg/apache/xml/security/utils/UnsyncByteArrayOutputStream;->b()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {p2, v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method b(Lorg/w3c/dom/Node;)I
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->j:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/security/signature/NodeFilter;

    invoke-interface {v2, p1}, Lorg/apache/xml/security/signature/NodeFilter;->a(Lorg/w3c/dom/Node;)I

    move-result v2

    if-eq v2, v1, :cond_0

    return v2

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->l:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method abstract b(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;
.end method

.method final b(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b(Lorg/w3c/dom/Node;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;

    invoke-direct {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;-><init>()V

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v3, v4, :cond_1

    move-object/from16 v4, p1

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {v0, v4, v1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->d(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)V

    :cond_1
    iget-object v4, v0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->n:Ljava/io/OutputStream;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object v9, v6

    move-object v10, v9

    const/4 v8, -0x1

    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x3e

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    :pswitch_1
    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a()V

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    goto/16 :goto_8

    :pswitch_2
    iget-boolean v11, v0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->k:Z

    if-eqz v11, :cond_b

    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->f()I

    move-result v11

    invoke-virtual {v0, v7, v11}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/Node;I)I

    move-result v11

    if-ne v11, v3, :cond_b

    check-cast v7, Lorg/w3c/dom/Comment;

    invoke-static {v7, v4, v8}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/Comment;Ljava/io/OutputStream;I)V

    goto/16 :goto_7

    :pswitch_3
    invoke-virtual {v0, v7}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->c(Lorg/w3c/dom/Node;)Z

    move-result v11

    if-eqz v11, :cond_b

    check-cast v7, Lorg/w3c/dom/ProcessingInstruction;

    invoke-static {v7, v4, v8}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/ProcessingInstruction;Ljava/io/OutputStream;I)V

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {v0, v7}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->c(Lorg/w3c/dom/Node;)Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_b

    :cond_2
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    goto :goto_1

    :pswitch_5
    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    const-string v2, "empty"

    invoke-direct {v1, v2}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_6
    move-object v8, v7

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->f()I

    move-result v10

    invoke-virtual {v0, v7, v10}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/Node;I)I

    move-result v10

    if-ne v10, v2, :cond_3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    :goto_2
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_3
    if-ne v10, v3, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a()V

    const/16 v11, 0x3c

    invoke-virtual {v4, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v4, v5}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c()V

    move-object v11, v6

    :goto_4
    invoke-virtual {v0, v8, v1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->b(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)Ljava/util/Iterator;

    move-result-object v14

    if-eqz v14, :cond_6

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Attr;

    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15, v4, v5}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V

    const/4 v2, -0x1

    goto :goto_5

    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v4, v13}, Ljava/io/OutputStream;->write(I)V

    :cond_7
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_a

    if-eqz v10, :cond_8

    sget-object v8, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->t:[B

    invoke-virtual {v4, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-static {v11, v4, v5}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V

    invoke-virtual {v4, v13}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b()V

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d()V

    :goto_6
    if-eqz v9, :cond_9

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    :cond_9
    move-object v7, v2

    goto :goto_2

    :cond_a
    move-object v7, v2

    move-object v9, v8

    goto :goto_2

    :cond_b
    :goto_7
    move-object v7, v10

    :cond_c
    :goto_8
    if-nez v7, :cond_10

    if-eqz v9, :cond_10

    invoke-virtual {v0, v9}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->c(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->t:[B

    invoke-virtual {v4, v2}, Ljava/io/OutputStream;->write([B)V

    move-object v2, v9

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v5}, Lorg/apache/xml/security/c14n/implementations/UtfHelpper;->a(Ljava/lang/String;Ljava/io/OutputStream;Ljava/util/Map;)V

    invoke-virtual {v4, v13}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b()V

    goto :goto_9

    :cond_d
    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d()V

    :goto_9
    move-object/from16 v2, p2

    if-ne v9, v2, :cond_e

    return-void

    :cond_e
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-eq v3, v10, :cond_c

    :cond_f
    move-object v9, v6

    const/4 v8, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v2, p2

    if-nez v7, :cond_11

    return-void

    :cond_11
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    const/4 v2, -0x1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public b(Lorg/apache/xml/security/signature/XMLSignatureInput;)[B
    .locals 2

    const-string v0, "empty"

    :try_start_0
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->k:Z

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->e()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/security/c14n/CanonicalizerSpi;->a([B)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->l()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)[B

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->p()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->j:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Lorg/apache/xml/security/signature/XMLSignatureInput;)V

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->m()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->d(Lorg/w3c/dom/Node;)[B

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/apache/xml/security/signature/XMLSignatureInput;->b()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->a(Ljava/util/Set;)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/xml/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception p1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception p1

    new-instance v1, Lorg/apache/xml/security/c14n/CanonicalizationException;

    invoke-direct {v1, v0, p1}, Lorg/apache/xml/security/c14n/CanonicalizationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method c(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)V
    .locals 6

    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "xml"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {p2, v3, v4, v2}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method c(Lorg/w3c/dom/Node;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->j:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xml/security/signature/NodeFilter;

    invoke-interface {v3, p1}, Lorg/apache/xml/security/signature/NodeFilter;->a(Lorg/w3c/dom/Node;)I

    move-result v3

    if-eq v3, v2, :cond_0

    return v1

    :cond_1
    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->l:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method final d(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v2, v1, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {p0, v0, p2}, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->c(Lorg/w3c/dom/Element;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;)V

    goto :goto_0

    :cond_2
    const-string p1, "xmlns"

    invoke-virtual {p2, p1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lorg/apache/xml/security/c14n/implementations/CanonicalizerBase;->i:Lorg/w3c/dom/Attr;

    invoke-virtual {p2, p1, v1, v0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;

    :cond_3
    :goto_1
    return-void
.end method
