.class public Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;
.super Lo/populateFramesList;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;
    }
.end annotation

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
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "TK;>;"
        }
    .end annotation
.end field

.field private root:Lo/getCurrentTimeMillis;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lo/populateFramesList;-><init>()V

    .line 30
    invoke-static {}, Lo/populateSignalData;->getInstance()Lo/populateSignalData;

    move-result-object v0

    iput-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    .line 31
    iput-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lo/getCurrentTimeMillis;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "TK;>;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lo/populateFramesList;-><init>()V

    .line 35
    iput-object p1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    .line 36
    iput-object p2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method synthetic constructor <init>(Lo/getCurrentTimeMillis;Ljava/util/Comparator;Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$2;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;-><init>(Lo/getCurrentTimeMillis;Ljava/util/Comparator;)V

    return-void
.end method

.method public static buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;
    .locals 0
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
            "Lo/CrashlyticsUncaughtExceptionHandler$CrashListener<",
            "TA;TC;>;"
        }
    .end annotation

    .line 220
    invoke-static {p0, p1, p2, p3}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;

    move-result-object p0

    return-object p0
.end method

.method public static fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TA;TB;>;",
            "Ljava/util/Comparator<",
            "TA;>;)",
            "Lo/CrashlyticsUncaughtExceptionHandler$CrashListener<",
            "TA;TB;>;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    .line 225
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    invoke-static {}, Lo/populateFramesList$onNavigationEvent;->identityTranslator()Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;

    move-result-object v1

    .line 224
    invoke-static {v0, p0, v1, p1}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener$onNavigationEvent;->buildFrom(Ljava/util/List;Ljava/util/Map;Lo/populateFramesList$onNavigationEvent$onMessageChannelReady;Ljava/util/Comparator;)Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;

    move-result-object p0

    return-object p0
.end method

.method private getNode(Ljava/lang/Object;)Lo/getCurrentTimeMillis;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    .line 46
    :goto_0
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 47
    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 49
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    .line 53
    :cond_1
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->getNode(Ljava/lang/Object;)Lo/getCurrentTimeMillis;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->getNode(Ljava/lang/Object;)Lo/getCurrentTimeMillis;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 67
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getValue()Ljava/lang/Object;

    move-result-object p1

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

    .line 212
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getMaxKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getMax()Lo/getCurrentTimeMillis;

    move-result-object v0

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMinKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getMin()Lo/getCurrentTimeMillis;

    move-result-object v0

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getPredecessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    const/4 v1, 0x0

    move-object v2, v1

    .line 137
    :goto_0
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 138
    iget-object v3, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_3

    .line 140
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object p1

    invoke-interface {p1}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 141
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object p1

    .line 142
    :goto_1
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v0

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object p1

    goto :goto_1

    .line 145
    :cond_0
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    .line 147
    invoke-interface {v2}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    if-gez v3, :cond_4

    .line 152
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0

    goto :goto_0

    .line 155
    :cond_4
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    .line 158
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Couldn\'t find predecessor key of non-present key: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getRoot()Lo/getCurrentTimeMillis;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    return-object v0
.end method

.method public getSuccessorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    const/4 v1, 0x0

    move-object v2, v1

    .line 165
    :goto_0
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 166
    iget-object v3, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_3

    .line 168
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object p1

    invoke-interface {p1}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 169
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object p1

    .line 170
    :goto_1
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object p1

    goto :goto_1

    .line 173
    :cond_0
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v2, :cond_2

    .line 175
    invoke-interface {v2}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    if-gez v3, :cond_4

    .line 180
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_4
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v2

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_0

    .line 186
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Couldn\'t find successor key of non-present key: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis$ICustomTabsCallback<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    invoke-interface {v0, p1}, Lo/getCurrentTimeMillis;->inOrderTraversal(Lo/getCurrentTimeMillis$ICustomTabsCallback;)V

    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    const/4 v1, 0x0

    .line 194
    :goto_0
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 195
    iget-object v2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object p1

    invoke-interface {p1}, Lo/getCurrentTimeMillis;->size()I

    move-result p1

    add-int/2addr v1, p1

    return v1

    :cond_0
    if-gez v2, :cond_1

    .line 199
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_1
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v2

    invoke-interface {v2}, Lo/getCurrentTimeMillis;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    .line 203
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lo/populateFramesList<",
            "TK;TV;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    .line 84
    invoke-interface {v0, p1, p2, v1}, Lo/getCurrentTimeMillis;->insert(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;

    move-result-object v2

    sget-object v5, Lo/getCurrentTimeMillis$onMessageChannelReady;->BLACK:Lo/getCurrentTimeMillis$onMessageChannelReady;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lo/getCurrentTimeMillis;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis;

    move-result-object p1

    .line 85
    new-instance p2, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;

    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    invoke-direct {p2, p1, v0}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;-><init>(Lo/getCurrentTimeMillis;Ljava/util/Comparator;)V

    return-object p2
.end method

.method public isEmpty()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Lo/getDeviceArchitecture;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    iget-object v2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v2, v4}, Lo/getDeviceArchitecture;-><init>(Lo/getCurrentTimeMillis;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 120
    new-instance v0, Lo/getDeviceArchitecture;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    iget-object v2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lo/getDeviceArchitecture;-><init>(Lo/getCurrentTimeMillis;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lo/populateFramesList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lo/populateFramesList<",
            "TK;TV;>;"
        }
    .end annotation

    .line 72
    invoke-virtual {p0, p1}, Lo/populateFramesList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 75
    :cond_0
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    .line 76
    invoke-interface {v0, p1, v1}, Lo/getCurrentTimeMillis;->remove(Ljava/lang/Object;Ljava/util/Comparator;)Lo/getCurrentTimeMillis;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lo/getCurrentTimeMillis$onMessageChannelReady;->BLACK:Lo/getCurrentTimeMillis$onMessageChannelReady;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lo/getCurrentTimeMillis;->copy(Ljava/lang/Object;Ljava/lang/Object;Lo/getCurrentTimeMillis$onMessageChannelReady;Lo/getCurrentTimeMillis;Lo/getCurrentTimeMillis;)Lo/getCurrentTimeMillis;

    move-result-object p1

    .line 77
    new-instance v0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;-><init>(Lo/getCurrentTimeMillis;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public reverseIterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lo/getDeviceArchitecture;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    iget-object v2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v2, v4}, Lo/getDeviceArchitecture;-><init>(Lo/getCurrentTimeMillis;Ljava/lang/Object;Ljava/util/Comparator;Z)V

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

    .line 125
    new-instance v0, Lo/getDeviceArchitecture;

    iget-object v1, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    iget-object v2, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->comparator:Ljava/util/Comparator;

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lo/getDeviceArchitecture;-><init>(Lo/getCurrentTimeMillis;Ljava/lang/Object;Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 100
    iget-object v0, p0, Lo/CrashlyticsUncaughtExceptionHandler$CrashListener;->root:Lo/getCurrentTimeMillis;

    invoke-interface {v0}, Lo/getCurrentTimeMillis;->size()I

    move-result v0

    return v0
.end method
