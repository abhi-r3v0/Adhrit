.class public final Lo/setCollectIMEI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setDeviceTrackingDisabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCollectIMEI$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setDeviceTrackingDisabled<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/endConnection;

.field private final onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/setDeviceTrackingDisabled;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getReferrerClickTimestampSeconds;Lo/endConnection;Lo/setDeviceTrackingDisabled;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;",
            "Lo/endConnection;",
            "Lo/setDeviceTrackingDisabled<",
            "Lo/getCardBackgroundColor;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lo/setCollectIMEI;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    .line 36
    iput-object p2, p0, Lo/setCollectIMEI;->ICustomTabsCallback:Lo/endConnection;

    .line 37
    iput-object p3, p0, Lo/setCollectIMEI;->onPostMessage:Lo/setDeviceTrackingDisabled;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/waitForCustomerUserId<",
            "Lo/getCardBackgroundColor;",
            ">;",
            "Lo/setPreinstallAttribution;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v9, "EncodedMemoryCacheProducer"

    .line 44
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 47
    invoke-interface/range {p2 .. p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback()Lo/unregisterConversionListener;

    move-result-object v10

    .line 48
    invoke-interface {v10, v8, v9}, Lo/unregisterConversionListener;->onMessageChannelReady(Lo/setPreinstallAttribution;Ljava/lang/String;)V

    .line 49
    invoke-interface/range {p2 .. p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v2

    .line 50
    iget-object v3, v1, Lo/setCollectIMEI;->ICustomTabsCallback:Lo/endConnection;

    .line 51
    invoke-interface/range {p2 .. p2}, Lo/setPreinstallAttribution;->extraCallback()Ljava/lang/Object;

    invoke-interface {v3, v2}, Lo/endConnection;->onPostMessage(Lo/getHostPrefix;)Lo/invalidateSpanInfo;

    move-result-object v5

    .line 53
    iget-object v2, v1, Lo/setCollectIMEI;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    invoke-interface {v2, v5}, Lo/getReferrerClickTimestampSeconds;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getRootAlpha;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v2, "memory_encoded"

    const-string v12, "cached_value_found"

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v11, :cond_1

    .line 56
    :try_start_1
    new-instance v3, Lo/getCardBackgroundColor;

    invoke-direct {v3, v11}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    :try_start_2
    invoke-interface {v10, v8, v9}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "true"

    .line 1033
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 1034
    invoke-interface {v5, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 58
    :cond_0
    invoke-interface {v10, v8, v9, v13}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    invoke-interface {v10, v8, v9, v14}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    .line 65
    invoke-interface {v8, v2}, Lo/setPreinstallAttribution;->onPostMessage(Ljava/lang/String;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 66
    invoke-interface {v0, v2}, Lo/waitForCustomerUserId;->extraCallback(F)V

    .line 67
    invoke-interface {v0, v3, v14}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1425
    :try_start_3
    invoke-virtual {v3}, Lo/getCardBackgroundColor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    :try_start_4
    invoke-static {v11}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 109
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_0
    move-exception v0

    .line 2425
    :try_start_5
    invoke-virtual {v3}, Lo/getCardBackgroundColor;->close()V

    .line 70
    throw v0

    .line 74
    :cond_1
    invoke-interface/range {p2 .. p2}, Lo/setPreinstallAttribution;->onTransact()Lo/getHostPrefix$onMessageChannelReady;

    move-result-object v3

    .line 3340
    iget v3, v3, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I

    .line 74
    sget-object v4, Lo/getHostPrefix$onMessageChannelReady;->onPostMessage:Lo/getHostPrefix$onMessageChannelReady;

    .line 4340
    iget v4, v4, Lo/getHostPrefix$onMessageChannelReady;->ICustomTabsCallback:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v15, "false"

    if-lt v3, v4, :cond_3

    .line 79
    :try_start_6
    invoke-interface {v10, v8, v9}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5033
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 5034
    invoke-interface {v3, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5035
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v13

    .line 76
    :goto_0
    invoke-interface {v10, v8, v9, v3}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v3, 0x0

    .line 82
    invoke-interface {v10, v8, v9, v3}, Lo/unregisterConversionListener;->onPostMessage(Lo/setPreinstallAttribution;Ljava/lang/String;Z)V

    const-string v3, "nil-result"

    .line 83
    invoke-interface {v8, v2, v3}, Lo/setPreinstallAttribution;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {v0, v13, v14}, Lo/waitForCustomerUserId;->onNavigationEvent(Ljava/lang/Object;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 106
    :try_start_7
    invoke-static {v11}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 109
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 89
    :cond_3
    :try_start_8
    invoke-interface/range {p2 .. p2}, Lo/setPreinstallAttribution;->onMessageChannelReady()Lo/getHostPrefix;

    move-result-object v2

    .line 5209
    iget-boolean v6, v2, Lo/getHostPrefix;->ICustomTabsService:Z

    .line 90
    new-instance v7, Lo/setCollectIMEI$onNavigationEvent;

    iget-object v4, v1, Lo/setCollectIMEI;->onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;

    .line 96
    invoke-interface/range {p2 .. p2}, Lo/setPreinstallAttribution;->ICustomTabsCallback$Stub()Lo/context;

    move-result-object v2

    .line 5403
    iget-object v2, v2, Lo/context;->IPostMessageService$Stub$Proxy:Lo/intent;

    .line 6100
    iget-boolean v3, v2, Lo/intent;->validateRelationship:Z

    move-object v2, v7

    move/from16 v16, v3

    move-object/from16 v3, p1

    move-object v0, v7

    move/from16 v7, v16

    .line 96
    invoke-direct/range {v2 .. v7}, Lo/setCollectIMEI$onNavigationEvent;-><init>(Lo/waitForCustomerUserId;Lo/getReferrerClickTimestampSeconds;Lo/invalidateSpanInfo;ZZ)V

    .line 101
    invoke-interface {v10, v8, v9}, Lo/unregisterConversionListener;->extraCallback(Lo/setPreinstallAttribution;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 7033
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 7034
    invoke-interface {v2, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7035
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    .line 98
    :cond_4
    invoke-interface {v10, v8, v9, v13}, Lo/unregisterConversionListener;->ICustomTabsCallback(Lo/setPreinstallAttribution;Ljava/lang/String;Ljava/util/Map;)V

    .line 104
    iget-object v2, v1, Lo/setCollectIMEI;->onPostMessage:Lo/setDeviceTrackingDisabled;

    invoke-interface {v2, v0, v8}, Lo/setDeviceTrackingDisabled;->extraCallback(Lo/waitForCustomerUserId;Lo/setPreinstallAttribution;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 106
    :try_start_9
    invoke-static {v11}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 109
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    :catchall_1
    move-exception v0

    .line 106
    :try_start_a
    invoke-static {v11}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    .line 109
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 110
    throw v0
.end method
