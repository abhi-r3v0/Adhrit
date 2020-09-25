.class public final Lo/b$c;
.super Lo/close;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/close<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/close;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/delete;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/delete<",
            "TK;TV;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lo/b$c;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object v1, Lo/cu;->onPostMessage:Lo/cu;

    return-object v1

    .line 8
    :cond_0
    new-instance v2, Lo/flush;

    .line 9
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lo/flush;-><init>(I)V

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 13
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 15
    instance-of v9, v5, Lo/fj;

    if-eqz v9, :cond_1

    instance-of v9, v5, Ljava/util/SortedSet;

    if-nez v9, :cond_1

    .line 16
    move-object v9, v5

    check-cast v9, Lo/fj;

    .line 17
    invoke-virtual {v9}, Lo/isClosed;->onRelationshipValidationResult()Z

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_5

    .line 19
    :cond_1
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 20
    array-length v9, v5

    :goto_1
    if-eqz v9, :cond_9

    if-eq v9, v7, :cond_8

    .line 28
    invoke-static {v9}, Lo/fj;->extraCallback(I)I

    move-result v10

    .line 29
    new-array v14, v10, [Ljava/lang/Object;

    add-int/lit8 v15, v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    if-ge v11, v9, :cond_4

    .line 34
    aget-object v3, v5, v11

    invoke-static {v3, v11}, Lo/clearCache;->onNavigationEvent(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v16

    .line 36
    invoke-static/range {v16 .. v16}, Lo/et;->onPostMessage(I)I

    move-result v17

    :goto_3
    and-int v18, v17, v15

    .line 38
    aget-object v7, v14, v18

    if-nez v7, :cond_2

    add-int/lit8 v7, v12, 0x1

    .line 40
    aput-object v3, v5, v12

    .line 41
    aput-object v3, v14, v18

    add-int v13, v13, v16

    move v12, v7

    goto :goto_4

    .line 44
    :cond_2
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    add-int/lit8 v17, v17, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto :goto_2

    .line 47
    :cond_4
    invoke-static {v5, v12, v9, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 v3, 0x1

    if-ne v12, v3, :cond_5

    const/4 v3, 0x0

    .line 49
    aget-object v5, v5, v3

    .line 50
    new-instance v9, Lo/fz;

    invoke-direct {v9, v5, v13}, Lo/fz;-><init>(Ljava/lang/Object;I)V

    goto :goto_5

    .line 51
    :cond_5
    invoke-static {v12}, Lo/fj;->extraCallback(I)I

    move-result v3

    div-int/lit8 v10, v10, 0x2

    if-ge v3, v10, :cond_6

    move v9, v12

    const/4 v7, 0x1

    goto :goto_1

    .line 53
    :cond_6
    array-length v3, v5

    shr-int/lit8 v6, v3, 0x1

    shr-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v3

    if-ge v12, v6, :cond_7

    .line 55
    invoke-static {v5, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 56
    :cond_7
    new-instance v9, Lo/fy;

    move-object v11, v9

    move v3, v12

    move-object v12, v5

    move/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lo/fy;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    .line 24
    aget-object v5, v5, v3

    .line 26
    new-instance v9, Lo/fz;

    invoke-direct {v9, v5}, Lo/fz;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    .line 22
    :cond_9
    sget-object v9, Lo/fy;->ICustomTabsCallback:Lo/fy;

    .line 58
    :goto_5
    invoke-virtual {v9}, Lo/fj;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 60
    iget v3, v2, Lo/flush;->ICustomTabsCallback:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    shl-int/2addr v3, v5

    .line 61
    iget-object v6, v2, Lo/flush;->onNavigationEvent:[Ljava/lang/Object;

    array-length v6, v6

    if-le v3, v6, :cond_d

    .line 62
    iget-object v6, v2, Lo/flush;->onNavigationEvent:[Ljava/lang/Object;

    iget-object v7, v2, Lo/flush;->onNavigationEvent:[Ljava/lang/Object;

    array-length v7, v7

    if-ltz v3, :cond_c

    shr-int/lit8 v10, v7, 0x1

    add-int/2addr v7, v10

    add-int/2addr v7, v5

    if-ge v7, v3, :cond_a

    add-int/lit8 v3, v3, -0x1

    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    shl-int/lit8 v7, v3, 0x1

    :cond_a
    if-gez v7, :cond_b

    const v7, 0x7fffffff

    .line 72
    :cond_b
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lo/flush;->onNavigationEvent:[Ljava/lang/Object;

    const/4 v3, 0x0

    .line 73
    iput-boolean v3, v2, Lo/flush;->extraCallback:Z

    goto :goto_6

    .line 65
    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "cannot store more than MAX_VALUE elements"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_d
    const/4 v3, 0x0

    .line 74
    :goto_6
    invoke-static {v8, v9}, Lo/c$5;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    iget-object v5, v2, Lo/flush;->onNavigationEvent:[Ljava/lang/Object;

    iget v6, v2, Lo/flush;->ICustomTabsCallback:I

    mul-int/lit8 v6, v6, 0x2

    aput-object v8, v5, v6

    .line 76
    iget-object v5, v2, Lo/flush;->onNavigationEvent:[Ljava/lang/Object;

    iget v6, v2, Lo/flush;->ICustomTabsCallback:I

    mul-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    add-int/2addr v6, v7

    aput-object v9, v5, v6

    .line 77
    iget v5, v2, Lo/flush;->ICustomTabsCallback:I

    add-int/2addr v5, v7

    iput v5, v2, Lo/flush;->ICustomTabsCallback:I

    .line 78
    invoke-virtual {v9}, Lo/fj;->size()I

    move-result v5

    add-int/2addr v4, v5

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 80
    :cond_f
    new-instance v1, Lo/delete;

    .line 82
    iput-boolean v7, v2, Lo/flush;->extraCallback:Z

    .line 83
    iget v3, v2, Lo/flush;->ICustomTabsCallback:I

    iget-object v2, v2, Lo/flush;->onNavigationEvent:[Ljava/lang/Object;

    invoke-static {v3, v2}, Lo/fi;->onPostMessage(I[Ljava/lang/Object;)Lo/fi;

    move-result-object v2

    .line 84
    invoke-direct {v1, v2, v4, v6}, Lo/delete;-><init>(Lo/abort;ILjava/util/Comparator;)V

    return-object v1
.end method
