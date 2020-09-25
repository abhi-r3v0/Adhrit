.class public Lorg/apache/commons/collections4/keyvalue/MultiKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3df875d977c7e505L


# instance fields
.field private transient hashCode:I

.field private final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 67
    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 82
    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;)V"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    .line 98
    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;TK;TK;TK;)V"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    .line 115
    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 130
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;-><init>([Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;Z)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    goto :goto_0

    .line 165
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    .line 168
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->calculateHashCode([Ljava/lang/Object;)V

    return-void

    .line 160
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The array of keys must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private calculateHashCode([Ljava/lang/Object;)V
    .locals 4

    .line 263
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    if-eqz v3, :cond_0

    .line 265
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    iput v2, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->hashCode:I

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 278
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/keyvalue/MultiKey;->calculateHashCode([Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 224
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    if-eqz v0, :cond_1

    .line 225
    check-cast p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;

    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    iget-object p1, p1, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getKeys()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TK;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 243
    iget v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->hashCode:I

    return v0
.end method

.method public size()I
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiKey"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections4/keyvalue/MultiKey;->keys:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
