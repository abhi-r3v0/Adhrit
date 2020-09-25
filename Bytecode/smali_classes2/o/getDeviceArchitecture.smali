.class public final Lo/getDeviceArchitecture;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final isReverse:Z

.field private final nodeStack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/CrashlyticsUncaughtExceptionHandler<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/getCurrentTimeMillis;Ljava/lang/Object;Ljava/util/Comparator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentTimeMillis<",
            "TK;TV;>;TK;",
            "Ljava/util/Comparator<",
            "TK;>;Z)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/getDeviceArchitecture;->nodeStack:Ljava/util/ArrayDeque;

    .line 28
    iput-boolean p4, p0, Lo/getDeviceArchitecture;->isReverse:Z

    .line 31
    :goto_0
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    .line 36
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    .line 37
    :cond_0
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-gez v0, :cond_2

    if-nez p4, :cond_4

    .line 46
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 50
    iget-object p2, p0, Lo/getDeviceArchitecture;->nodeStack:Ljava/util/ArrayDeque;

    check-cast p1, Lo/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {p2, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 53
    :cond_3
    iget-object v0, p0, Lo/getDeviceArchitecture;->nodeStack:Ljava/util/ArrayDeque;

    move-object v1, p1

    check-cast v1, Lo/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz p4, :cond_4

    .line 55
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_4
    invoke-interface {p1}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object p1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lo/getDeviceArchitecture;->nodeStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lo/getDeviceArchitecture;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lo/getDeviceArchitecture;->nodeStack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/CrashlyticsUncaughtExceptionHandler;

    .line 72
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    iget-boolean v2, p0, Lo/getDeviceArchitecture;->isReverse:Z

    if-eqz v2, :cond_0

    .line 74
    invoke-virtual {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0

    .line 75
    :goto_0
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lo/getDeviceArchitecture;->nodeStack:Ljava/util/ArrayDeque;

    move-object v3, v0

    check-cast v3, Lo/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 77
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Lo/CrashlyticsUncaughtExceptionHandler;->getRight()Lo/getCurrentTimeMillis;

    move-result-object v0

    .line 81
    :goto_1
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    iget-object v2, p0, Lo/getDeviceArchitecture;->nodeStack:Ljava/util/ArrayDeque;

    move-object v3, v0

    check-cast v3, Lo/CrashlyticsUncaughtExceptionHandler;

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 83
    invoke-interface {v0}, Lo/getCurrentTimeMillis;->getLeft()Lo/getCurrentTimeMillis;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-object v1

    .line 89
    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove called on immutable collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
