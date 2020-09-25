.class public Lorg/apache/commons/collections4/map/ReferenceMap;
.super Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1594ca03984908d7L


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 83
    sget-object v1, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->HARD:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    sget-object v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;->SOFT:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;)V
    .locals 6

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 101
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 141
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V
    .locals 0

    .line 164
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Z)V
    .locals 6

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 120
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;-><init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceStrength;IFZ)V

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

    .line 180
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 181
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/ReferenceMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 173
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/ReferenceMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method
