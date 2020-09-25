.class public final Lo/getIndexedNode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/convertInteger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getIndexedNode$onPostMessage;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/isCompleteForChild;

.field private ICustomTabsCallback$Stub:Lo/resolveType;

.field final extraCallback:Lo/getLimit;

.field final onMessageChannelReady:Lo/getIndexedFilter;

.field final onNavigationEvent:Z

.field final onPostMessage:Lo/propertyName;

.field private onRelationshipValidationResult:Z


# direct methods
.method private constructor <init>(Lo/propertyName;Lo/isCompleteForChild;Z)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 61
    iput-object p2, p0, Lo/getIndexedNode;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 62
    iput-boolean p3, p0, Lo/getIndexedNode;->onNavigationEvent:Z

    .line 63
    new-instance p2, Lo/getLimit;

    invoke-direct {p2, p1}, Lo/getLimit;-><init>(Lo/propertyName;)V

    iput-object p2, p0, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    .line 64
    new-instance p2, Lo/getIndexedNode$2;

    invoke-direct {p2, p0}, Lo/getIndexedNode$2;-><init>(Lo/getIndexedNode;)V

    iput-object p2, p0, Lo/getIndexedNode;->onMessageChannelReady:Lo/getIndexedFilter;

    .line 2302
    iget p1, p1, Lo/propertyName;->INotificationSideChannel:I

    int-to-long v0, p1

    .line 69
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, p1}, Lo/logsDebug;->onNavigationEvent(JLjava/util/concurrent/TimeUnit;)Lo/logsDebug;

    return-void
.end method

.method public static extraCallback(Lo/propertyName;Lo/isCompleteForChild;Z)Lo/getIndexedNode;
    .locals 1

    .line 74
    new-instance p2, Lo/getIndexedNode;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lo/getIndexedNode;-><init>(Lo/propertyName;Lo/isCompleteForChild;Z)V

    .line 2420
    iget-object p0, p0, Lo/propertyName;->asInterface:Lo/resolveType$ICustomTabsCallback;

    .line 75
    invoke-interface {p0}, Lo/resolveType$ICustomTabsCallback;->extraCallback()Lo/resolveType;

    move-result-object p0

    iput-object p0, p2, Lo/getIndexedNode;->ICustomTabsCallback$Stub:Lo/resolveType;

    return-object p2
.end method

.method static synthetic extraCallback(Lo/getIndexedNode;)Lo/resolveType;
    .locals 0

    .line 41
    iget-object p0, p0, Lo/getIndexedNode;->ICustomTabsCallback$Stub:Lo/resolveType;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/isCompleteForChild;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/getIndexedNode;->ICustomTabsCallback:Lo/isCompleteForChild;

    return-object v0
.end method

.method final ICustomTabsCallback$Stub()Lo/childAddedChange;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    iget-object v0, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 16407
    iget-object v0, v0, Lo/propertyName;->onRelationshipValidationResult:Ljava/util/List;

    .line 243
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v0, p0, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v0, Lo/getIndexStartValue;

    iget-object v2, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 17334
    iget-object v2, v2, Lo/propertyName;->ICustomTabsService:Lo/addProperty;

    .line 245
    invoke-direct {v0, v2}, Lo/getIndexStartValue;-><init>(Lo/addProperty;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v0, Lo/getPreviousName;

    iget-object v2, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 17342
    iget-object v3, v2, Lo/propertyName;->newSession:Lo/deserializeToClass;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lo/propertyName;->newSession:Lo/deserializeToClass;

    iget-object v2, v2, Lo/deserializeToClass;->onMessageChannelReady:Lo/changeComparator;

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lo/propertyName;->ICustomTabsCallback$Stub$Proxy:Lo/changeComparator;

    .line 246
    :goto_0
    invoke-direct {v0, v2}, Lo/getPreviousName;-><init>(Lo/changeComparator;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v0, Lo/hasStart;

    iget-object v2, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    invoke-direct {v0, v2}, Lo/hasStart;-><init>(Lo/propertyName;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-boolean v0, p0, Lo/getIndexedNode;->onNavigationEvent:Z

    if-nez v0, :cond_1

    .line 249
    iget-object v0, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 17416
    iget-object v0, v0, Lo/propertyName;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 249
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    :cond_1
    new-instance v0, Lo/getIndexEndName;

    iget-boolean v2, p0, Lo/getIndexedNode;->onNavigationEvent:Z

    invoke-direct {v0, v2}, Lo/getIndexEndName;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v12, Lo/isViewFromLeft;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lo/getIndexedNode;->ICustomTabsCallback:Lo/isCompleteForChild;

    iget-object v8, p0, Lo/getIndexedNode;->ICustomTabsCallback$Stub:Lo/resolveType;

    iget-object v0, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 18307
    iget v9, v0, Lo/propertyName;->cancel:I

    .line 254
    iget-object v0, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 18312
    iget v10, v0, Lo/propertyName;->cancelAll:I

    .line 255
    iget-object v0, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 18317
    iget v11, v0, Lo/propertyName;->notify:I

    move-object v0, v12

    move-object v7, p0

    .line 255
    invoke-direct/range {v0 .. v11}, Lo/isViewFromLeft;-><init>(Ljava/util/List;Lo/getIndexEndValue;Lo/getIndexStartName;Lo/raiseEvents;ILo/isCompleteForChild;Lo/convertInteger;Lo/resolveType;III)V

    .line 257
    iget-object v0, p0, Lo/getIndexedNode;->ICustomTabsCallback:Lo/isCompleteForChild;

    invoke-interface {v12, v0}, Lo/annotatedName$onNavigationEvent;->onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    .line 19095
    iget-boolean v1, v1, Lo/getLimit;->ICustomTabsCallback:Z

    if-nez v1, :cond_2

    return-object v0

    .line 259
    :cond_2
    invoke-static {v0}, Lo/generateEventsForType;->onNavigationEvent(Ljava/io/Closeable;)V

    .line 260
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 19148
    iget-object v0, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    iget-object v1, p0, Lo/getIndexedNode;->ICustomTabsCallback:Lo/isCompleteForChild;

    iget-boolean v2, p0, Lo/getIndexedNode;->onNavigationEvent:Z

    .line 20074
    new-instance v3, Lo/getIndexedNode;

    invoke-direct {v3, v0, v1, v2}, Lo/getIndexedNode;-><init>(Lo/propertyName;Lo/isCompleteForChild;Z)V

    .line 20420
    iget-object v0, v0, Lo/propertyName;->asInterface:Lo/resolveType$ICustomTabsCallback;

    .line 20075
    invoke-interface {v0}, Lo/resolveType$ICustomTabsCallback;->extraCallback()Lo/resolveType;

    move-result-object v0

    iput-object v0, v3, Lo/getIndexedNode;->ICustomTabsCallback$Stub:Lo/resolveType;

    return-object v3
.end method

.method public final extraCallback()V
    .locals 2

    .line 131
    iget-object v0, p0, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    const/4 v1, 0x1

    .line 12089
    iput-boolean v1, v0, Lo/getLimit;->ICustomTabsCallback:Z

    .line 12090
    iget-object v0, v0, Lo/getLimit;->extraCallback:Lo/getIndexEndValue;

    if-eqz v0, :cond_0

    .line 12091
    invoke-virtual {v0}, Lo/getIndexEndValue;->onPostMessage()V

    :cond_0
    return-void
.end method

.method final onMessageChannelReady(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 3

    .line 106
    iget-object v0, p0, Lo/getIndexedNode;->onMessageChannelReady:Lo/getIndexedFilter;

    .line 8120
    iget-boolean v1, v0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 8121
    :cond_0
    iput-boolean v2, v0, Lo/getIndexedFilter;->onMessageChannelReady:Z

    .line 8122
    invoke-static {v0}, Lo/getIndexedFilter;->onNavigationEvent(Lo/getIndexedFilter;)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    return-object p1

    .line 108
    :cond_1
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_2
    return-object v0
.end method

.method final onMessageChannelReady()Ljava/lang/String;
    .locals 11

    .line 237
    iget-object v0, p0, Lo/getIndexedNode;->ICustomTabsCallback:Lo/isCompleteForChild;

    .line 13049
    iget-object v0, v0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    const-string v1, "/..."

    .line 13855
    invoke-virtual {v0, v1}, Lo/isFullyInitialized;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object v0

    const-string v1, ""

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 14758
    invoke-static/range {v1 .. v9}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 13996
    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    const-string v2, ""

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 15758
    invoke-static/range {v2 .. v10}, Lo/isFullyInitialized;->onNavigationEvent(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 15009
    iput-object v1, v0, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 13858
    invoke-virtual {v0}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback()Lo/isFullyInitialized;

    move-result-object v0

    .line 13859
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/convertDouble;)V
    .locals 2

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-boolean v0, p0, Lo/getIndexedNode;->onRelationshipValidationResult:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lo/getIndexedNode;->onRelationshipValidationResult:Z

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9116
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lo/getChildAfterChild;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 9117
    iget-object v1, p0, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    .line 10099
    iput-object v0, v1, Lo/getLimit;->onNavigationEvent:Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 10390
    iget-object v0, v0, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 127
    new-instance v1, Lo/getIndexedNode$onPostMessage;

    invoke-direct {v1, p0, p1}, Lo/getIndexedNode$onPostMessage;-><init>(Lo/getIndexedNode;Lo/convertDouble;)V

    .line 11134
    monitor-enter v0

    .line 11135
    :try_start_1
    iget-object p1, v0, Lo/convertBean;->extraCallback:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 11136
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11137
    invoke-virtual {v0}, Lo/convertBean;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception p1

    .line 11136
    monitor-exit v0

    throw p1

    .line 122
    :cond_0
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 124
    monitor-exit p0

    throw p1
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    .line 12095
    iget-boolean v0, v0, Lo/getLimit;->ICustomTabsCallback:Z

    return v0
.end method

.method public final onPostMessage()Lo/childAddedChange;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lo/getIndexedNode;->onRelationshipValidationResult:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lo/getIndexedNode;->onRelationshipValidationResult:Z

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3116
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lo/getChildAfterChild;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3117
    iget-object v1, p0, Lo/getIndexedNode;->extraCallback:Lo/getLimit;

    .line 4099
    iput-object v0, v1, Lo/getLimit;->onNavigationEvent:Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lo/getIndexedNode;->onMessageChannelReady:Lo/getIndexedFilter;

    invoke-virtual {v0}, Lo/getIndexedFilter;->onMessageChannelReady()V

    .line 92
    :try_start_1
    iget-object v0, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 4390
    iget-object v0, v0, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 92
    invoke-virtual {v0, p0}, Lo/convertBean;->onNavigationEvent(Lo/getIndexedNode;)V

    .line 93
    invoke-virtual {p0}, Lo/getIndexedNode;->ICustomTabsCallback$Stub()Lo/childAddedChange;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 101
    iget-object v1, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 5390
    iget-object v1, v1, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 6214
    iget-object v2, v1, Lo/convertBean;->onMessageChannelReady:Ljava/util/Deque;

    invoke-virtual {v1, v2, p0}, Lo/convertBean;->ICustomTabsCallback(Ljava/util/Deque;Ljava/lang/Object;)V

    return-object v0

    .line 94
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    :try_start_3
    invoke-virtual {p0, v0}, Lo/getIndexedNode;->onMessageChannelReady(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    .line 99
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    :goto_0
    iget-object v1, p0, Lo/getIndexedNode;->onPostMessage:Lo/propertyName;

    .line 6390
    iget-object v1, v1, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 7214
    iget-object v2, v1, Lo/convertBean;->onMessageChannelReady:Ljava/util/Deque;

    invoke-virtual {v1, v2, p0}, Lo/convertBean;->ICustomTabsCallback(Ljava/util/Deque;Ljava/lang/Object;)V

    .line 101
    throw v0

    .line 85
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 87
    monitor-exit p0

    throw v0
.end method
