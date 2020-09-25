.class public Lin/juspay/hypersdk/naming/ldap/Rdn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x1

.field private static final escapees:Ljava/lang/String; = ",=+<>#;\"\\"

.field private static final serialVersionUID:J = -0x53309e37f58a6c38L


# instance fields
.field private transient entries:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$300([B)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lin/juspay/hypersdk/naming/ldap/Rdn;->escapeBinaryValue([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeHexPairs([CII)[B
    .locals 5

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p1, 0x1

    if-ge v2, p2, :cond_0

    aget-char v3, p0, p1

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    aget-char v2, p0, v2

    invoke-static {v2, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v3, :cond_0

    if-ltz v2, :cond_0

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v2

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Illegal attribute value: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static escapeBinaryValue([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    ushr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static escapeStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-char v3, v0, v2

    invoke-static {v3}, Lin/juspay/hypersdk/naming/ldap/Rdn;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    aget-char v4, v0, v3

    invoke-static {v4}, Lin/juspay/hypersdk/naming/ldap/Rdn;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    array-length v4, v0

    if-ge p0, v4, :cond_4

    aget-char v4, v0, p0

    if-lt p0, v2, :cond_2

    if-gt p0, v3, :cond_2

    const-string v5, ",=+<>#;\"\\"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_3

    :cond_2
    const/16 v5, 0x5c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static escapeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    invoke-static {p0}, Lin/juspay/hypersdk/naming/ldap/Rdn;->escapeBinaryValue([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lin/juspay/hypersdk/naming/ldap/Rdn;->escapeStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUtf8Octets([CII)[B
    .locals 7

    sub-int v0, p2, p1

    div-int/lit8 v0, v0, 0x3

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p1, 0x2

    if-ge v4, p2, :cond_0

    add-int/lit8 v4, p1, 0x1

    aget-char p1, p0, p1

    const/16 v5, 0x5c

    if-ne p1, v5, :cond_0

    add-int/lit8 p1, v4, 0x1

    aget-char v4, p0, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/lit8 v6, p1, 0x1

    aget-char p1, p0, p1

    invoke-static {p1, v5}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    if-ltz v4, :cond_0

    if-ltz p1, :cond_0

    add-int/lit8 v5, v3, 0x1

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, p1

    int-to-byte p1, v4

    aput-byte p1, v1, v3

    move v3, v5

    move p1, v6

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    return-object v1

    :cond_1
    new-array p0, v3, [B

    invoke-static {v1, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
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

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :try_start_0
    new-instance v0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;

    invoke-direct {v0, p1}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseRdn(Lin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/ldap/Rdn;
    :try_end_0
    .catch Lin/juspay/hypersdk/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid name: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unescapeValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, v0, v2

    invoke-static {v3}, Lin/juspay/hypersdk/naming/ldap/Rdn;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v0, v3

    invoke-static {v3}, Lin/juspay/hypersdk/naming/ldap/Rdn;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    array-length v3, v0

    const/16 v4, 0x5c

    if-eq v1, v3, :cond_2

    if-ge v2, v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v0, v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    if-lt v2, v1, :cond_3

    const-string p0, ""

    return-object p0

    :cond_3
    aget-char v3, v0, v2

    const/16 v5, 0x23

    if-ne v3, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, v1}, Lin/juspay/hypersdk/naming/ldap/Rdn;->decodeHexPairs([CII)[B

    move-result-object p0

    return-object p0

    :cond_4
    aget-char v3, v0, v2

    const/16 v5, 0x22

    if-ne v3, v5, :cond_5

    add-int/lit8 v3, v1, -0x1

    aget-char v3, v0, v3

    if-ne v3, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    sub-int v5, v1, v2

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, -0x1

    :goto_2
    if-ge v2, v1, :cond_9

    aget-char v6, v0, v2

    if-ne v6, v4, :cond_8

    add-int/lit8 v6, v2, 0x1

    if-ge v6, v1, :cond_8

    aget-char v7, v0, v6

    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-nez v7, :cond_6

    aget-char v2, v0, v6

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v6

    move v5, v2

    goto :goto_3

    :cond_6
    invoke-static {v0, v2, v1}, Lin/juspay/hypersdk/naming/ldap/Rdn;->getUtf8Octets([CII)[B

    move-result-object v6

    array-length v7, v6

    if-lez v7, :cond_7

    :try_start_0
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF8"

    invoke-direct {v7, v6, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    array-length v6, v6

    mul-int/lit8 v6, v6, 0x3

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v2, v6

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a valid attribute string value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",improper usage of backslash"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    aget-char v6, v0, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lin/juspay/hypersdk/naming/ldap/Rdn;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v1, v1, -0x1

    if-eq v5, v1, :cond_a

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, Lin/juspay/hypersdk/naming/ldap/Rdn;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lin/juspay/hypersdk/naming/ldap/Rdn;

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget-object v2, p1, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;

    iget-object v3, p1, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object p1, p1, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_3
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "The obj is not a Rdn"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lin/juspay/hypersdk/naming/ldap/Rdn;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lin/juspay/hypersdk/naming/ldap/Rdn;

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-virtual {p1}, Lin/juspay/hypersdk/naming/ldap/Rdn;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;

    invoke-virtual {v0}, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;

    invoke-virtual {v0}, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method put(Ljava/lang/String;Ljava/lang/Object;)Lin/juspay/hypersdk/naming/ldap/Rdn;
    .locals 2

    new-instance v0, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;-><init>(Lin/juspay/hypersdk/naming/ldap/Rdn$1;)V

    invoke-static {v0, p1}, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;->access$102(Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;Ljava/lang/String;)Ljava/lang/String;

    instance-of p1, p2, [B

    if-eqz p1, :cond_0

    check-cast p2, [B

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;->access$202(Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0, p2}, Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;->access$202(Lin/juspay/hypersdk/naming/ldap/Rdn$RdnEntry;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method sort()V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_1

    const/16 v3, 0x2b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/Rdn;->entries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
