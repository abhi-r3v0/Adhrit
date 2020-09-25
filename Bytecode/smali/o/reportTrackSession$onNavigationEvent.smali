.class final Lo/reportTrackSession$onNavigationEvent;
.super Lo/setAdditionalData;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/reportTrackSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setAdditionalData<",
        "Lo/getCardBackgroundColor;",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/getTranslateY;

.field private final asInterface:Lo/getCardBackgroundColor;

.field private final extraCallback:Lo/invalidateSpanInfo;

.field private final onMessageChannelReady:Lo/getInstallReferrer;

.field private final onPostMessage:Lo/CustomVersionedParcelable;


# direct methods
.method private constructor <init>(Lo/waitForCustomerUserId;Lo/getInstallReferrer;Lo/invalidateSpanInfo;Lo/CustomVersionedParcelable;Lo/getTranslateY;Lo/getCardBackgroundColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/getInstallReferrer;",
            "Lo/invalidateSpanInfo;",
            "Lo/CustomVersionedParcelable;",
            "Lo/getTranslateY;",
            "Lo/getCardBackgroundColor;",
            ")V"
        }
    .end annotation

    .line 245
    invoke-direct {p0, p1}, Lo/setAdditionalData;-><init>(Lo/waitForCustomerUserId;)V

    .line 246
    iput-object p2, p0, Lo/reportTrackSession$onNavigationEvent;->onMessageChannelReady:Lo/getInstallReferrer;

    .line 247
    iput-object p3, p0, Lo/reportTrackSession$onNavigationEvent;->extraCallback:Lo/invalidateSpanInfo;

    .line 248
    iput-object p4, p0, Lo/reportTrackSession$onNavigationEvent;->onPostMessage:Lo/CustomVersionedParcelable;

    .line 249
    iput-object p5, p0, Lo/reportTrackSession$onNavigationEvent;->ICustomTabsCallback:Lo/getTranslateY;

    .line 250
    iput-object p6, p0, Lo/reportTrackSession$onNavigationEvent;->asInterface:Lo/getCardBackgroundColor;

    return-void
.end method

.method synthetic constructor <init>(Lo/waitForCustomerUserId;Lo/getInstallReferrer;Lo/invalidateSpanInfo;Lo/CustomVersionedParcelable;Lo/getTranslateY;Lo/getCardBackgroundColor;B)V
    .locals 0

    .line 227
    invoke-direct/range {p0 .. p6}, Lo/reportTrackSession$onNavigationEvent;-><init>(Lo/waitForCustomerUserId;Lo/getInstallReferrer;Lo/invalidateSpanInfo;Lo/CustomVersionedParcelable;Lo/getTranslateY;Lo/getCardBackgroundColor;)V

    return-void
.end method

.method private onMessageChannelReady(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lo/reportTrackSession$onNavigationEvent;->ICustomTabsCallback:Lo/getTranslateY;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Lo/getTranslateY;->extraCallback(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move v2, p3

    :cond_0
    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 305
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ltz v4, :cond_1

    if-lez v4, :cond_0

    .line 307
    invoke-virtual {p2, v0, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 312
    iget-object p2, p0, Lo/reportTrackSession$onNavigationEvent;->ICustomTabsCallback:Lo/getTranslateY;

    invoke-interface {p2, v0}, Lo/getTranslateY;->extraCallback(Ljava/lang/Object;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lo/reportTrackSession$onNavigationEvent;->ICustomTabsCallback:Lo/getTranslateY;

    invoke-interface {p1, v0}, Lo/getTranslateY;->extraCallback(Ljava/lang/Object;)V

    if-gtz v2, :cond_2

    return-void

    .line 316
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const/4 p2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 320
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v3

    const/4 p3, 0x1

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, p3

    const-string p3, "Failed to read %d bytes - finished %d short"

    .line 317
    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 6

    .line 227
    check-cast p1, Lo/getCardBackgroundColor;

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    xor-int/2addr v3, v2

    if-nez v3, :cond_8

    .line 1260
    iget-object v3, p0, Lo/reportTrackSession$onNavigationEvent;->asInterface:Lo/getCardBackgroundColor;

    if-eqz v3, :cond_2

    .line 3260
    iget-object v3, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub:Lo/logWarn;

    if-eqz v3, :cond_2

    .line 1262
    :try_start_0
    iget-object p2, p0, Lo/reportTrackSession$onNavigationEvent;->asInterface:Lo/getCardBackgroundColor;

    .line 3287
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v0

    .line 4260
    iget-object v1, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub:Lo/logWarn;

    .line 3287
    iget v1, v1, Lo/logWarn;->onPostMessage:I

    add-int/2addr v0, v1

    .line 3288
    iget-object v1, p0, Lo/reportTrackSession$onNavigationEvent;->onPostMessage:Lo/CustomVersionedParcelable;

    .line 3289
    invoke-interface {v1, v0}, Lo/CustomVersionedParcelable;->ICustomTabsCallback(I)Lo/setRootAlpha;

    move-result-object v0

    .line 5260
    iget-object v1, p1, Lo/getCardBackgroundColor;->ICustomTabsCallback$Stub:Lo/logWarn;

    .line 3292
    iget v1, v1, Lo/logWarn;->onPostMessage:I

    .line 3293
    invoke-virtual {p2}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p0, p2, v0, v1}, Lo/reportTrackSession$onNavigationEvent;->onMessageChannelReady(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 3294
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->extraCallback()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onMessageChannelReady()I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lo/reportTrackSession$onNavigationEvent;->onMessageChannelReady(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 5327
    invoke-virtual {v0}, Lo/setRootAlpha;->onPostMessage()Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v0, 0x0

    .line 5330
    :try_start_1
    new-instance v1, Lo/getCardBackgroundColor;

    invoke-direct {v1, p2}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5331
    :try_start_2
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 6020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 5332
    invoke-interface {v0, v1, v2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6425
    :try_start_3
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->close()V

    .line 5335
    invoke-static {p2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    if-eqz v1, :cond_1

    .line 7425
    invoke-virtual {v1}, Lo/getCardBackgroundColor;->close()V

    .line 5335
    :cond_1
    invoke-static {p2}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_4
    const-string v0, "PartialDiskCacheProducer"

    const-string v1, "Error while merging image data"

    .line 1267
    invoke-static {v0, v1, p2}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8020
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1268
    invoke-interface {v0, p2}, Lo/waitForCustomerUserId;->onPostMessage(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1270
    :goto_2
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    .line 1271
    iget-object p1, p0, Lo/reportTrackSession$onNavigationEvent;->asInterface:Lo/getCardBackgroundColor;

    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    .line 1274
    iget-object p1, p0, Lo/reportTrackSession$onNavigationEvent;->onMessageChannelReady:Lo/getInstallReferrer;

    iget-object p2, p0, Lo/reportTrackSession$onNavigationEvent;->extraCallback:Lo/invalidateSpanInfo;

    invoke-virtual {p1, p2}, Lo/getInstallReferrer;->ICustomTabsCallback(Lo/invalidateSpanInfo;)Lo/getDrawerToggleDelegate;

    return-void

    .line 1270
    :goto_3
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    .line 1271
    iget-object p1, p0, Lo/reportTrackSession$onNavigationEvent;->asInterface:Lo/getCardBackgroundColor;

    invoke-virtual {p1}, Lo/getCardBackgroundColor;->close()V

    throw p2

    :cond_2
    and-int/lit8 v3, p2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_7

    if-ne v0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_7

    .line 9326
    iget v0, p1, Lo/getCardBackgroundColor;->asInterface:I

    if-ltz v0, :cond_5

    iget v0, p1, Lo/getCardBackgroundColor;->onTransact:I

    if-gez v0, :cond_6

    .line 9327
    :cond_5
    invoke-virtual {p1}, Lo/getCardBackgroundColor;->onRelationshipValidationResult()V

    .line 9209
    :cond_6
    iget-object v0, p1, Lo/getCardBackgroundColor;->onMessageChannelReady:Lo/setProgress;

    .line 1277
    sget-object v1, Lo/setProgress;->onPostMessage:Lo/setProgress;

    if-eq v0, v1, :cond_7

    .line 1278
    iget-object v0, p0, Lo/reportTrackSession$onNavigationEvent;->onMessageChannelReady:Lo/getInstallReferrer;

    iget-object v1, p0, Lo/reportTrackSession$onNavigationEvent;->extraCallback:Lo/invalidateSpanInfo;

    invoke-virtual {v0, v1, p1}, Lo/getInstallReferrer;->extraCallback(Lo/invalidateSpanInfo;Lo/getCardBackgroundColor;)V

    .line 10020
    :cond_7
    iget-object v0, p0, Lo/setAdditionalData;->onNavigationEvent:Lo/waitForCustomerUserId;

    .line 1281
    invoke-interface {v0, p1, p2}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V

    :cond_8
    return-void
.end method
