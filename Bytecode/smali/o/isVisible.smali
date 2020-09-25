.class public final Lo/isVisible;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\\\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001b2\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002J6\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u001b2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001b2\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001e0\u001dJ\u000e\u0010\"\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014R\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006#"
    }
    d2 = {
        "Lcom/dreamplug/batcher/network/NetworkHelper;",
        "",
        "()V",
        "JSON",
        "Lokhttp3/MediaType;",
        "getJSON",
        "()Lokhttp3/MediaType;",
        "TAG",
        "",
        "bridgeService",
        "Lcom/dreamplug/batcher/network/BatcherNetworkService;",
        "getBridgeService",
        "()Lcom/dreamplug/batcher/network/BatcherNetworkService;",
        "bridgeService$delegate",
        "Lkotlin/Lazy;",
        "createServerRequest",
        "",
        "method",
        "url",
        "data",
        "",
        "requestId",
        "isCompressed",
        "",
        "batchSize",
        "",
        "sources",
        "",
        "networkCallbackObject",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Ljava/lang/Void;",
        "list",
        "Lcom/dreamplug/batcher/database/Request;",
        "callback",
        "zippedData",
        "batcher_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/isFiltered;

.field private final onMessageChannelReady:Lo/isSameListener;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "application/json; charset=utf-8"

    .line 21
    invoke-static {v0}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v0

    iput-object v0, p0, Lo/isVisible;->extraCallback:Lo/isFiltered;

    const-string v0, "NetworkHelper"

    .line 22
    iput-object v0, p0, Lo/isVisible;->onPostMessage:Ljava/lang/String;

    .line 24
    sget-object v0, Lo/isVisible$onMessageChannelReady;->onPostMessage:Lo/isVisible$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 24
    iput-object v1, p0, Lo/isVisible;->onMessageChannelReady:Lo/isSameListener;

    return-void
.end method

.method private static ICustomTabsCallback([B)[B
    .locals 3

    const-string v0, "data"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 99
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    check-cast v1, Ljava/io/OutputStream;

    .line 100
    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 101
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "arr.toByteArray()"

    invoke-static {p0, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZILjava/util/List;Lo/getScrapOrCachedViewForId;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/getScrapOrCachedViewForId<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p5

    if-eqz v9, :cond_0

    .line 5000
    iget-object v0, v6, Lo/isVisible;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/performClickableSpanAction;

    .line 56
    iget-object v1, v6, Lo/isVisible;->extraCallback:Lo/isFiltered;

    invoke-static {p3}, Lo/isVisible;->ICustomTabsCallback([B)[B

    move-result-object v2

    invoke-static {v1, v2}, Lo/isCompleteForPath;->ICustomTabsCallback(Lo/isFiltered;[B)Lo/isCompleteForPath;

    move-result-object v1

    const-string v2, "RequestBody.create(JSON, zippedData(data))"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "gzip"

    .line 5016
    invoke-interface {v0, v2, p2, v1}, Lo/performClickableSpanAction;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Lo/isCompleteForPath;)Lo/clearScrap;

    move-result-object v0

    goto :goto_0

    .line 6000
    :cond_0
    iget-object v0, v6, Lo/isVisible;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/performClickableSpanAction;

    .line 58
    iget-object v1, v6, Lo/isVisible;->extraCallback:Lo/isFiltered;

    invoke-static {v1, p3}, Lo/isCompleteForPath;->ICustomTabsCallback(Lo/isFiltered;[B)Lo/isCompleteForPath;

    move-result-object v1

    const-string v2, "RequestBody.create(JSON, data)"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Lo/performClickableSpanAction;->onPostMessage(Ljava/lang/String;Lo/isCompleteForPath;)Lo/clearScrap;

    move-result-object v0

    :goto_0
    move-object v10, v0

    .line 61
    sget-object v0, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v2, v0, v1, v2}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback(IJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v0

    invoke-interface {v10, v0}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 62
    new-instance v11, Lo/isVisible$onPostMessage;

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p8

    move-object v3, p2

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lo/isVisible$onPostMessage;-><init>(Lo/isVisible;Lo/getScrapOrCachedViewForId;Ljava/lang/String;ILjava/util/List;)V

    check-cast v11, Lo/getScrapOrCachedViewForId;

    invoke-interface {v10, v11}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 91
    iget-object v0, v6, Lo/isVisible;->onPostMessage:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createServerRequest() called with: networkCallbackObject = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], method = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], url = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], data = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], requestId = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isCompressed = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tag"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6065
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/util/List;Ljava/util/List;Lo/getScrapOrCachedViewForId;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/sendAccessibilityEvent;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lo/getScrapOrCachedViewForId<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sources"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$firstOrNull"

    .line 29
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1243
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 29
    :goto_0
    check-cast v0, Lo/sendAccessibilityEvent;

    if-eqz v0, :cond_5

    .line 2017
    iget-object v4, v0, Lo/sendAccessibilityEvent;->onPostMessage:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 32
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 3015
    :cond_1
    iget-object v5, v0, Lo/sendAccessibilityEvent;->extraCallback:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 33
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 34
    :cond_2
    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Ljava/util/List;)[B

    move-result-object v6

    .line 4013
    iget-object v7, v0, Lo/sendAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 4027
    iget-object v0, v0, Lo/sendAccessibilityEvent;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    goto :goto_1

    .line 36
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v8, 0x0

    .line 37
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    move-object v3, p0

    move-object v10, p2

    move-object v11, p3

    .line 31
    invoke-direct/range {v3 .. v11}, Lo/isVisible;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;ZILjava/util/List;Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 41
    :cond_5
    new-instance p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "null or empty list received."

    invoke-direct {p2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    invoke-direct {p1, v1, p2}, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;-><init>(Ljava/lang/Object;Ljava/lang/Throwable;)V

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-interface {p3, p1}, Lo/getScrapOrCachedViewForId;->onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    return-void
.end method
