.class public final Lo/getIndexStartValue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/annotatedName;


# instance fields
.field private final onPostMessage:Lo/addProperty;


# direct methods
.method public constructor <init>(Lo/addProperty;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lo/getIndexStartValue;->onPostMessage:Lo/addProperty;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/annotatedName$onNavigationEvent;)Lo/childAddedChange;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-interface {p1}, Lo/annotatedName$onNavigationEvent;->onNavigationEvent()Lo/isCompleteForChild;

    move-result-object v0

    .line 1093
    new-instance v1, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>(Lo/isCompleteForChild;)V

    .line 2069
    iget-object v2, v0, Lo/isCompleteForChild;->onMessageChannelReady:Lo/isCompleteForPath;

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {v2}, Lo/isCompleteForPath;->onPostMessage()Lo/isFiltered;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 55
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2184
    iget-object v8, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v8, v3, v7}, Lo/shouldIncludeField$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 58
    :cond_0
    invoke-virtual {v2}, Lo/isCompleteForPath;->extraCallback()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    .line 60
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 3184
    iget-object v8, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v8, v6, v7}, Lo/shouldIncludeField$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 3202
    iget-object v7, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v7, v2}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    goto :goto_0

    .line 4184
    :cond_1
    iget-object v7, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    const-string v8, "chunked"

    invoke-virtual {v7, v2, v8}, Lo/shouldIncludeField$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 4202
    iget-object v2, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v2, v6}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 5061
    :cond_2
    :goto_0
    iget-object v2, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 5063
    iget-object v2, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v7, "Host"

    invoke-static {v2, v7}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    if-nez v2, :cond_3

    .line 6049
    iget-object v2, v0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 69
    invoke-static {v2, v8}, Lo/generateEventsForType;->onMessageChannelReady(Lo/isFullyInitialized;Z)Ljava/lang/String;

    move-result-object v2

    .line 6184
    iget-object v9, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v9, v7, v2}, Lo/shouldIncludeField$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 7061
    :cond_3
    iget-object v2, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 7063
    iget-object v2, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v7, "Connection"

    invoke-static {v2, v7}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 7184
    iget-object v2, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    const-string v9, "Keep-Alive"

    invoke-virtual {v2, v7, v9}, Lo/shouldIncludeField$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 8061
    :cond_4
    iget-object v2, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 8063
    iget-object v2, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v7, "Accept-Encoding"

    invoke-static {v2, v7}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "gzip"

    if-nez v2, :cond_5

    .line 9061
    iget-object v2, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 9063
    iget-object v2, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v10, "Range"

    invoke-static {v2, v10}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 9184
    iget-object v2, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v2, v7, v9}, Lo/shouldIncludeField$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 84
    :goto_1
    iget-object v7, p0, Lo/getIndexStartValue;->onPostMessage:Lo/addProperty;

    invoke-interface {v7}, Lo/addProperty;->onMessageChannelReady()Ljava/util/List;

    move-result-object v7

    .line 85
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 10118
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 10119
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    :goto_2
    if-ge v8, v11, :cond_7

    if-lez v8, :cond_6

    const-string v12, "; "

    .line 10121
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10123
    :cond_6
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/convertBoolean;

    .line 11098
    iget-object v13, v12, Lo/convertBoolean;->ICustomTabsCallback:Ljava/lang/String;

    .line 10124
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11103
    iget-object v12, v12, Lo/convertBoolean;->onMessageChannelReady:Ljava/lang/String;

    .line 10124
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 10126
    :cond_7
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Cookie"

    .line 86
    invoke-virtual {v1, v8, v7}, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    .line 12061
    :cond_8
    iget-object v7, v0, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 12063
    iget-object v7, v7, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v8, "User-Agent"

    invoke-static {v7, v8}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    const-string v7, "okhttp/3.12.6"

    .line 90
    invoke-virtual {v1, v8, v7}, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/isCompleteForChild$ICustomTabsCallback;

    .line 13292
    :cond_9
    iget-object v7, v1, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v7, :cond_d

    .line 13293
    new-instance v7, Lo/isCompleteForChild;

    invoke-direct {v7, v1}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    .line 93
    invoke-interface {p1, v7}, Lo/annotatedName$onNavigationEvent;->onPostMessage(Lo/isCompleteForChild;)Lo/childAddedChange;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lo/getIndexStartValue;->onPostMessage:Lo/addProperty;

    .line 14049
    iget-object v7, v0, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 14136
    iget-object v8, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 95
    invoke-static {v1, v7, v8}, Lo/hasAnchoredLimit;->onNavigationEvent(Lo/addProperty;Lo/isFullyInitialized;Lo/shouldIncludeField;)V

    .line 14181
    new-instance v1, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v1, p1}, Lo/childAddedChange$ICustomTabsCallback;-><init>(Lo/childAddedChange;)V

    .line 14337
    iput-object v0, v1, Lo/childAddedChange$ICustomTabsCallback;->onNavigationEvent:Lo/isCompleteForChild;

    if-eqz v2, :cond_c

    .line 15131
    iget-object v0, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 16063
    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v2, "Content-Encoding"

    invoke-static {v0, v2}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    move-object v0, v7

    .line 101
    :goto_3
    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 102
    invoke-static {p1}, Lo/hasAnchoredLimit;->extraCallback(Lo/childAddedChange;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 103
    new-instance v0, Lo/computeStringSizeNoTag$onPostMessage;

    .line 16177
    iget-object v8, p1, Lo/childAddedChange;->onRelationshipValidationResult:Lo/getChildKey;

    .line 103
    invoke-virtual {v8}, Lo/getChildKey;->onMessageChannelReady()Lo/fullLimitUpdateChild;

    move-result-object v8

    invoke-direct {v0, v8}, Lo/computeStringSizeNoTag$onPostMessage;-><init>(Lo/toLog;)V

    .line 17136
    iget-object v8, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 18131
    new-instance v9, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v9}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 18132
    iget-object v10, v9, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v8, v8, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v10, v8}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {v9, v2}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    move-result-object v2

    .line 106
    invoke-virtual {v2, v6}, Lo/shouldIncludeField$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    move-result-object v2

    .line 18401
    new-instance v6, Lo/shouldIncludeField;

    invoke-direct {v6, v2}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    .line 20131
    new-instance v2, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v2}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 20132
    iget-object v8, v2, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v6, v6, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v8, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 19386
    iput-object v2, v1, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    .line 21131
    iget-object p1, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 22063
    iget-object p1, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {p1, v3}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    move-object v7, p1

    .line 110
    :cond_b
    new-instance p1, Lo/hasLimit;

    invoke-static {v0}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v0

    invoke-direct {p1, v7, v4, v5, v0}, Lo/hasLimit;-><init>(Ljava/lang/String;JLo/fullLimitUpdateChild;)V

    .line 22391
    iput-object p1, v1, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/getChildKey;

    .line 113
    :cond_c
    invoke-virtual {v1}, Lo/childAddedChange$ICustomTabsCallback;->onPostMessage()Lo/childAddedChange;

    move-result-object p1

    return-object p1

    .line 13292
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
