.class public Lo/populateExceptionData;
.super Lo/populateFramesList;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lo/populateFramesList<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lo/populateFramesList;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 58
    iput-object v1, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    iput-object v0, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TK;>;[TK;[TV;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lo/populateFramesList;-><init>()V

    .line 65
    iput-object p2, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    .line 66
    iput-object p3, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lo/populateExceptionData;)[Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lo/populateExceptionData;)[Ljava/lang/Object;
    .locals 0

    .line 25
    iget-object p0, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    return-object p0
.end method

.method private static addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .line 244
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    .line 245
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 246
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    aput-object p2, v1, p1

    add-int/lit8 p2, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 248
    invoke-static {p0, p1, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/populateExceptionData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TA;>;",
            "Ljava/util/Map<",
            "TB;TC;>;",
            "Lo/populateFramesList$onNavigationEvent$onMessageChannelReady<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lo/populateExceptionData<",
            "TA;TC;>;"
        }
    .end annotation

    .line 33
    invoke-static {p0, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 35
    new-array v1, v0, [Ljava/lang/Object;

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 39
    aput-object v3, v1, v2

    .line 40
    invoke-interface {p2, v3}, Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 41
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Lo/populateExceptionData;

    invoke-direct {p0, p3, v1, v0}, Lo/populateExceptionData;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private findKey(Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 280
    iget-object v5, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    invoke-interface {v5, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private findKeyOrInsertPosition(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 267
    :goto_0
    iget-object v1, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    aget-object v1, v1, v0

    invoke-interface {v2, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lo/populateExceptionData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lo/populateExceptionData<",
            "TK;TV;>;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lo/populateFramesList$onNavigationEvent;->identityTranslator()Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;

    move-result-object v1

    .line 48
    invoke-static {v0, p0, v1, p1}, Lo/populateExceptionData;->buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/populateExceptionData;

    move-result-object p0

    return-object p0
.end method

.method private iterator(IZ)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Lo/populateExceptionData$2;

    invoke-direct {v0, p0, p1, p2}, Lo/populateExceptionData$2;-><init>(Lo/populateExceptionData;IZ)V

    return-object v0
.end method

.method private static removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 235
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 236
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 237
    invoke-static {p0, v2, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 238
    invoke-static {p0, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;ITT;)[TT;"
        }
    .end annotation

    .line 254
    array-length v0, p0

    .line 255
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 256
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    aput-object p2, v1, p1

    return-object v1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getMaxKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 205
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_0

    .line 209
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 207
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t find predecessor of nonexistent key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 215
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 219
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t find successor of nonexistent key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$ICustomTabsCallback<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 145
    :goto_0
    iget-object v1, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 146
    aget-object v1, v1, v0

    iget-object v2, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v1, v2}, Lo/getCurrentTimeMillis$ICustomTabsCallback;->visitEntry(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKey(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lo/populateFramesList<",
            "TK;TV;>;"
        }
    .end annotation

    .line 95
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p2, :cond_0

    return-object p0

    .line 101
    :cond_0
    iget-object v1, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lo/populateExceptionData;->replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 102
    iget-object v1, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    invoke-static {v1, v0, p2}, Lo/populateExceptionData;->replaceInArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 103
    new-instance v0, Lo/populateExceptionData;

    iget-object v1, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, p1, p2}, Lo/populateExceptionData;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0

    .line 106
    :cond_1
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v0, v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_3

    .line 108
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 109
    :goto_0
    iget-object v2, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 110
    aget-object v2, v2, v1

    iget-object v3, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object p1, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;

    move-result-object p1

    return-object p1

    .line 115
    :cond_3
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v0

    .line 116
    iget-object v1, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    invoke-static {v1, v0, p1}, Lo/populateExceptionData;->addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .line 117
    iget-object v1, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    invoke-static {v1, v0, p2}, Lo/populateExceptionData;->addToArray([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 118
    new-instance v0, Lo/populateExceptionData;

    iget-object v1, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1, p1, p2}, Lo/populateExceptionData;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0, v0}, Lo/populateExceptionData;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, v0}, Lo/populateExceptionData;->iterator(IZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lo/populateFramesList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/populateFramesList<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p0

    .line 87
    :cond_0
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lo/populateExceptionData;->removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lo/populateExceptionData;->values:[Ljava/lang/Object;

    invoke-static {v1, p1}, Lo/populateExceptionData;->removeFromArray([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 89
    new-instance v1, Lo/populateExceptionData;

    iget-object v2, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2, v0, p1}, Lo/populateExceptionData;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v1}, Lo/populateExceptionData;->iterator(IZ)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reverseIteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lo/populateExceptionData;->findKeyOrInsertPosition(Ljava/lang/Object;)I

    move-result v0

    .line 191
    iget-object v1, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo/populateExceptionData;->comparator:Ljava/util/Comparator;

    aget-object v1, v1, v0

    invoke-interface {v2, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    .line 192
    invoke-direct {p0, v0, v3}, Lo/populateExceptionData;->iterator(IZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr v0, v3

    .line 194
    invoke-direct {p0, v0, v3}, Lo/populateExceptionData;->iterator(IZ)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 135
    iget-object v0, p0, Lo/populateExceptionData;->keys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
