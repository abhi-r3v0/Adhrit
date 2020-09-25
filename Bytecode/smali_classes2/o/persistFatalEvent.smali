.class public final Lo/persistFatalEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/persistFatalEvent$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/util/Map$Entry<",
        "Lo/ExecutorUtils$2;",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lo/persistFatalEvent;

.field private static final EMPTY_CHILDREN:Lo/populateFramesList;


# instance fields
.field private final children:Lo/populateFramesList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/populateFramesList<",
            "Lo/LogFileManager;",
            "Lo/persistFatalEvent<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-class v0, Lo/LogFileManager;

    .line 39
    invoke-static {v0}, Lo/DataCollectionArbiter;->getComparator(Ljava/lang/Class;)Lo/DataCollectionArbiter;

    move-result-object v0

    invoke-static {v0}, Lo/populateFramesList$onNavigationEvent;->emptyMap(Ljava/util/Comparator;)Lo/populateFramesList;

    move-result-object v0

    sput-object v0, Lo/persistFatalEvent;->EMPTY_CHILDREN:Lo/populateFramesList;

    .line 42
    new-instance v0, Lo/persistFatalEvent;

    sget-object v1, Lo/persistFatalEvent;->EMPTY_CHILDREN:Lo/populateFramesList;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;Lo/populateFramesList;)V

    sput-object v0, Lo/persistFatalEvent;->EMPTY:Lo/persistFatalEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    sget-object v0, Lo/persistFatalEvent;->EMPTY_CHILDREN:Lo/populateFramesList;

    invoke-direct {p0, p1, v0}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;Lo/populateFramesList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lo/populateFramesList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/populateFramesList<",
            "Lo/LogFileManager;",
            "Lo/persistFatalEvent<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    return-void
.end method

.method public static emptyInstance()Lo/persistFatalEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/persistFatalEvent<",
            "TV;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lo/persistFatalEvent;->EMPTY:Lo/persistFatalEvent;

    return-object v0
.end method

.method private fold(Lo/ExecutorUtils$2;Lo/persistFatalEvent$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/ExecutorUtils$2;",
            "Lo/persistFatalEvent$onNavigationEvent<",
            "-TT;TR;>;TR;)TR;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 273
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/persistFatalEvent;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager;

    invoke-virtual {p1, v1}, Lo/ExecutorUtils$2;->child(Lo/LogFileManager;)Lo/ExecutorUtils$2;

    move-result-object v1

    invoke-direct {v2, v1, p2, p3}, Lo/persistFatalEvent;->fold(Lo/ExecutorUtils$2;Lo/persistFatalEvent$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 276
    invoke-interface {p2, p1, v0, p3}, Lo/persistFatalEvent$onNavigationEvent;->onNodeValue(Lo/ExecutorUtils$2;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_1
    return-object p3
.end method


# virtual methods
.method public final containsMatchingValue(Lo/onReportSendComplete;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onReportSendComplete<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lo/onReportSendComplete;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 152
    :cond_0
    iget-object v0, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 153
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/persistFatalEvent;

    invoke-virtual {v2, p1}, Lo/persistFatalEvent;->containsMatchingValue(Lo/onReportSendComplete;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 336
    :cond_1
    check-cast p1, Lo/persistFatalEvent;

    .line 338
    iget-object v2, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 341
    :cond_3
    iget-object v2, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    iget-object p1, p1, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final findRootMostMatchingPath(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Lo/ExecutorUtils$2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/onReportSendComplete<",
            "-TT;>;)",
            "Lo/ExecutorUtils$2;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lo/onReportSendComplete;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 78
    :cond_1
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v2, v0}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/persistFatalEvent;

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v2, p1, p2}, Lo/persistFatalEvent;->findRootMostMatchingPath(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Lo/ExecutorUtils$2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 84
    new-instance p2, Lo/ExecutorUtils$2;

    const/4 v1, 0x1

    new-array v1, v1, [Lo/LogFileManager;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p2, v1}, Lo/ExecutorUtils$2;-><init>([Lo/LogFileManager;)V

    invoke-virtual {p2, p1}, Lo/ExecutorUtils$2;->child(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final findRootMostPathWithValue(Lo/ExecutorUtils$2;)Lo/ExecutorUtils$2;
    .locals 1

    .line 96
    sget-object v0, Lo/onReportSendComplete;->TRUE:Lo/onReportSendComplete;

    invoke-virtual {p0, p1, v0}, Lo/persistFatalEvent;->findRootMostMatchingPath(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Lo/ExecutorUtils$2;

    move-result-object p1

    return-object p1
.end method

.method public final fold(Ljava/lang/Object;Lo/persistFatalEvent$onNavigationEvent;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lo/persistFatalEvent$onNavigationEvent<",
            "-TT;TR;>;)TR;"
        }
    .end annotation

    .line 268
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lo/persistFatalEvent;->fold(Lo/ExecutorUtils$2;Lo/persistFatalEvent$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final foreach(Lo/persistFatalEvent$onNavigationEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/persistFatalEvent$onNavigationEvent<",
            "TT;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-static {}, Lo/ExecutorUtils$2;->getEmptyPath()Lo/ExecutorUtils$2;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lo/persistFatalEvent;->fold(Lo/ExecutorUtils$2;Lo/persistFatalEvent$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final get(Lo/ExecutorUtils$2;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")TT;"
        }
    .end annotation

    move-object v0, p0

    .line 230
    :goto_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object p1, v0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    return-object p1

    .line 233
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v1

    .line 234
    iget-object v0, v0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v0, v1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/persistFatalEvent;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getChild(Lo/LogFileManager;)Lo/persistFatalEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/LogFileManager;",
            ")",
            "Lo/persistFatalEvent<",
            "TT;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v0, p1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/persistFatalEvent;

    if-eqz p1, :cond_0

    return-object p1

    .line 166
    :cond_0
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object p1

    return-object p1
.end method

.method public final getChildren()Lo/populateFramesList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/populateFramesList<",
            "Lo/LogFileManager;",
            "Lo/persistFatalEvent<",
            "TT;>;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 350
    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 351
    iget-object v2, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v0}, Lo/populateFramesList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lo/ExecutorUtils$2;",
            "TT;>;>;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v1, Lo/persistFatalEvent$1;

    invoke-direct {v1, p0, v0}, Lo/persistFatalEvent$1;-><init>(Lo/persistFatalEvent;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lo/persistFatalEvent;->foreach(Lo/persistFatalEvent$onNavigationEvent;)V

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final leafMostValue(Lo/ExecutorUtils$2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")TT;"
        }
    .end annotation

    .line 121
    sget-object v0, Lo/onReportSendComplete;->TRUE:Lo/onReportSendComplete;

    invoke-virtual {p0, p1, v0}, Lo/persistFatalEvent;->leafMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final leafMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/onReportSendComplete<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lo/onReportSendComplete;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    :goto_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v1, p0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/LogFileManager;

    .line 136
    iget-object v1, v1, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v1, v2}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/persistFatalEvent;

    if-nez v1, :cond_2

    return-object v0

    .line 140
    :cond_2
    iget-object v2, v1, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    invoke-interface {p2, v2}, Lo/onReportSendComplete;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v0, v1, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final remove(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")",
            "Lo/persistFatalEvent<",
            "TT;>;"
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object p1, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {p1}, Lo/populateFramesList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 203
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object p1

    return-object p1

    .line 205
    :cond_0
    new-instance p1, Lo/persistFatalEvent;

    const/4 v0, 0x0

    iget-object v1, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-direct {p1, v0, v1}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;Lo/populateFramesList;)V

    return-object p1

    .line 208
    :cond_1
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v1, v0}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/persistFatalEvent;

    if-eqz v1, :cond_4

    .line 211
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v1, p1}, Lo/persistFatalEvent;->remove(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;

    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lo/persistFatalEvent;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget-object p1, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {p1, v0}, Lo/populateFramesList;->remove(Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    goto :goto_0

    .line 216
    :cond_2
    iget-object v1, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v1, v0, p1}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    .line 218
    :goto_0
    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lo/populateFramesList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object p1

    return-object p1

    .line 221
    :cond_3
    new-instance v0, Lo/persistFatalEvent;

    iget-object v1, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;Lo/populateFramesList;)V

    return-object v0

    :cond_4
    return-object p0
.end method

.method public final rootMostValue(Lo/ExecutorUtils$2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")TT;"
        }
    .end annotation

    .line 100
    sget-object v0, Lo/onReportSendComplete;->TRUE:Lo/onReportSendComplete;

    invoke-virtual {p0, p1, v0}, Lo/persistFatalEvent;->rootMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final rootMostValueMatching(Lo/ExecutorUtils$2;Lo/onReportSendComplete;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/onReportSendComplete<",
            "-TT;>;)TT;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-interface {p2, v0}, Lo/onReportSendComplete;->evaluate(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p1, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    return-object p1

    .line 108
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v0, p0

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LogFileManager;

    .line 109
    iget-object v0, v0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v0, v1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/persistFatalEvent;

    if-nez v0, :cond_2

    return-object v2

    .line 112
    :cond_2
    iget-object v1, v0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-interface {p2, v1}, Lo/onReportSendComplete;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object p1, v0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    return-object p1

    :cond_3
    return-object v2
.end method

.method public final set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "TT;)",
            "Lo/persistFatalEvent<",
            "TT;>;"
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    new-instance p1, Lo/persistFatalEvent;

    iget-object v0, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-direct {p1, p2, v0}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;Lo/populateFramesList;)V

    return-object p1

    .line 188
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v1, v0}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/persistFatalEvent;

    if-nez v1, :cond_1

    .line 191
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v1

    .line 193
    :cond_1
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lo/persistFatalEvent;->set(Lo/ExecutorUtils$2;Ljava/lang/Object;)Lo/persistFatalEvent;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    .line 195
    invoke-virtual {p2, v0, p1}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    .line 196
    new-instance p2, Lo/persistFatalEvent;

    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;Lo/populateFramesList;)V

    return-object p2
.end method

.method public final setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            "Lo/persistFatalEvent<",
            "TT;>;)",
            "Lo/persistFatalEvent<",
            "TT;>;"
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 247
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v1, v0}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/persistFatalEvent;

    if-nez v1, :cond_1

    .line 250
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object v1

    .line 252
    :cond_1
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lo/persistFatalEvent;->setTree(Lo/ExecutorUtils$2;Lo/persistFatalEvent;)Lo/persistFatalEvent;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lo/persistFatalEvent;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 255
    iget-object p1, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {p1, v0}, Lo/populateFramesList;->remove(Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    goto :goto_0

    .line 257
    :cond_2
    iget-object p2, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {p2, v0, p1}, Lo/populateFramesList;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lo/populateFramesList;

    move-result-object p1

    .line 259
    :goto_0
    new-instance p2, Lo/persistFatalEvent;

    iget-object v0, p0, Lo/persistFatalEvent;->value:Ljava/lang/Object;

    invoke-direct {p2, v0, p1}, Lo/persistFatalEvent;-><init>(Ljava/lang/Object;Lo/populateFramesList;)V

    return-object p2
.end method

.method public final subtree(Lo/ExecutorUtils$2;)Lo/persistFatalEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ExecutorUtils$2;",
            ")",
            "Lo/persistFatalEvent<",
            "TT;>;"
        }
    .end annotation

    move-object v0, p0

    .line 171
    :goto_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->getFront()Lo/LogFileManager;

    move-result-object v1

    .line 175
    iget-object v0, v0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v0, v1}, Lo/populateFramesList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/persistFatalEvent;

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Lo/ExecutorUtils$2;->popFront()Lo/ExecutorUtils$2;

    move-result-object p1

    goto :goto_0

    .line 179
    :cond_1
    invoke-static {}, Lo/persistFatalEvent;->emptyInstance()Lo/persistFatalEvent;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImmutableTree { value="

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Lo/persistFatalEvent;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children={"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lo/persistFatalEvent;->children:Lo/populateFramesList;

    invoke-virtual {v1}, Lo/populateFramesList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/LogFileManager;

    invoke-virtual {v3}, Lo/LogFileManager;->asString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 320
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "} }"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    new-instance v1, Lo/persistFatalEvent$5;

    invoke-direct {v1, p0, v0}, Lo/persistFatalEvent$5;-><init>(Lo/persistFatalEvent;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lo/persistFatalEvent;->foreach(Lo/persistFatalEvent$onNavigationEvent;)V

    return-object v0
.end method
