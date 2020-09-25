.class public final Lo/getWireProtocolParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getIndexStartName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getWireProtocolParams$asInterface;,
        Lo/getWireProtocolParams$extraCallback;,
        Lo/getWireProtocolParams$onMessageChannelReady;,
        Lo/getWireProtocolParams$onPostMessage;,
        Lo/getWireProtocolParams$ICustomTabsCallback;,
        Lo/getWireProtocolParams$onNavigationEvent;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/filtersNodes;

.field private asBinder:J

.field final extraCallback:Lo/getIndexEndValue;

.field onMessageChannelReady:I

.field final onNavigationEvent:Lo/fullLimitUpdateChild;

.field final onPostMessage:Lo/propertyName;


# direct methods
.method public constructor <init>(Lo/propertyName;Lo/getIndexEndValue;Lo/fullLimitUpdateChild;Lo/filtersNodes;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    const-wide/32 v0, 0x40000

    .line 87
    iput-wide v0, p0, Lo/getWireProtocolParams;->asBinder:J

    .line 91
    iput-object p1, p0, Lo/getWireProtocolParams;->onPostMessage:Lo/propertyName;

    .line 92
    iput-object p2, p0, Lo/getWireProtocolParams;->extraCallback:Lo/getIndexEndValue;

    .line 93
    iput-object p3, p0, Lo/getWireProtocolParams;->onNavigationEvent:Lo/fullLimitUpdateChild;

    .line 94
    iput-object p4, p0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    return-void
.end method

.method static onNavigationEvent(Lo/buildLogMessage;)V
    .locals 2

    .line 13032
    iget-object v0, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    .line 269
    sget-object v1, Lo/logsDebug;->ICustomTabsCallback:Lo/logsDebug;

    if-eqz v1, :cond_0

    .line 13037
    iput-object v1, p0, Lo/buildLogMessage;->onPostMessage:Lo/logsDebug;

    .line 270
    invoke-virtual {v0}, Lo/logsDebug;->U_()Lo/logsDebug;

    .line 271
    invoke-virtual {v0}, Lo/logsDebug;->T_()Lo/logsDebug;

    return-void

    .line 13036
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V

    return-void
.end method

.method public final extraCallback(Lo/childAddedChange;)Lo/getChildKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7131
    iget-object v0, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 8063
    iget-object v0, v0, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v1, "Content-Type"

    invoke-static {v0, v1}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 137
    :goto_0
    invoke-static {p1}, Lo/hasAnchoredLimit;->extraCallback(Lo/childAddedChange;)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide/16 v1, 0x0

    .line 138
    invoke-virtual {p0, v1, v2}, Lo/getWireProtocolParams;->onNavigationEvent(J)Lo/toLog;

    move-result-object p1

    .line 139
    new-instance v3, Lo/hasLimit;

    invoke-static {p1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    invoke-direct {v3, v0, v1, v2, p1}, Lo/hasLimit;-><init>(Ljava/lang/String;JLo/fullLimitUpdateChild;)V

    return-object v3

    .line 8131
    :cond_1
    iget-object v2, p1, Lo/childAddedChange;->asBinder:Lo/shouldIncludeField;

    .line 9063
    iget-object v2, v2, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v3, "Transfer-Encoding"

    invoke-static {v2, v3}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v1, v2

    :cond_2
    const-string v2, "chunked"

    .line 142
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "state: "

    const/4 v3, 0x5

    const/4 v4, 0x4

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_4

    .line 9086
    iget-object p1, p1, Lo/childAddedChange;->onMessageChannelReady:Lo/isCompleteForChild;

    .line 10049
    iget-object p1, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 10249
    iget v1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    if-ne v1, v4, :cond_3

    .line 10250
    iput v3, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    .line 10251
    new-instance v1, Lo/getWireProtocolParams$extraCallback;

    invoke-direct {v1, p0, p1}, Lo/getWireProtocolParams$extraCallback;-><init>(Lo/getWireProtocolParams;Lo/isFullyInitialized;)V

    .line 144
    new-instance p1, Lo/hasLimit;

    invoke-static {v1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v1

    invoke-direct {p1, v0, v5, v6, v1}, Lo/hasLimit;-><init>(Ljava/lang/String;JLo/fullLimitUpdateChild;)V

    return-object p1

    .line 10249
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_4
    invoke-static {p1}, Lo/hasAnchoredLimit;->onPostMessage(Lo/childAddedChange;)J

    move-result-wide v7

    cmp-long p1, v7, v5

    if-eqz p1, :cond_5

    .line 149
    invoke-virtual {p0, v7, v8}, Lo/getWireProtocolParams;->onNavigationEvent(J)Lo/toLog;

    move-result-object p1

    .line 150
    new-instance v1, Lo/hasLimit;

    invoke-static {p1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object p1

    invoke-direct {v1, v0, v7, v8, p1}, Lo/hasLimit;-><init>(Ljava/lang/String;JLo/fullLimitUpdateChild;)V

    return-object v1

    .line 153
    :cond_5
    new-instance p1, Lo/hasLimit;

    .line 10255
    iget v1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    if-ne v1, v4, :cond_7

    .line 10256
    iget-object v1, p0, Lo/getWireProtocolParams;->extraCallback:Lo/getIndexEndValue;

    if-eqz v1, :cond_6

    .line 10257
    iput v3, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    .line 10258
    invoke-virtual {v1}, Lo/getIndexEndValue;->ICustomTabsCallback()V

    .line 10259
    new-instance v1, Lo/getWireProtocolParams$asInterface;

    invoke-direct {v1, p0}, Lo/getWireProtocolParams$asInterface;-><init>(Lo/getWireProtocolParams;)V

    .line 153
    invoke-static {v1}, Lo/warn;->ICustomTabsCallback(Lo/toLog;)Lo/fullLimitUpdateChild;

    move-result-object v1

    invoke-direct {p1, v0, v5, v6, v1}, Lo/hasLimit;-><init>(Ljava/lang/String;JLo/fullLimitUpdateChild;)V

    return-object p1

    .line 10256
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "streamAllocation == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10255
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCallback()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0}, Lo/filtersNodes;->flush()V

    return-void
.end method

.method public final onMessageChannelReady()Lo/shouldIncludeField;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v0}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 12215
    :goto_0
    iget-object v1, p0, Lo/getWireProtocolParams;->onNavigationEvent:Lo/fullLimitUpdateChild;

    iget-wide v2, p0, Lo/getWireProtocolParams;->asBinder:J

    invoke-interface {v1, v2, v3}, Lo/fullLimitUpdateChild;->onNavigationEvent(J)Ljava/lang/String;

    move-result-object v1

    .line 12216
    iget-wide v2, p0, Lo/getWireProtocolParams;->asBinder:J

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lo/getWireProtocolParams;->asBinder:J

    .line 224
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    sget-object v2, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    invoke-virtual {v2, v0, v1}, Lo/childChangedChange;->onNavigationEvent(Lo/shouldIncludeField$onMessageChannelReady;Ljava/lang/String;)V

    goto :goto_0

    .line 12401
    :cond_0
    new-instance v1, Lo/shouldIncludeField;

    invoke-direct {v1, v0}, Lo/shouldIncludeField;-><init>(Lo/shouldIncludeField$onMessageChannelReady;)V

    return-object v1
.end method

.method public final onMessageChannelReady(Lo/shouldIncludeField;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget v0, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {v0, p2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    const/4 p2, 0x0

    .line 11077
    iget-object v1, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    :goto_0
    const/4 v2, 0x1

    if-ge p2, v1, :cond_0

    .line 174
    iget-object v3, p0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    .line 11082
    iget-object v4, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    shl-int/lit8 v5, p2, 0x1

    aget-object v4, v4, v5

    .line 174
    invoke-interface {v3, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v3

    const-string v4, ": "

    .line 175
    invoke-interface {v3, v4}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v3

    .line 11087
    iget-object v4, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    add-int/2addr v5, v2

    aget-object v2, v4, v5

    .line 176
    invoke-interface {v3, v2}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    move-result-object v2

    .line 177
    invoke-interface {v2, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lo/getWireProtocolParams;->ICustomTabsCallback:Lo/filtersNodes;

    invoke-interface {p1, v0}, Lo/filtersNodes;->ICustomTabsCallback(Ljava/lang/String;)Lo/filtersNodes;

    .line 180
    iput v2, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    return-void

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Z)Lo/childAddedChange$ICustomTabsCallback;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget v0, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11215
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lo/getWireProtocolParams;->onNavigationEvent:Lo/fullLimitUpdateChild;

    iget-wide v2, p0, Lo/getWireProtocolParams;->asBinder:J

    invoke-interface {v0, v2, v3}, Lo/fullLimitUpdateChild;->onNavigationEvent(J)Ljava/lang/String;

    move-result-object v0

    .line 11216
    iget-wide v2, p0, Lo/getWireProtocolParams;->asBinder:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lo/getWireProtocolParams;->asBinder:J

    .line 189
    invoke-static {v0}, Lo/setSearchView$onPostMessage;->extraCallback(Ljava/lang/String;)Lo/setSearchView$onPostMessage;

    move-result-object v0

    .line 191
    new-instance v2, Lo/childAddedChange$ICustomTabsCallback;

    invoke-direct {v2}, Lo/childAddedChange$ICustomTabsCallback;-><init>()V

    iget-object v3, v0, Lo/setSearchView$onPostMessage;->extraCallback:Lo/valueChange;

    .line 11342
    iput-object v3, v2, Lo/childAddedChange$ICustomTabsCallback;->extraCallback:Lo/valueChange;

    .line 192
    iget v3, v0, Lo/setSearchView$onPostMessage;->onMessageChannelReady:I

    .line 11347
    iput v3, v2, Lo/childAddedChange$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 193
    iget-object v3, v0, Lo/setSearchView$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 11352
    iput-object v3, v2, Lo/childAddedChange$ICustomTabsCallback;->onMessageChannelReady:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lo/getWireProtocolParams;->onMessageChannelReady()Lo/shouldIncludeField;

    move-result-object v3

    .line 12131
    new-instance v4, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {v4}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 12132
    iget-object v5, v4, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v3, v3, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {v5, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 11386
    iput-object v4, v2, Lo/childAddedChange$ICustomTabsCallback;->asBinder:Lo/shouldIncludeField$onMessageChannelReady;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 197
    iget p1, v0, Lo/setSearchView$onPostMessage;->onMessageChannelReady:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 199
    :cond_2
    iget p1, v0, Lo/setSearchView$onPostMessage;->onMessageChannelReady:I

    if-ne p1, v3, :cond_3

    .line 200
    iput v1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    return-object v2

    :cond_3
    const/4 p1, 0x4

    .line 204
    iput p1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 208
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected end of stream on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/getWireProtocolParams;->extraCallback:Lo/getIndexEndValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v0
.end method

.method public final onNavigationEvent(J)Lo/toLog;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget v0, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 244
    iput v0, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    .line 245
    new-instance v0, Lo/getWireProtocolParams$onMessageChannelReady;

    invoke-direct {v0, p0, p1, p2}, Lo/getWireProtocolParams$onMessageChannelReady;-><init>(Lo/getWireProtocolParams;J)V

    return-object v0

    .line 243
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Lo/isCompleteForChild;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lo/getWireProtocolParams;->extraCallback:Lo/getIndexEndValue;

    .line 129
    invoke-virtual {v0}, Lo/getIndexEndValue;->onNavigationEvent()Lo/raiseEvents;

    move-result-object v0

    .line 2542
    iget-object v0, v0, Lo/raiseEvents;->onNavigationEvent:Lo/changeWithPrevName;

    .line 3068
    iget-object v0, v0, Lo/changeWithPrevName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 129
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 4033
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4053
    iget-object v2, p1, Lo/isCompleteForChild;->onNavigationEvent:Ljava/lang/String;

    .line 4034
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 4035
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5106
    iget-object v2, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 5397
    iget-object v2, v2, Lo/isFullyInitialized;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5052
    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6049
    iget-object v0, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 4038
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7049
    :cond_1
    iget-object v0, p1, Lo/isCompleteForChild;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 4040
    invoke-static {v0}, Lo/orderBy;->onMessageChannelReady(Lo/isFullyInitialized;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    .line 4043
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4044
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7057
    iget-object p1, p1, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 130
    invoke-virtual {p0, p1, v0}, Lo/getWireProtocolParams;->onMessageChannelReady(Lo/shouldIncludeField;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Lo/isCompleteForChild;J)Lo/exceptionStacktrace;
    .locals 5

    .line 1061
    iget-object p1, p1, Lo/isCompleteForChild;->onPostMessage:Lo/shouldIncludeField;

    .line 1063
    iget-object p1, p1, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    const-string v0, "Transfer-Encoding"

    invoke-static {p1, v0}, Lo/shouldIncludeField;->onPostMessage([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "state: "

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 1231
    iget p1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    if-ne p1, v2, :cond_0

    .line 1232
    iput v1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    .line 1233
    new-instance p1, Lo/getWireProtocolParams$ICustomTabsCallback;

    invoke-direct {p1, p0}, Lo/getWireProtocolParams$ICustomTabsCallback;-><init>(Lo/getWireProtocolParams;)V

    return-object p1

    .line 1231
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v3, -0x1

    cmp-long p1, p2, v3

    if-eqz p1, :cond_3

    .line 1237
    iget p1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    if-ne p1, v2, :cond_2

    .line 1238
    iput v1, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    .line 1239
    new-instance p1, Lo/getWireProtocolParams$onNavigationEvent;

    invoke-direct {p1, p0, p2, p3}, Lo/getWireProtocolParams$onNavigationEvent;-><init>(Lo/getWireProtocolParams;J)V

    return-object p1

    .line 1237
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()V
    .locals 1

    .line 113
    iget-object v0, p0, Lo/getWireProtocolParams;->extraCallback:Lo/getIndexEndValue;

    invoke-virtual {v0}, Lo/getIndexEndValue;->onNavigationEvent()Lo/raiseEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, v0, Lo/raiseEvents;->onPostMessage:Ljava/net/Socket;

    invoke-static {v0}, Lo/generateEventsForType;->extraCallback(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method
