.class final Lo/compareLongDoubleNodes;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/fromQueryDefinition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/compareLongDoubleNodes$onNavigationEvent;,
        Lo/compareLongDoubleNodes$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/fromQueryDefinition<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile ICustomTabsCallback:Z

.field private ICustomTabsCallback$Stub:Z

.field private extraCallback:Ljava/lang/Throwable;

.field private onMessageChannelReady:Lo/convertInteger;

.field private final onNavigationEvent:[Ljava/lang/Object;

.field private final onPostMessage:Lo/leafCompare;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/leafCompare<",
            "TT;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/leafCompare;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/leafCompare<",
            "TT;*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/compareLongDoubleNodes;->onPostMessage:Lo/leafCompare;

    .line 46
    iput-object p2, p0, Lo/compareLongDoubleNodes;->onNavigationEvent:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Lo/fromQueryDefinition;
    .locals 3

    .line 5051
    new-instance v0, Lo/compareLongDoubleNodes;

    iget-object v1, p0, Lo/compareLongDoubleNodes;->onPostMessage:Lo/leafCompare;

    iget-object v2, p0, Lo/compareLongDoubleNodes;->onNavigationEvent:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lo/compareLongDoubleNodes;-><init>(Lo/leafCompare;[Ljava/lang/Object;)V

    return-object v0
.end method

.method final ICustomTabsCallback(Lo/childAddedChange;)Lo/getMinNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/childAddedChange;",
            ")",
            "Lo/getMinNode<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2177
    iget-object v0, p1, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 2181
    new-instance v1, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v1, p1}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    .line 196
    new-instance p1, Lo/compareLongDoubleNodes$onMessageChannelReady;

    .line 197
    invoke-virtual {v0}, Lo/getChildKey;->onNavigationEvent()Lo/isFiltered;

    move-result-object v2

    invoke-virtual {v0}, Lo/getChildKey;->ICustomTabsCallback()J

    move-result-wide v3

    invoke-direct {p1, v2, v3, v4}, Lo/compareLongDoubleNodes$onMessageChannelReady;-><init>(Lo/isFiltered;J)V

    .line 2391
    iput-object p1, v1, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 198
    invoke-virtual {v1}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object p1

    .line 3098
    iget v1, p1, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_4

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0xcc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xcd

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 216
    :cond_1
    new-instance v1, Lo/compareLongDoubleNodes$onNavigationEvent;

    invoke-direct {v1, v0}, Lo/compareLongDoubleNodes$onNavigationEvent;-><init>(Lo/getChildKey;)V

    .line 218
    :try_start_0
    iget-object v0, p0, Lo/compareLongDoubleNodes;->onPostMessage:Lo/leafCompare;

    .line 3119
    iget-object v0, v0, Lo/leafCompare;->onNavigationEvent:Lo/ensureIndexed;

    invoke-interface {v0, v1}, Lo/ensureIndexed;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 219
    invoke-static {v0, p1}, Lo/getMinNode;->onNavigationEvent(Ljava/lang/Object;Lo/childAddedChange;)Lo/getMinNode;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3305
    iget-object v0, v1, Lo/compareLongDoubleNodes$onNavigationEvent;->ICustomTabsCallback:Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 3306
    iget-object p1, v1, Lo/compareLongDoubleNodes$onNavigationEvent;->ICustomTabsCallback:Ljava/io/IOException;

    throw p1

    .line 224
    :cond_2
    throw p1

    .line 212
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lo/getChildKey;->close()V

    const/4 v0, 0x0

    .line 213
    invoke-static {v0, p1}, Lo/getMinNode;->onNavigationEvent(Ljava/lang/Object;Lo/childAddedChange;)Lo/getMinNode;

    move-result-object p1

    return-object p1

    .line 204
    :cond_4
    :goto_1
    :try_start_1
    invoke-static {v0}, Lo/nameAndPriorityCompare;->extraCallback(Lo/getChildKey;)Lo/getChildKey;

    move-result-object v1

    .line 205
    invoke-static {v1, p1}, Lo/getMinNode;->ICustomTabsCallback(Lo/getChildKey;Lo/childAddedChange;)Lo/getMinNode;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    invoke-virtual {v0}, Lo/getChildKey;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lo/getChildKey;->close()V

    throw p1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4051
    new-instance v0, Lo/compareLongDoubleNodes;

    iget-object v1, p0, Lo/compareLongDoubleNodes;->onPostMessage:Lo/leafCompare;

    iget-object v2, p0, Lo/compareLongDoubleNodes;->onNavigationEvent:[Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lo/compareLongDoubleNodes;-><init>(Lo/leafCompare;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final extraCallback(Lo/hasIndex;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/hasIndex<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "callback == null"

    .line 78
    invoke-static {p1, v0}, Lo/nameAndPriorityCompare;->extraCallback(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-boolean v0, p0, Lo/compareLongDoubleNodes;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lo/compareLongDoubleNodes;->ICustomTabsCallback$Stub:Z

    .line 87
    iget-object v0, p0, Lo/compareLongDoubleNodes;->onMessageChannelReady:Lo/convertInteger;

    .line 88
    iget-object v1, p0, Lo/compareLongDoubleNodes;->extraCallback:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1184
    :try_start_1
    iget-object v2, p0, Lo/compareLongDoubleNodes;->onPostMessage:Lo/leafCompare;

    iget-object v3, p0, Lo/compareLongDoubleNodes;->onNavigationEvent:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lo/leafCompare;->onNavigationEvent([Ljava/lang/Object;)Lo/isCompleteForChild;

    move-result-object v2

    .line 1185
    iget-object v3, p0, Lo/compareLongDoubleNodes;->onPostMessage:Lo/leafCompare;

    iget-object v3, v3, Lo/leafCompare;->onPostMessage:Lo/convertInteger$ICustomTabsCallback;

    invoke-interface {v3, v2}, Lo/convertInteger$ICustomTabsCallback;->onNavigationEvent(Lo/isCompleteForChild;)Lo/convertInteger;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 91
    iput-object v2, p0, Lo/compareLongDoubleNodes;->onMessageChannelReady:Lo/convertInteger;

    move-object v0, v2

    goto :goto_0

    .line 1187
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Call.Factory returned null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 93
    :try_start_2
    iput-object v1, p0, Lo/compareLongDoubleNodes;->extraCallback:Ljava/lang/Throwable;

    .line 96
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 99
    invoke-interface {p1, p0, v1}, Lo/hasIndex;->ICustomTabsCallback(Lo/fromQueryDefinition;Ljava/lang/Throwable;)V

    return-void

    .line 103
    :cond_2
    iget-boolean v1, p0, Lo/compareLongDoubleNodes;->ICustomTabsCallback:Z

    if-eqz v1, :cond_3

    .line 104
    invoke-interface {v0}, Lo/convertInteger;->extraCallback()V

    .line 107
    :cond_3
    new-instance v1, Lo/compareLongDoubleNodes$5;

    invoke-direct {v1, p0, p1}, Lo/compareLongDoubleNodes$5;-><init>(Lo/compareLongDoubleNodes;Lo/hasIndex;)V

    invoke-static {v0, v1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->enqueue(Lo/convertInteger;Lo/convertDouble;)V

    return-void

    .line 84
    :cond_4
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already executed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 96
    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lo/compareLongDoubleNodes;->ICustomTabsCallback:Z

    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v0, p0, Lo/compareLongDoubleNodes;->onMessageChannelReady:Lo/convertInteger;

    .line 234
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lo/convertInteger;->extraCallback()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 234
    monitor-exit p0

    throw v0
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 241
    iget-boolean v0, p0, Lo/compareLongDoubleNodes;->ICustomTabsCallback:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 244
    :cond_0
    monitor-enter p0

    .line 245
    :try_start_0
    iget-object v0, p0, Lo/compareLongDoubleNodes;->onMessageChannelReady:Lo/convertInteger;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/compareLongDoubleNodes;->onMessageChannelReady:Lo/convertInteger;

    invoke-interface {v0}, Lo/convertInteger;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    .line 246
    monitor-exit p0

    throw v0
.end method
