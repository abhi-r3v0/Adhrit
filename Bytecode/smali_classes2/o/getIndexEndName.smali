.class public final Lo/getIndexEndName;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getIndexEndName$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean p1, p0, Lo/getIndexEndName;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    check-cast p1, Lo/isViewFromLeft;

    .line 1105
    iget-object v0, p1, Lo/isViewFromLeft;->extraCallback:Lo/getIndexStartName;

    .line 2101
    iget-object v1, p1, Lo/isViewFromLeft;->onPostMessage:Lo/getIndexEndValue;

    .line 3067
    iget-object v2, p1, Lo/isViewFromLeft;->ICustomTabsCallback:Lo/raiseEvents;

    .line 44
    check-cast v2, Lo/raiseEvents;

    .line 3117
    iget-object p1, p1, Lo/isViewFromLeft;->onNavigationEvent:Lo/isCompleteForChild;

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 50
    invoke-interface {v0, p1}, Lo/getIndexStartName;->onNavigationEvent(Lo/isCompleteForChild;)V

    .line 7053
    iget-object v5, p1, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    const-string v6, "GET"

    .line 8036
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez v6, :cond_0

    const-string v6, "HEAD"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 8069
    iget-object v5, p1, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    if-eqz v5, :cond_4

    .line 9061
    iget-object v5, p1, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 9063
    iget-object v5, v5, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v9, "Expect"

    invoke-static {v5, v9}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "100-continue"

    .line 58
    invoke-virtual {v9, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    invoke-interface {v0}, Lo/getIndexStartName;->ICustomTabsCallback()V

    .line 61
    invoke-interface {v0, v7}, Lo/getIndexStartName;->onNavigationEvent(Z)Lo/childAddedChange$ICustomTabsCallback;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    if-nez v5, :cond_2

    .line 12069
    iget-object v2, p1, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    .line 67
    invoke-virtual {v2}, Lo/isCompleteForPath;->extraCallback()J

    move-result-wide v9

    .line 68
    new-instance v2, Lo/getIndexEndName$ICustomTabsCallback;

    .line 69
    invoke-interface {v0, p1, v9, v10}, Lo/getIndexStartName;->onPostMessage(Lo/isCompleteForChild;J)Lo/exceptionStacktrace;

    move-result-object v9

    invoke-direct {v2, v9}, Lo/getIndexEndName$ICustomTabsCallback;-><init>(Lo/exceptionStacktrace;)V

    .line 70
    invoke-static {v2}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object v2

    .line 13069
    iget-object v9, p1, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    .line 72
    invoke-virtual {v9, v2}, Lo/isCompleteForPath;->onMessageChannelReady(Lo/filtersNodes;)V

    .line 73
    invoke-interface {v2}, Lo/filtersNodes;->close()V

    goto :goto_3

    .line 14607
    :cond_2
    iget-object v2, v2, Lo/raiseEvents;->onMessageChannelReady:Lo/normalizeValue;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_5

    .line 15367
    iget-object v2, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v2

    .line 15369
    :try_start_0
    invoke-virtual {v1, v7, v8, v8}, Lo/getIndexEndValue;->onNavigationEvent(ZZZ)Ljava/net/Socket;

    move-result-object v9

    .line 15371
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15372
    invoke-static {v9}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 15371
    monitor-exit v2

    throw p1

    :cond_4
    move-object v5, v6

    .line 84
    :cond_5
    :goto_3
    invoke-interface {v0}, Lo/getIndexStartName;->extraCallback()V

    if-nez v5, :cond_6

    .line 88
    invoke-interface {v0, v8}, Lo/getIndexStartName;->onNavigationEvent(Z)Lo/childAddedChange$ICustomTabsCallback;

    move-result-object v5

    .line 17337
    :cond_6
    iput-object p1, v5, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    .line 93
    invoke-virtual {v1}, Lo/getIndexEndValue;->onNavigationEvent()Lo/raiseEvents;

    move-result-object v2

    .line 17599
    iget-object v2, v2, Lo/raiseEvents;->ICustomTabsCallback:Lo/isSetterOverride;

    .line 18357
    iput-object v2, v5, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage:Lo/isSetterOverride;

    .line 18432
    iput-wide v3, v5, Lo/childAddedChange$ICustomTabsCallback;->getInterfaceDescriptor:J

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 18437
    iput-wide v9, v5, Lo/childAddedChange$ICustomTabsCallback;->newSession:J

    .line 96
    invoke-virtual {v5}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v2

    .line 19098
    iget v5, v2, Lo/childAddedChange;->onNavigationEvent:I

    const/16 v9, 0x64

    if-ne v5, v9, :cond_7

    .line 102
    invoke-interface {v0, v8}, Lo/getIndexStartName;->onNavigationEvent(Z)Lo/childAddedChange$ICustomTabsCallback;

    move-result-object v2

    .line 19337
    iput-object p1, v2, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    .line 106
    invoke-virtual {v1}, Lo/getIndexEndValue;->onNavigationEvent()Lo/raiseEvents;

    move-result-object p1

    .line 19599
    iget-object p1, p1, Lo/raiseEvents;->ICustomTabsCallback:Lo/isSetterOverride;

    .line 20357
    iput-object p1, v2, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage:Lo/isSetterOverride;

    .line 20432
    iput-wide v3, v2, Lo/childAddedChange$ICustomTabsCallback;->getInterfaceDescriptor:J

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 20437
    iput-wide v3, v2, Lo/childAddedChange$ICustomTabsCallback;->newSession:J

    .line 109
    invoke-virtual {v2}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object v2

    .line 21098
    iget v5, v2, Lo/childAddedChange;->onNavigationEvent:I

    .line 117
    :cond_7
    iget-boolean p1, p0, Lo/getIndexEndName;->ICustomTabsCallback:Z

    if-eqz p1, :cond_8

    const/16 p1, 0x65

    if-ne v5, p1, :cond_8

    .line 22181
    new-instance p1, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {p1, v2}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    .line 119
    sget-object v0, Lo/generateEventsForType;->extraCallback:Lo/getChildKey;

    .line 22391
    iput-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 121
    invoke-virtual {p1}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object p1

    goto :goto_4

    .line 23181
    :cond_8
    new-instance p1, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {p1, v2}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    .line 124
    invoke-interface {v0, v2}, Lo/getIndexStartName;->extraCallback(Lo/childAddedChange;)Lo/getChildKey;

    move-result-object v0

    .line 23391
    iput-object v0, p1, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 125
    invoke-virtual {p1}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object p1

    .line 24086
    :goto_4
    iget-object v0, p1, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 25061
    iget-object v0, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 25063
    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v2, "Connection"

    invoke-static {v0, v2}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "close"

    .line 128
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 25131
    iget-object v0, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 26063
    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v2, "Connection"

    invoke-static {v0, v2}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v6, v0

    :cond_9
    const-string v0, "close"

    .line 129
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26367
    :cond_a
    iget-object v0, v1, Lo/getIndexEndValue;->onPostMessage:Lo/deserialize;

    monitor-enter v0

    .line 26369
    :try_start_1
    invoke-virtual {v1, v7, v8, v8}, Lo/getIndexEndValue;->onNavigationEvent(ZZZ)Ljava/net/Socket;

    move-result-object v1

    .line 26371
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26372
    invoke-static {v1}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    :cond_b
    const/16 v0, 0xcc

    if-eq v5, v0, :cond_c

    const/16 v0, 0xcd

    if-ne v5, v0, :cond_d

    .line 27177
    :cond_c
    iget-object v0, p1, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 133
    invoke-virtual {v0}, Lo/getChildKey;->ICustomTabsCallback()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_e

    :cond_d
    return-object p1

    .line 134
    :cond_e
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28177
    iget-object p1, p1, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 135
    invoke-virtual {p1}, Lo/getChildKey;->ICustomTabsCallback()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception p1

    .line 26371
    monitor-exit v0

    throw p1
.end method
