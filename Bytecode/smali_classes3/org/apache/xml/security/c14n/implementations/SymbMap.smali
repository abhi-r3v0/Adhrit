.class Lorg/apache/xml/security/c14n/implementations/SymbMap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:I

.field b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

.field c:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x17

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a:I

    new-array v1, v0, [Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    iput-object v1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    array-length v1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/2addr v2, v1

    aget-object v3, v0, v2

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    if-ne v2, v1, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_0
    aget-object v3, v0, v2

    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    :goto_1
    return v2
.end method

.method a()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/Object;)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected a(I)V
    .locals 5

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    array-length v1, v0

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    new-array v3, p1, [Ljava/lang/String;

    iput-object v3, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    new-array p1, p1, [Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    iput-object p1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    :goto_0
    add-int/lit8 p1, v1, -0x1

    if-lez v1, :cond_1

    aget-object v1, v0, p1

    if-eqz v1, :cond_0

    aget-object v1, v0, p1

    invoke-virtual {p0, v1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    aput-object v1, v4, v3

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    aget-object v4, v2, p1

    aput-object v4, v1, v3

    :cond_0
    move v1, p1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    aget-object v2, v1, v0

    aput-object p1, v1, v0

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    aput-object p2, v1, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget p1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    array-length p1, p1

    iput p1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a:I

    shl-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(I)V

    :cond_1
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 5

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/security/c14n/implementations/SymbMap;

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v1, v1

    new-array v1, v1, [Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    iput-object v1, v0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    iget-object v3, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->b:[Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/xml/security/c14n/implementations/SymbMap;->c:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
