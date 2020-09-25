.class public Lorg/apache/commons/collections4/map/CaseInsensitiveMap;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x622e3a12dee99200L


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0xc

    .line 72
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IFI)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 158
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;->clone()Lorg/apache/commons/collections4/map/CaseInsensitiveMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;->clone()Lorg/apache/commons/collections4/map/CaseInsensitiveMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/CaseInsensitiveMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/CaseInsensitiveMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/CaseInsensitiveMap;

    return-object v0
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 126
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 127
    aget-char v1, p1, v0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 131
    :cond_1
    sget-object p1, Lorg/apache/commons/collections4/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    return-object p1
.end method
