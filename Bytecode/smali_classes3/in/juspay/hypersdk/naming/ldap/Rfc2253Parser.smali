.class final Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;
.super Ljava/lang/Object;


# instance fields
.field private final chars:[C

.field private cur:I

.field private final len:I

.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iput-object p1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    return-void
.end method

.method private atTerminator()Z
    .locals 4

    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v2, v1, v0

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    aget-char v2, v1, v0

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    aget-char v0, v1, v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private consumeWhitespace()V
    .locals 2

    :goto_0
    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v0, v1, v0

    invoke-static {v0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doParse(Lin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/ldap/Rdn;
    .locals 4

    :goto_0
    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->consumeWhitespace()V

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseAttrType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->consumeWhitespace()V

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v2, v2, v1

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->consumeWhitespace()V

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseAttrValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->consumeWhitespace()V

    invoke-static {v1}, Lin/juspay/hypersdk/naming/ldap/Rdn;->unescapeValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lin/juspay/hypersdk/naming/ldap/Rdn;->put(Ljava/lang/String;Ljava/lang/Object;)Lin/juspay/hypersdk/naming/ldap/Rdn;

    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v1, v1, v0

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    goto :goto_0

    :cond_0
    new-instance p1, Lin/juspay/hypersdk/naming/InvalidNameException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lin/juspay/hypersdk/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Lin/juspay/hypersdk/naming/ldap/Rdn;->sort()V

    return-object p1
.end method

.method private static isWhitespace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private parseAttrType()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    :goto_0
    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    const/16 v3, 0x20

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v1, v2, v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    if-le v1, v0, :cond_2

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    add-int/lit8 v4, v1, -0x1

    aget-char v2, v2, v4

    if-ne v2, v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    if-eq v0, v1, :cond_3

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    iget v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_3
    new-instance v0, Lin/juspay/hypersdk/naming/InvalidNameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/juspay/hypersdk/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseAttrValue()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseBinaryAttrValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v0, v1, v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseQuotedAttrValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseStringAttrValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseBinaryAttrValue()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    add-int/lit8 v1, v0, 0x1

    :goto_0
    iput v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v1, v2, v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    iget v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method private parseQuotedAttrValue()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    add-int/lit8 v1, v0, 0x1

    :goto_0
    iput v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v3, v2, v1

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    aget-char v2, v2, v1

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    :cond_0
    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v1, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    iget v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    sub-int/2addr v3, v0

    invoke-direct {v1, v2, v0, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_2
    new-instance v0, Lin/juspay/hypersdk/naming/InvalidNameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/juspay/hypersdk/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseStringAttrValue()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    const/4 v1, -0x1

    :goto_0
    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v2, v3, :cond_1

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->atTerminator()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    iget v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    aget-char v2, v2, v3

    const/16 v4, 0x5c

    if-ne v2, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    move v1, v3

    :cond_0
    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-gt v2, v3, :cond_3

    :goto_1
    if-le v2, v0, :cond_2

    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    add-int/lit8 v4, v2, -0x1

    aget-char v3, v3, v4

    invoke-static {v3}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v1, v4, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    sub-int/2addr v2, v0

    invoke-direct {v1, v3, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_3
    new-instance v0, Lin/juspay/hypersdk/naming/InvalidNameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/juspay/hypersdk/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final parseDn()Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lin/juspay/hypersdk/naming/ldap/Rdn;

    invoke-direct {v2}, Lin/juspay/hypersdk/naming/ldap/Rdn;-><init>()V

    invoke-direct {p0, v2}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->doParse(Lin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/ldap/Rdn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->chars:[C

    aget-char v4, v3, v2

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_2

    aget-char v2, v3, v2

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lin/juspay/hypersdk/naming/InvalidNameException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lin/juspay/hypersdk/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    new-instance v2, Lin/juspay/hypersdk/naming/ldap/Rdn;

    invoke-direct {v2}, Lin/juspay/hypersdk/naming/ldap/Rdn;-><init>()V

    invoke-direct {p0, v2}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->doParse(Lin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/ldap/Rdn;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method final parseRdn()Lin/juspay/hypersdk/naming/ldap/Rdn;
    .locals 1

    new-instance v0, Lin/juspay/hypersdk/naming/ldap/Rdn;

    invoke-direct {v0}, Lin/juspay/hypersdk/naming/ldap/Rdn;-><init>()V

    invoke-virtual {p0, v0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseRdn(Lin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/ldap/Rdn;

    move-result-object v0

    return-object v0
.end method

.method final parseRdn(Lin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/ldap/Rdn;
    .locals 2

    invoke-direct {p0, p1}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->doParse(Lin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/ldap/Rdn;

    move-result-object p1

    iget v0, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->cur:I

    iget v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->len:I

    if-lt v0, v1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lin/juspay/hypersdk/naming/InvalidNameException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid RDN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lin/juspay/hypersdk/naming/InvalidNameException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
