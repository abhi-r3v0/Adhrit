.class final Lo/sendSensitive$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getOptInclusiveEnd$onPostMessage;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendSensitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getOptInclusiveEnd;

.field private extraCallback:Z

.field private synthetic onNavigationEvent:Lo/sendSensitive;

.field private final onPostMessage:Lo/isIdle;


# direct methods
.method constructor <init>(Lo/sendSensitive;Lo/getOptInclusiveEnd;)V
    .locals 3

    .line 1085
    new-instance v0, Lo/isIdle;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v2, Lo/sendSensitive;

    invoke-direct {v0, v1, v2}, Lo/isIdle;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    invoke-direct {p0, p1, p2, v0}, Lo/sendSensitive$onMessageChannelReady;-><init>(Lo/sendSensitive;Lo/getOptInclusiveEnd;Lo/isIdle;)V

    return-void
.end method

.method constructor <init>(Lo/sendSensitive;Lo/getOptInclusiveEnd;Lo/isIdle;)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 1082
    iput-boolean p1, p0, Lo/sendSensitive$onMessageChannelReady;->extraCallback:Z

    .line 1090
    iput-object p2, p0, Lo/sendSensitive$onMessageChannelReady;->ICustomTabsCallback:Lo/getOptInclusiveEnd;

    .line 1091
    iput-object p3, p0, Lo/sendSensitive$onMessageChannelReady;->onPostMessage:Lo/isIdle;

    return-void
.end method

.method private static onMessageChannelReady(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1229
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1230
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getOptExclusiveStart;

    .line 1231
    iget-object v4, v3, Lo/getOptExclusiveStart;->asInterface:Lo/matches;

    invoke-virtual {v4}, Lo/matches;->onTransact()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    iget-object v3, v3, Lo/getOptExclusiveStart;->asBinder:Lo/matches;

    invoke-virtual {v3}, Lo/matches;->onTransact()I

    move-result v3

    add-int/2addr v4, v3

    int-to-long v3, v4

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    .line 1233
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(ILo/wasSent;)V
    .locals 9

    .line 1239
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onPostMessage:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    invoke-virtual {v0, v1, p1, p2}, Lo/isIdle;->extraCallback(Lo/isIdle$onPostMessage;ILo/wasSent;)V

    .line 1240
    invoke-static {p2}, Lo/sendSensitive;->extraCallback(Lo/wasSent;)Lo/emptyMap;

    move-result-object v0

    const-string v1, "Rst Stream"

    invoke-virtual {v0, v1}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v4

    .line 7492
    iget-object v0, v4, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 1242
    sget-object v1, Lo/emptyMap$onPostMessage;->extraCallback:Lo/emptyMap$onPostMessage;

    if-eq v0, v1, :cond_1

    .line 8492
    iget-object v0, v4, Lo/emptyMap;->ICustomTabsService:Lo/emptyMap$onPostMessage;

    .line 1242
    sget-object v1, Lo/emptyMap$onPostMessage;->onPostMessage:Lo/emptyMap$onPostMessage;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 1243
    :goto_1
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1244
    :try_start_0
    iget-object v1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->mayLaunchUrl(Lo/sendSensitive;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/nextRequestNumber;

    if-eqz v1, :cond_3

    .line 1246
    invoke-static {}, Lo/freeze;->onPostMessage()V

    .line 1248
    iget-object v2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    .line 1250
    sget-object v1, Lo/wasSent;->asInterface:Lo/wasSent;

    if-ne p2, v1, :cond_2

    sget-object p2, Lo/rotateRight$extraCallback;->onMessageChannelReady:Lo/rotateRight$extraCallback;

    goto :goto_2

    :cond_2
    sget-object p2, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    :goto_2
    move-object v5, p2

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    .line 1248
    invoke-virtual/range {v2 .. v8}, Lo/sendSensitive;->onPostMessage(ILo/emptyMap;Lo/rotateRight$extraCallback;ZLo/wasSent;Lo/getPredecessorKey;)V

    .line 1253
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final ICustomTabsCallback(ZILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)V"
        }
    .end annotation

    .line 1183
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onPostMessage:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    .line 5070
    iget-object v2, v0, Lo/isIdle;->onPostMessage:Ljava/util/logging/Logger;

    iget-object v3, v0, Lo/isIdle;->extraCallback:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4091
    iget-object v2, v0, Lo/isIdle;->onPostMessage:Ljava/util/logging/Logger;

    iget-object v0, v0, Lo/isIdle;->extraCallback:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " HEADERS: streamId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " headers="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " endStream="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1186
    iget-object v1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->updateVisuals(Lo/sendSensitive;)I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    .line 1187
    invoke-static {p3}, Lo/sendSensitive$onMessageChannelReady;->onMessageChannelReady(Ljava/util/List;)I

    move-result v1

    .line 1188
    iget-object v2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v2}, Lo/sendSensitive;->updateVisuals(Lo/sendSensitive;)I

    move-result v2

    if-le v1, v2, :cond_2

    .line 1189
    sget-object v0, Lo/emptyMap;->onRelationshipValidationResult:Lo/emptyMap;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    if-eqz p1, :cond_1

    const-string v5, "trailer"

    goto :goto_0

    :cond_1
    const-string v5, "header"

    :goto_0
    aput-object v5, v2, v4

    .line 1192
    iget-object v5, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    .line 1193
    invoke-static {v5}, Lo/sendSensitive;->updateVisuals(Lo/sendSensitive;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v5, 0x2

    .line 1194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    const-string v1, "Response %s metadata larger than %d: %d"

    .line 1190
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1189
    invoke-virtual {v0, v1}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v0

    .line 1197
    :cond_2
    iget-object v1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1198
    :try_start_0
    iget-object v2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v2}, Lo/sendSensitive;->mayLaunchUrl(Lo/sendSensitive;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/nextRequestNumber;

    if-nez v2, :cond_3

    .line 1200
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-virtual {p1, p2}, Lo/sendSensitive;->onNavigationEvent(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1201
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->warmup(Lo/sendSensitive;)Lo/sendListen;

    move-result-object p1

    sget-object p3, Lo/wasSent;->ICustomTabsCallback:Lo/wasSent;

    invoke-virtual {p1, p2, p3}, Lo/sendListen;->extraCallback(ILo/wasSent;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 1207
    invoke-static {}, Lo/freeze;->onPostMessage()V

    .line 6108
    iget-object v0, v2, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    .line 1211
    invoke-virtual {v0, p3, p1}, Lo/nextRequestNumber$onNavigationEvent;->extraCallback(Ljava/util/List;Z)V

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    .line 1214
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->warmup(Lo/sendSensitive;)Lo/sendListen;

    move-result-object p1

    sget-object p3, Lo/wasSent;->onRelationshipValidationResult:Lo/wasSent;

    invoke-virtual {p1, p2, p3}, Lo/sendListen;->extraCallback(ILo/wasSent;)V

    .line 7108
    :cond_5
    iget-object p1, v2, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    .line 1216
    new-instance p3, Lo/getPredecessorKey;

    invoke-direct {p3}, Lo/getPredecessorKey;-><init>()V

    invoke-virtual {p1, v0, v4, p3}, Lo/getMaxEntry$onPostMessage;->onMessageChannelReady(Lo/emptyMap;ZLo/getPredecessorKey;)V

    :goto_1
    const/4 v3, 0x0

    .line 1219
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_7

    .line 1222
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    sget-object p3, Lo/wasSent;->extraCallback:Lo/wasSent;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Received header for unknown stream: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;Lo/wasSent;Ljava/lang/String;)V

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    .line 1219
    monitor-exit v1

    throw p1
.end method

.method public final extraCallback(Lo/orderBy;)V
    .locals 11

    .line 1258
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onPostMessage:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    invoke-virtual {v0, v1, p1}, Lo/isIdle;->ICustomTabsCallback(Lo/isIdle$onPostMessage;Lo/orderBy;)V

    .line 1260
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10117
    :try_start_0
    iget v1, p1, Lo/orderBy;->onPostMessage:I

    and-int/lit8 v1, v1, 0x10

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 11122
    iget-object v4, p1, Lo/orderBy;->onNavigationEvent:[I

    aget v1, v4, v1

    .line 1264
    iget-object v4, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v4, v1}, Lo/sendSensitive;->ICustomTabsCallback(Lo/sendSensitive;I)I

    .line 12117
    :cond_1
    iget v1, p1, Lo/orderBy;->onPostMessage:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 13122
    iget-object v4, p1, Lo/orderBy;->onNavigationEvent:[I

    aget v1, v4, v1

    .line 1270
    iget-object v4, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v4}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;)Lo/access$1308;

    move-result-object v4

    if-ltz v1, :cond_5

    .line 14063
    iget v5, v4, Lo/access$1308;->onNavigationEvent:I

    sub-int v5, v1, v5

    .line 14064
    iput v1, v4, Lo/access$1308;->onNavigationEvent:I

    .line 14065
    iget-object v1, v4, Lo/access$1308;->ICustomTabsCallback:Lo/sendSensitive;

    invoke-virtual {v1}, Lo/sendSensitive;->onPostMessage()[Lo/nextRequestNumber;

    move-result-object v1

    array-length v6, v1

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_4

    aget-object v8, v1, v7

    .line 14441
    iget-object v9, v8, Lo/nextRequestNumber;->extraCallback:Ljava/lang/Object;

    .line 14066
    check-cast v9, Lo/access$1308$extraCallback;

    if-nez v9, :cond_3

    .line 14069
    new-instance v9, Lo/access$1308$extraCallback;

    iget v10, v4, Lo/access$1308;->onNavigationEvent:I

    invoke-direct {v9, v4, v8, v10}, Lo/access$1308$extraCallback;-><init>(Lo/access$1308;Lo/nextRequestNumber;I)V

    .line 15437
    iput-object v9, v8, Lo/nextRequestNumber;->extraCallback:Ljava/lang/Object;

    goto :goto_3

    .line 14072
    :cond_3
    invoke-virtual {v9, v5}, Lo/access$1308$extraCallback;->onPostMessage(I)I

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    if-lez v5, :cond_6

    goto :goto_4

    .line 14060
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid initial window size: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 v2, 0x0

    .line 1272
    :goto_4
    iget-boolean v1, p0, Lo/sendSensitive$onMessageChannelReady;->extraCallback:Z

    if-eqz v1, :cond_7

    .line 1273
    iget-object v1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;)Lo/resume$extraCallback;

    move-result-object v1

    invoke-interface {v1}, Lo/resume$extraCallback;->extraCallback()V

    .line 1274
    iput-boolean v3, p0, Lo/sendSensitive$onMessageChannelReady;->extraCallback:Z

    .line 1280
    :cond_7
    iget-object v1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->warmup(Lo/sendSensitive;)Lo/sendListen;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/sendListen;->onPostMessage(Lo/orderBy;)V

    if-eqz v2, :cond_8

    .line 1284
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;)Lo/access$1308;

    move-result-object p1

    invoke-virtual {p1}, Lo/access$1308;->ICustomTabsCallback()V

    .line 1286
    :cond_8
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->onTransact(Lo/sendSensitive;)Z

    .line 1287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(ILo/wasSent;Lo/matches;)V
    .locals 5

    .line 1327
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onPostMessage:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    invoke-virtual {v0, v1, p1, p2, p3}, Lo/isIdle;->onMessageChannelReady(Lo/isIdle$onPostMessage;ILo/wasSent;Lo/matches;)V

    .line 1328
    sget-object v0, Lo/wasSent;->ICustomTabsCallback$Stub$Proxy:Lo/wasSent;

    if-ne p2, v0, :cond_0

    .line 1329
    invoke-virtual {p3}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    .line 1330
    invoke-static {}, Lo/sendSensitive;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v4, "%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const-string v1, "too_many_pings"

    .line 1332
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->ICustomTabsService$Stub$Proxy(Lo/sendSensitive;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1336
    :cond_0
    iget p2, p2, Lo/wasSent;->newSession:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Lo/getAuthTokenProvider$extraCallback;->onPostMessage(J)Lo/emptyMap;

    move-result-object p2

    const-string v0, "Received Goaway"

    .line 1337
    invoke-virtual {p2, v0}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p2

    .line 1338
    invoke-virtual {p3}, Lo/matches;->onTransact()I

    move-result v0

    if-lez v0, :cond_1

    .line 1340
    invoke-virtual {p3}, Lo/matches;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lo/emptyMap;->onPostMessage(Ljava/lang/String;)Lo/emptyMap;

    move-result-object p2

    .line 1342
    :cond_1
    iget-object p3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    const/4 v0, 0x0

    invoke-static {p3, p1, v0, p2}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;ILo/wasSent;Lo/emptyMap;)V

    return-void
.end method

.method public final onNavigationEvent(IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lo/getOptExclusiveStart;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1348
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onPostMessage:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    .line 18070
    iget-object v2, v0, Lo/isIdle;->onPostMessage:Ljava/util/logging/Logger;

    iget-object v3, v0, Lo/isIdle;->extraCallback:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17154
    iget-object v2, v0, Lo/isIdle;->onPostMessage:Ljava/util/logging/Logger;

    iget-object v0, v0, Lo/isIdle;->extraCallback:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PUSH_PROMISE: streamId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " promisedStreamId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " headers="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1351
    :cond_0
    iget-object p2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p2}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1352
    :try_start_0
    iget-object p3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p3}, Lo/sendSensitive;->warmup(Lo/sendSensitive;)Lo/sendListen;

    move-result-object p3

    sget-object v0, Lo/wasSent;->extraCallback:Lo/wasSent;

    invoke-virtual {p3, p1, v0}, Lo/sendListen;->extraCallback(ILo/wasSent;)V

    .line 1353
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2

    throw p1
.end method

.method public final onNavigationEvent(IJ)V
    .locals 7

    .line 1358
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onPostMessage:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    invoke-virtual {v0, v1, p1, p2, p3}, Lo/isIdle;->extraCallback(Lo/isIdle$onPostMessage;IJ)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    const-string p2, "Received 0 flow control window increment."

    if-nez p1, :cond_0

    .line 1362
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    sget-object p3, Lo/wasSent;->extraCallback:Lo/wasSent;

    invoke-static {p1, p3, p2}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;Lo/wasSent;Ljava/lang/String;)V

    return-void

    .line 1364
    :cond_0
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    sget-object p3, Lo/emptyMap;->asBinder:Lo/emptyMap;

    .line 1365
    invoke-virtual {p3, p2}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v2

    sget-object v3, Lo/rotateRight$extraCallback;->onPostMessage:Lo/rotateRight$extraCallback;

    const/4 v4, 0x0

    sget-object v5, Lo/wasSent;->extraCallback:Lo/wasSent;

    const/4 v6, 0x0

    move v1, p1

    .line 1364
    invoke-virtual/range {v0 .. v6}, Lo/sendSensitive;->onPostMessage(ILo/emptyMap;Lo/rotateRight$extraCallback;ZLo/wasSent;Lo/getPredecessorKey;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1372
    iget-object v1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v1}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    if-nez p1, :cond_2

    .line 1374
    :try_start_0
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;)Lo/access$1308;

    move-result-object p1

    const/4 v0, 0x0

    long-to-int p3, p2

    invoke-virtual {p1, v0, p3}, Lo/access$1308;->ICustomTabsCallback(Lo/nextRequestNumber;I)I

    .line 1375
    monitor-exit v1

    return-void

    .line 1378
    :cond_2
    iget-object v2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v2}, Lo/sendSensitive;->mayLaunchUrl(Lo/sendSensitive;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/nextRequestNumber;

    if-eqz v2, :cond_3

    .line 1380
    iget-object v3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v3}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;)Lo/access$1308;

    move-result-object v3

    long-to-int p3, p2

    invoke-virtual {v3, v2, p3}, Lo/access$1308;->ICustomTabsCallback(Lo/nextRequestNumber;I)I

    goto :goto_0

    .line 1381
    :cond_3
    iget-object p2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-virtual {p2, p1}, Lo/sendSensitive;->onNavigationEvent(I)Z

    move-result p2

    if-nez p2, :cond_4

    const/4 v0, 0x1

    .line 1384
    :cond_4
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    .line 1386
    iget-object p2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    sget-object p3, Lo/wasSent;->extraCallback:Lo/wasSent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Received window_update for unknown stream: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;Lo/wasSent;Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 1384
    monitor-exit v1

    throw p1
.end method

.method public final onNavigationEvent(ZII)V
    .locals 9

    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1293
    iget-object v2, p0, Lo/sendSensitive$onMessageChannelReady;->onPostMessage:Lo/isIdle;

    sget-object v3, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    invoke-virtual {v2, v3, v0, v1}, Lo/isIdle;->ICustomTabsCallback(Lo/isIdle$onPostMessage;J)V

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 1295
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1296
    :try_start_0
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->warmup(Lo/sendSensitive;)Lo/sendListen;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p3}, Lo/sendListen;->onNavigationEvent(ZII)V

    .line 1297
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_0
    const/4 p1, 0x0

    .line 1300
    iget-object p2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p2}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1301
    :try_start_1
    iget-object p3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p3}, Lo/sendSensitive;->requestPostMessageChannel(Lo/sendSensitive;)Lo/isSecure;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 1302
    iget-object p3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p3}, Lo/sendSensitive;->requestPostMessageChannel(Lo/sendSensitive;)Lo/isSecure;

    move-result-object p3

    .line 16113
    iget-wide v3, p3, Lo/isSecure;->onMessageChannelReady:J

    cmp-long p3, v3, v0

    if-nez p3, :cond_1

    .line 1303
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->requestPostMessageChannel(Lo/sendSensitive;)Lo/isSecure;

    move-result-object p1

    .line 1304
    iget-object p3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p3}, Lo/sendSensitive;->IPostMessageService$Stub(Lo/sendSensitive;)Lo/isSecure;

    goto :goto_0

    .line 1306
    :cond_1
    invoke-static {}, Lo/sendSensitive;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object p3

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Received unexpected ping ack. Expecting %d, got %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    .line 1307
    invoke-static {v7}, Lo/sendSensitive;->requestPostMessageChannel(Lo/sendSensitive;)Lo/isSecure;

    move-result-object v7

    .line 17113
    iget-wide v7, v7, Lo/isSecure;->onMessageChannelReady:J

    .line 1307
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v2

    .line 1306
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    .line 1310
    :cond_2
    invoke-static {}, Lo/sendSensitive;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object p3

    const-string v0, "Received unexpected ping ack. No ping outstanding"

    invoke-virtual {p3, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 1312
    :goto_0
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_3

    .line 1315
    invoke-virtual {p1}, Lo/isSecure;->onMessageChannelReady()Z

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 1312
    monitor-exit p2

    throw p1
.end method

.method public final onNavigationEvent(ZILo/fullLimitUpdateChild;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onPostMessage:Lo/isIdle;

    sget-object v1, Lo/isIdle$onPostMessage;->onNavigationEvent:Lo/isIdle$onPostMessage;

    .line 1135
    invoke-interface {p3}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object v3

    move v2, p2

    move v4, p4

    move v5, p1

    .line 1134
    invoke-virtual/range {v0 .. v5}, Lo/isIdle;->ICustomTabsCallback(Lo/isIdle$onPostMessage;ILo/updatePriority;IZ)V

    .line 1136
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-virtual {v0, p2}, Lo/sendSensitive;->extraCallback(I)Lo/nextRequestNumber;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1138
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-virtual {p1, p2}, Lo/sendSensitive;->onNavigationEvent(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1139
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1140
    :try_start_0
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->warmup(Lo/sendSensitive;)Lo/sendListen;

    move-result-object v0

    sget-object v1, Lo/wasSent;->ICustomTabsCallback:Lo/wasSent;

    invoke-virtual {v0, p2, v1}, Lo/sendListen;->extraCallback(ILo/wasSent;)V

    .line 1141
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long p1, p4

    .line 1142
    invoke-interface {p3, p1, p2}, Lo/fullLimitUpdateChild;->asInterface(J)V

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 1141
    monitor-exit p1

    throw p2

    .line 1144
    :cond_0
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    sget-object p3, Lo/wasSent;->extraCallback:Lo/wasSent;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p4, "Received data for unknown stream: "

    invoke-virtual {p4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;Lo/wasSent;Ljava/lang/String;)V

    return-void

    :cond_1
    int-to-long v1, p4

    .line 1149
    invoke-interface {p3, v1, v2}, Lo/fullLimitUpdateChild;->onPostMessage(J)V

    .line 1151
    new-instance p2, Lo/updatePriority;

    invoke-direct {p2}, Lo/updatePriority;-><init>()V

    .line 1152
    invoke-interface {p3}, Lo/fullLimitUpdateChild;->extraCallback()Lo/updatePriority;

    move-result-object p3

    invoke-virtual {p2, p3, v1, v2}, Lo/updatePriority;->onPostMessage(Lo/updatePriority;J)V

    .line 1153
    invoke-static {}, Lo/freeze;->onPostMessage()V

    .line 1155
    iget-object p3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p3}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 3108
    :try_start_1
    iget-object v0, v0, Lo/nextRequestNumber;->ICustomTabsCallback:Lo/nextRequestNumber$onNavigationEvent;

    .line 1158
    invoke-virtual {v0, p2, p1}, Lo/nextRequestNumber$onNavigationEvent;->onPostMessage(Lo/updatePriority;Z)V

    .line 1159
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1163
    :goto_0
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1, p4}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;I)I

    .line 1164
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->getInterfaceDescriptor(Lo/sendSensitive;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p2}, Lo/sendSensitive;->extraCommand(Lo/sendSensitive;)I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float p2, p2, p3

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    .line 1165
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->onPostMessage(Lo/sendSensitive;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1166
    :try_start_2
    iget-object p2, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p2}, Lo/sendSensitive;->warmup(Lo/sendSensitive;)Lo/sendListen;

    move-result-object p2

    const/4 p3, 0x0

    iget-object p4, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p4}, Lo/sendSensitive;->getInterfaceDescriptor(Lo/sendSensitive;)I

    move-result p4

    int-to-long v0, p4

    invoke-virtual {p2, p3, v0, v1}, Lo/sendListen;->ICustomTabsCallback(IJ)V

    .line 1167
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1168
    iget-object p1, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {p1}, Lo/sendSensitive;->postMessage(Lo/sendSensitive;)I

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 1167
    monitor-exit p1

    throw p2

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception p1

    .line 1159
    monitor-exit p3

    throw p1
.end method

.method public final run()V
    .locals 8

    const-string v0, "Exception closing frame reader"

    .line 1096
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1097
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "OkHttpClientTransport"

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 1100
    :try_start_0
    iget-object v3, p0, Lo/sendSensitive$onMessageChannelReady;->ICustomTabsCallback:Lo/getOptInclusiveEnd;

    invoke-interface {v3, p0}, Lo/getOptInclusiveEnd;->onNavigationEvent(Lo/getOptInclusiveEnd$onPostMessage;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1101
    iget-object v3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v3}, Lo/sendSensitive;->ICustomTabsService(Lo/sendSensitive;)Lo/refreshAuthToken;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1102
    iget-object v3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v3}, Lo/sendSensitive;->ICustomTabsService(Lo/sendSensitive;)Lo/refreshAuthToken;

    move-result-object v3

    invoke-virtual {v3}, Lo/refreshAuthToken;->onPostMessage()V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v3, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    sget-object v4, Lo/wasSent;->onNavigationEvent:Lo/wasSent;

    sget-object v5, Lo/emptyMap;->onTransact:Lo/emptyMap;

    const-string v6, "End of stream or IOException"

    .line 1109
    invoke-virtual {v5, v6}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v5

    .line 1108
    invoke-static {v3, v2, v4, v5}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;ILo/wasSent;Lo/emptyMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    :try_start_1
    iget-object v2, p0, Lo/sendSensitive$onMessageChannelReady;->ICustomTabsCallback:Lo/getOptInclusiveEnd;

    invoke-interface {v2}, Lo/getOptInclusiveEnd;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 1120
    :goto_1
    invoke-static {}, Lo/sendSensitive;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1122
    :goto_2
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;)Lo/resume$extraCallback;

    move-result-object v0

    invoke-interface {v0}, Lo/resume$extraCallback;->onMessageChannelReady()V

    .line 1123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v3

    .line 1112
    :try_start_2
    iget-object v4, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    sget-object v5, Lo/wasSent;->extraCallback:Lo/wasSent;

    sget-object v6, Lo/emptyMap;->asBinder:Lo/emptyMap;

    const-string v7, "error in frame handler"

    .line 1115
    invoke-virtual {v6, v7}, Lo/emptyMap;->ICustomTabsCallback(Ljava/lang/String;)Lo/emptyMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Lo/emptyMap;->onPostMessage(Ljava/lang/Throwable;)Lo/emptyMap;

    move-result-object v3

    .line 1112
    invoke-static {v4, v2, v5, v3}, Lo/sendSensitive;->onMessageChannelReady(Lo/sendSensitive;ILo/wasSent;Lo/emptyMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1118
    :try_start_3
    iget-object v2, p0, Lo/sendSensitive$onMessageChannelReady;->ICustomTabsCallback:Lo/getOptInclusiveEnd;

    invoke-interface {v2}, Lo/getOptInclusiveEnd;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v3, p0, Lo/sendSensitive$onMessageChannelReady;->ICustomTabsCallback:Lo/getOptInclusiveEnd;

    invoke-interface {v3}, Lo/getOptInclusiveEnd;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    .line 1120
    invoke-static {}, Lo/sendSensitive;->onMessageChannelReady()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v4, v5, v0, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1122
    :goto_3
    iget-object v0, p0, Lo/sendSensitive$onMessageChannelReady;->onNavigationEvent:Lo/sendSensitive;

    invoke-static {v0}, Lo/sendSensitive;->extraCallback(Lo/sendSensitive;)Lo/resume$extraCallback;

    move-result-object v0

    invoke-interface {v0}, Lo/resume$extraCallback;->onMessageChannelReady()V

    .line 1123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v2
.end method
