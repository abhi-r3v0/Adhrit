.class public Lorg/apache/commons/collections4/comparators/FixedOrderComparator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1262551aae85061L


# instance fields
.field private counter:I

.field private isLocked:Z

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 72
    sget-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 72
    sget-object v0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-eqz p1, :cond_1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    .line 114
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The list of items must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    .line 69
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 72
    sget-object v1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;->EXCEPTION:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iput-object v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-eqz p1, :cond_1

    .line 97
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 98
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The list of items must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->checkLocked()V

    .line 184
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    iget v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addAsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->checkLocked()V

    .line 203
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 207
    iget-object p1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 205
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not known to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected checkLocked()V
    .locals 2

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot modify a FixedOrderComparator after a comparison"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    .line 229
    iget-object v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 230
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p1

    return p1

    .line 232
    :cond_1
    :goto_0
    sget-object v3, Lorg/apache/commons/collections4/comparators/FixedOrderComparator$1;->$SwitchMap$org$apache$commons$collections4$comparators$FixedOrderComparator$UnknownObjectBehavior:[I

    iget-object v4, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v3, v0, :cond_7

    const/4 v6, 0x2

    if-eq v3, v6, :cond_4

    const/4 v0, 0x3

    if-ne v3, v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, p2

    .line 239
    :goto_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Attempting to compare unknown object "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 242
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown unknownObjectBehavior: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-nez v1, :cond_6

    if-nez v2, :cond_5

    return v4

    :cond_5
    return v0

    :cond_6
    return v5

    :cond_7
    if-nez v1, :cond_9

    if-nez v2, :cond_8

    return v4

    :cond_8
    return v5

    :cond_9
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 286
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 287
    check-cast p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;

    .line 288
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    if-nez v2, :cond_3

    iget-object p1, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    iget-object v3, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez v2, :cond_5

    iget-object p1, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    iget-object v3, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-ne v2, v3, :cond_6

    iget v4, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    iget v5, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    if-ne v4, v5, :cond_6

    iget-boolean v4, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    iget-boolean p1, p1, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    if-ne v4, p1, :cond_6

    if-ne v2, v3, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public getUnknownObjectBehavior()Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 259
    iget-object v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->map:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    .line 260
    iget-object v2, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 261
    iget v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->counter:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 262
    iget-boolean v1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->isLocked:Z

    return v0
.end method

.method public setUnknownObjectBehavior(Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->checkLocked()V

    if-eqz p1, :cond_0

    .line 167
    iput-object p1, p0, Lorg/apache/commons/collections4/comparators/FixedOrderComparator;->unknownObjectBehavior:Lorg/apache/commons/collections4/comparators/FixedOrderComparator$UnknownObjectBehavior;

    return-void

    .line 165
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown object behavior must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
