.class final Lo/unbindNPCICL;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/unbindNPCICL$extraCallback;,
        Lo/unbindNPCICL$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:I

.field private static final asBinder:I

.field private static final asInterface:I

.field private static final extraCallback:I

.field private static final onMessageChannelReady:I

.field private static final onNavigationEvent:I

.field private static final onPostMessage:I

.field private static final onRelationshipValidationResult:[B

.field private static final onTransact:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "vide"

    .line 50
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/unbindNPCICL;->onPostMessage:I

    const-string/jumbo v0, "soun"

    .line 51
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/unbindNPCICL;->onNavigationEvent:I

    const-string/jumbo v0, "text"

    .line 52
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/unbindNPCICL;->extraCallback:I

    const-string/jumbo v0, "sbtl"

    .line 53
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/unbindNPCICL;->onMessageChannelReady:I

    const-string/jumbo v0, "subt"

    .line 54
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/unbindNPCICL;->ICustomTabsCallback:I

    const-string v0, "clcp"

    .line 55
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/unbindNPCICL;->asInterface:I

    const-string v0, "meta"

    .line 56
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/unbindNPCICL;->asBinder:I

    const-string v0, "mdta"

    .line 57
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/unbindNPCICL;->onTransact:I

    const-string v0, "OpusHead"

    .line 66
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lo/unbindNPCICL;->onRelationshipValidationResult:[B

    return-void
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;IILjava/lang/String;)Lo/NPCICLJSInterface$3;
    .locals 11

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_4

    .line 1310
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1311
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 1312
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v3

    .line 1313
    sget v4, Lo/saveData;->onConnectionFailed:I

    if-ne v3, v4, :cond_3

    .line 1314
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p1

    .line 1315
    invoke-static {p1}, Lo/saveData;->onNavigationEvent(I)I

    move-result p1

    const/4 p2, 0x1

    .line 1316
    invoke-virtual {p0, p2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1320
    invoke-virtual {p0, p2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 1322
    :cond_0
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p1

    and-int/lit16 v1, p1, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 p1, p1, 0xf

    move v9, p1

    move v8, v1

    .line 1326
    :goto_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p1

    if-ne p1, p2, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 1327
    :goto_2
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v6

    const/16 p1, 0x10

    new-array v7, p1, [B

    .line 1329
    invoke-virtual {p0, v7, v0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    .line 1332
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p1

    .line 1333
    new-array v2, p1, [B

    .line 1334
    invoke-virtual {p0, v2, v0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    :cond_2
    move-object v10, v2

    .line 1336
    new-instance p0, Lo/NPCICLJSInterface$3;

    move-object v3, p0

    move-object v5, p3

    invoke-direct/range {v3 .. v10}, Lo/NPCICLJSInterface$3;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object p0

    :cond_3
    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;IILjava/lang/String;Lo/generateLink;Z)Lo/unbindNPCICL$extraCallback;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v10, p0

    const/16 v0, 0xc

    .line 732
    invoke-virtual {v10, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 733
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v11

    .line 734
    new-instance v12, Lo/unbindNPCICL$extraCallback;

    invoke-direct {v12, v11}, Lo/unbindNPCICL$extraCallback;-><init>(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v11, :cond_8

    .line 736
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v15

    .line 737
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v16

    if-lez v16, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    .line 738
    invoke-static {v0, v1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    .line 739
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 740
    sget v0, Lo/saveData;->extraCallback:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->onPostMessage:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->onConnected:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->onLoadChildren:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->onMessageChannelReady:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->onRelationshipValidationResult:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->requestPostMessageChannel:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->asBinder:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->asInterface:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->ICustomTabsService:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->warmup:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->getInterfaceDescriptor:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->newSession:I

    if-eq v1, v0, :cond_6

    sget v0, Lo/saveData;->postMessage:I

    if-ne v1, v0, :cond_1

    goto/16 :goto_4

    .line 756
    :cond_1
    sget v0, Lo/saveData;->ICustomTabsService$Stub$Proxy:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->MediaBrowserCompat$CustomActionCallback:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->IPostMessageService$Stub$Proxy:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->cancel:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->INotificationSideChannel$Default:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->INotificationSideChannel$Stub$Proxy:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->write:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->INotificationSideChannel$Stub:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->setDefaultImpl:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$7:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->ICustomTabsService$Stub:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->cancelAll:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->IPostMessageService:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$6:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaItem:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:I

    if-eq v1, v0, :cond_5

    sget v0, Lo/saveData;->fromMediaItemList:I

    if-ne v1, v0, :cond_2

    goto :goto_3

    .line 777
    :cond_2
    sget v0, Lo/saveData;->onReceiveResult:I

    if-eq v1, v0, :cond_4

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$6:I

    if-eq v1, v0, :cond_4

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi23:I

    if-eq v1, v0, :cond_4

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$5:I

    if-eq v1, v0, :cond_4

    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi26:I

    if-ne v1, v0, :cond_3

    goto :goto_2

    .line 782
    :cond_3
    sget v0, Lo/saveData;->onServiceDisconnected:I

    if-ne v1, v0, :cond_7

    .line 783
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "application/x-camera-motion"

    invoke-static {v0, v3, v2, v1, v2}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo/generateLink;)Lo/p$a;

    move-result-object v0

    iput-object v0, v12, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    goto :goto_5

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object v6, v12

    .line 780
    invoke-static/range {v0 .. v6}, Lo/unbindNPCICL;->ICustomTabsCallback(Lo/DreamAppGlideModule;IIIILjava/lang/String;Lo/unbindNPCICL$extraCallback;)V

    goto :goto_5

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v14

    .line 775
    invoke-static/range {v0 .. v9}, Lo/unbindNPCICL;->onMessageChannelReady(Lo/DreamAppGlideModule;IIIILjava/lang/String;ZLo/generateLink;Lo/unbindNPCICL$extraCallback;I)V

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move-object v7, v12

    move v8, v14

    .line 754
    invoke-static/range {v0 .. v8}, Lo/unbindNPCICL;->onMessageChannelReady(Lo/DreamAppGlideModule;IIIIILo/generateLink;Lo/unbindNPCICL$extraCallback;I)V

    :cond_7
    :goto_5
    add-int v15, v15, v16

    .line 786
    invoke-virtual {v10, v15}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v12
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;)Lo/unbindNPCICL$onNavigationEvent;
    .locals 11

    const/16 v0, 0x8

    .line 617
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 618
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 619
    invoke-static {v1}, Lo/saveData;->onNavigationEvent(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    .line 621
    :goto_0
    invoke-virtual {p0, v3}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 622
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v3

    const/4 v4, 0x4

    .line 624
    invoke-virtual {p0, v4}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 626
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v5

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    .line 629
    iget-object v8, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v5, :cond_4

    .line 636
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    .line 639
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v0

    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    .line 647
    :goto_4
    invoke-virtual {p0, v2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 648
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 649
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 650
    invoke-virtual {p0, v4}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 651
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v2

    .line 652
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x5a

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    const/16 v6, 0x10e

    goto :goto_5

    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    const/16 v6, 0xb4

    .line 667
    :cond_9
    :goto_5
    new-instance p0, Lo/unbindNPCICL$onNavigationEvent;

    invoke-direct {p0, v3, v7, v8, v6}, Lo/unbindNPCICL$onNavigationEvent;-><init>(IJI)V

    return-object p0
.end method

.method private static ICustomTabsCallback(Lo/DreamAppGlideModule;IIIILjava/lang/String;Lo/unbindNPCICL$extraCallback;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p6

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    .line 793
    invoke-virtual {v0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 800
    sget v3, Lo/saveData;->onReceiveResult:I

    const-string v4, "application/ttml+xml"

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    if-ne v1, v3, :cond_0

    :goto_0
    move-object v9, v4

    move-object/from16 v18, v5

    move-wide/from16 v16, v6

    goto :goto_1

    .line 802
    :cond_0
    sget v3, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$6:I

    if-ne v1, v3, :cond_1

    add-int/lit8 v1, p3, -0x8

    add-int/lit8 v1, v1, -0x8

    .line 805
    new-array v3, v1, [B

    const/4 v4, 0x0

    .line 806
    invoke-virtual {v0, v3, v4, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 807
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v4, "application/x-quicktime-tx3g"

    goto :goto_0

    .line 808
    :cond_1
    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi23:I

    if-ne v1, v0, :cond_2

    const-string v4, "application/x-mp4-vtt"

    goto :goto_0

    .line 810
    :cond_2
    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$5:I

    if-ne v1, v0, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_0

    .line 813
    :cond_3
    sget v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi26:I

    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    .line 816
    iput v0, v2, Lo/unbindNPCICL$extraCallback;->onMessageChannelReady:I

    const-string v4, "application/x-mp4-cea-608"

    goto :goto_0

    .line 824
    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v13, p5

    .line 823
    invoke-static/range {v8 .. v18}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILo/generateLink;JLjava/util/List;)Lo/p$a;

    move-result-object v0

    iput-object v0, v2, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    return-void

    .line 819
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static extraCallback(Lo/DreamAppGlideModule;)I
    .locals 1

    const/16 v0, 0x10

    .line 677
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 678
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result p0

    return p0
.end method

.method private static extraCallback(Lo/DreamAppGlideModule;II)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lo/NPCICLJSInterface$3;",
            ">;"
        }
    .end annotation

    .line 1250
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1252
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1253
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 1254
    invoke-static {v2, v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    .line 1255
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v2

    .line 1256
    sget v3, Lo/saveData;->setInternalConnectionCallback:I

    if-ne v2, v3, :cond_1

    .line 1257
    invoke-static {p0, v0, v1}, Lo/unbindNPCICL;->onNavigationEvent(Lo/DreamAppGlideModule;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    .line 1009
    invoke-virtual {p0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1010
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result p1

    .line 1011
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;)J
    .locals 2

    const/16 v0, 0x8

    .line 604
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 605
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 606
    invoke-static {v1}, Lo/saveData;->onNavigationEvent(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 607
    :goto_0
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 608
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v0

    return-wide v0
.end method

.method public static onMessageChannelReady(Lo/saveData$extraCallback;Lo/saveData$onNavigationEvent;JLo/generateLink;ZZ)Lo/NPCICLJSInterface$1;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 83
    sget v1, Lo/saveData;->getServiceComponent:I

    invoke-virtual {v0, v1}, Lo/saveData$extraCallback;->onPostMessage(I)Lo/saveData$extraCallback;

    move-result-object v1

    .line 84
    sget v2, Lo/saveData;->MediaBrowserCompat$ConnectionCallback:I

    invoke-virtual {v1, v2}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object v2

    iget-object v2, v2, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v2}, Lo/unbindNPCICL;->extraCallback(Lo/DreamAppGlideModule;)I

    move-result v2

    invoke-static {v2}, Lo/unbindNPCICL;->onNavigationEvent(I)I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v5, v3, :cond_0

    return-object v2

    .line 89
    :cond_0
    sget v3, Lo/saveData;->search:I

    invoke-virtual {v0, v3}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object v3

    iget-object v3, v3, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v3}, Lo/unbindNPCICL;->ICustomTabsCallback(Lo/DreamAppGlideModule;)Lo/unbindNPCICL$onNavigationEvent;

    move-result-object v3

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    .line 91
    invoke-static {v3}, Lo/unbindNPCICL$onNavigationEvent;->onMessageChannelReady(Lo/unbindNPCICL$onNavigationEvent;)J

    move-result-wide v8

    move-object/from16 v4, p1

    move-wide v10, v8

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v10, p2

    .line 93
    :goto_0
    iget-object v4, v4, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v4}, Lo/unbindNPCICL;->onMessageChannelReady(Lo/DreamAppGlideModule;)J

    move-result-wide v8

    cmp-long v4, v10, v6

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const-wide/32 v12, 0xf4240

    move-wide v14, v8

    .line 98
    invoke-static/range {v10 .. v15}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(JJJ)J

    move-result-wide v6

    :goto_1
    move-wide v10, v6

    .line 100
    sget v4, Lo/saveData;->getSessionToken:I

    invoke-virtual {v1, v4}, Lo/saveData$extraCallback;->onPostMessage(I)Lo/saveData$extraCallback;

    move-result-object v4

    sget v6, Lo/saveData;->getExtras:I

    .line 101
    invoke-virtual {v4, v6}, Lo/saveData$extraCallback;->onPostMessage(I)Lo/saveData$extraCallback;

    move-result-object v4

    .line 103
    sget v6, Lo/saveData;->setCallbacksMessenger:I

    invoke-virtual {v1, v6}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object v1

    iget-object v1, v1, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v1}, Lo/unbindNPCICL;->onNavigationEvent(Lo/DreamAppGlideModule;)Landroid/util/Pair;

    move-result-object v1

    .line 104
    sget v6, Lo/saveData;->handleMessage:I

    invoke-virtual {v4, v6}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object v4

    iget-object v12, v4, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    invoke-static {v3}, Lo/unbindNPCICL$onNavigationEvent;->onPostMessage(Lo/unbindNPCICL$onNavigationEvent;)I

    move-result v13

    .line 105
    invoke-static {v3}, Lo/unbindNPCICL$onNavigationEvent;->onNavigationEvent(Lo/unbindNPCICL$onNavigationEvent;)I

    move-result v14

    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, p4

    move/from16 v17, p6

    .line 104
    invoke-static/range {v12 .. v17}, Lo/unbindNPCICL;->ICustomTabsCallback(Lo/DreamAppGlideModule;IILjava/lang/String;Lo/generateLink;Z)Lo/unbindNPCICL$extraCallback;

    move-result-object v4

    if-nez p5, :cond_3

    .line 109
    sget v6, Lo/saveData;->subscribe:I

    invoke-virtual {v0, v6}, Lo/saveData$extraCallback;->onPostMessage(I)Lo/saveData$extraCallback;

    move-result-object v0

    invoke-static {v0}, Lo/unbindNPCICL;->onPostMessage(Lo/saveData$extraCallback;)Landroid/util/Pair;

    move-result-object v0

    .line 110
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, [J

    .line 111
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v17, v0

    move-object/from16 v16, v6

    goto :goto_2

    :cond_3
    move-object/from16 v16, v2

    move-object/from16 v17, v16

    .line 113
    :goto_2
    iget-object v0, v4, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    if-nez v0, :cond_4

    return-object v2

    :cond_4
    new-instance v0, Lo/NPCICLJSInterface$1;

    .line 114
    invoke-static {v3}, Lo/unbindNPCICL$onNavigationEvent;->onPostMessage(Lo/unbindNPCICL$onNavigationEvent;)I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    iget v13, v4, Lo/unbindNPCICL$extraCallback;->onMessageChannelReady:I

    iget-object v14, v4, Lo/unbindNPCICL$extraCallback;->ICustomTabsCallback:[Lo/NPCICLJSInterface$3;

    iget v15, v4, Lo/unbindNPCICL$extraCallback;->onNavigationEvent:I

    move-object v3, v0

    move v4, v2

    invoke-direct/range {v3 .. v17}, Lo/NPCICLJSInterface$1;-><init>(IIJJJLo/p$a;I[Lo/NPCICLJSInterface$3;I[J[J)V

    return-object v0
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;IIIIILo/generateLink;Lo/unbindNPCICL$extraCallback;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x8

    .line 839
    invoke-virtual {v0, v5}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const/16 v5, 0x10

    .line 841
    invoke-virtual {v0, v5}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 842
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v11

    .line 843
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v12

    const/16 v5, 0x32

    .line 846
    invoke-virtual {v0, v5}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 848
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v5

    .line 849
    sget v6, Lo/saveData;->onConnected:I

    const/4 v7, 0x0

    move/from16 v8, p1

    if-ne v8, v6, :cond_2

    .line 850
    invoke-static {v0, v1, v2}, Lo/unbindNPCICL;->extraCallback(Lo/DreamAppGlideModule;II)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 853
    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-nez v3, :cond_0

    move-object v3, v7

    goto :goto_0

    .line 854
    :cond_0
    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lo/NPCICLJSInterface$3;

    iget-object v9, v9, Lo/NPCICLJSInterface$3;->onMessageChannelReady:Ljava/lang/String;

    .line 855
    invoke-virtual {v3, v9}, Lo/generateLink;->onNavigationEvent(Ljava/lang/String;)Lo/generateLink;

    move-result-object v3

    .line 856
    :goto_0
    iget-object v9, v4, Lo/unbindNPCICL$extraCallback;->ICustomTabsCallback:[Lo/NPCICLJSInterface$3;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Lo/NPCICLJSInterface$3;

    aput-object v6, v9, p8

    .line 858
    :cond_1
    invoke-virtual {v0, v5}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    :cond_2
    move-object/from16 v20, v3

    const/4 v3, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v7

    move-object v14, v3

    move-object/from16 v17, v14

    const/4 v9, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, -0x1

    :goto_1
    sub-int v10, v5, v1

    if-ge v10, v2, :cond_1c

    .line 872
    invoke-virtual {v0, v5}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 873
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v10

    .line 874
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v13

    if-nez v13, :cond_3

    .line 875
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v15

    sub-int/2addr v15, v1

    if-eq v15, v2, :cond_1c

    :cond_3
    if-lez v13, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    const-string v15, "childAtomSize should be positive"

    .line 879
    invoke-static {v6, v15}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v6

    .line 881
    sget v15, Lo/saveData;->ICustomTabsCallback:I

    const/4 v1, 0x3

    if-ne v6, v15, :cond_7

    if-nez v7, :cond_5

    const/4 v15, 0x1

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    .line 882
    :goto_3
    invoke-static {v15}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    add-int/lit8 v10, v10, 0x8

    .line 884
    invoke-virtual {v0, v10}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 885
    invoke-static/range {p0 .. p0}, Lo/getInsights;->onPostMessage(Lo/DreamAppGlideModule;)Lo/getInsights;

    move-result-object v1

    .line 886
    iget-object v14, v1, Lo/getInsights;->extraCallback:Ljava/util/List;

    .line 887
    iget v6, v1, Lo/getInsights;->ICustomTabsCallback:I

    iput v6, v4, Lo/unbindNPCICL$extraCallback;->onNavigationEvent:I

    if-nez v9, :cond_6

    .line 889
    iget v1, v1, Lo/getInsights;->onMessageChannelReady:F

    move/from16 v16, v1

    :cond_6
    const-string/jumbo v7, "video/avc"

    goto/16 :goto_b

    .line 891
    :cond_7
    sget v15, Lo/saveData;->onTransact:I

    if-ne v6, v15, :cond_9

    if-nez v7, :cond_8

    const/4 v15, 0x1

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    .line 892
    :goto_4
    invoke-static {v15}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    add-int/lit8 v10, v10, 0x8

    .line 894
    invoke-virtual {v0, v10}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 895
    invoke-static/range {p0 .. p0}, Lo/component5;->extraCallback(Lo/DreamAppGlideModule;)Lo/component5;

    move-result-object v1

    .line 896
    iget-object v14, v1, Lo/component5;->onPostMessage:Ljava/util/List;

    .line 897
    iget v1, v1, Lo/component5;->ICustomTabsCallback:I

    iput v1, v4, Lo/unbindNPCICL$extraCallback;->onNavigationEvent:I

    const-string/jumbo v7, "video/hevc"

    goto/16 :goto_b

    .line 898
    :cond_9
    sget v15, Lo/saveData;->extraCommand:I

    if-eq v6, v15, :cond_1a

    sget v15, Lo/saveData;->mayLaunchUrl:I

    if-ne v6, v15, :cond_a

    goto/16 :goto_a

    .line 905
    :cond_a
    sget v15, Lo/saveData;->ICustomTabsCallback$Stub:I

    if-ne v6, v15, :cond_d

    if-nez v7, :cond_b

    const/4 v15, 0x1

    goto :goto_5

    :cond_b
    const/4 v15, 0x0

    .line 906
    :goto_5
    invoke-static {v15}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 907
    sget v1, Lo/saveData;->asBinder:I

    if-ne v8, v1, :cond_c

    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    goto :goto_6

    :cond_c
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    :goto_6
    move-object v7, v1

    goto/16 :goto_b

    .line 908
    :cond_d
    sget v15, Lo/saveData;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v6, v15, :cond_f

    if-nez v7, :cond_e

    const/4 v15, 0x1

    goto :goto_7

    :cond_e
    const/4 v15, 0x0

    .line 909
    :goto_7
    invoke-static {v15}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    const-string/jumbo v7, "video/av01"

    goto/16 :goto_b

    .line 911
    :cond_f
    sget v15, Lo/saveData;->updateVisuals:I

    if-ne v6, v15, :cond_11

    if-nez v7, :cond_10

    const/4 v15, 0x1

    goto :goto_8

    :cond_10
    const/4 v15, 0x0

    .line 912
    :goto_8
    invoke-static {v15}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    const-string/jumbo v7, "video/3gpp"

    goto/16 :goto_b

    .line 914
    :cond_11
    sget v15, Lo/saveData;->isConnected:I

    if-ne v6, v15, :cond_13

    if-nez v7, :cond_12

    const/4 v15, 0x1

    goto :goto_9

    :cond_12
    const/4 v15, 0x0

    .line 915
    :goto_9
    invoke-static {v15}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 917
    invoke-static {v0, v10}, Lo/unbindNPCICL;->onNavigationEvent(Lo/DreamAppGlideModule;I)Landroid/util/Pair;

    move-result-object v1

    .line 918
    iget-object v6, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 919
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    goto :goto_b

    .line 920
    :cond_13
    sget v15, Lo/saveData;->MediaBrowserCompat$ItemCallback:I

    if-ne v6, v15, :cond_14

    .line 921
    invoke-static {v0, v10}, Lo/unbindNPCICL;->onMessageChannelReady(Lo/DreamAppGlideModule;I)F

    move-result v16

    const/4 v9, 0x1

    goto :goto_b

    .line 923
    :cond_14
    sget v15, Lo/saveData;->postOrRun:I

    if-ne v6, v15, :cond_15

    .line 924
    invoke-static {v0, v10, v13}, Lo/unbindNPCICL;->onMessageChannelReady(Lo/DreamAppGlideModule;II)[B

    move-result-object v17

    goto :goto_b

    .line 925
    :cond_15
    sget v10, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$1:I

    if-ne v6, v10, :cond_1b

    .line 926
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v6

    .line 927
    invoke-virtual {v0, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    if-nez v6, :cond_1b

    .line 929
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v6

    if-eqz v6, :cond_19

    const/4 v10, 0x1

    if-eq v6, v10, :cond_18

    const/4 v15, 0x2

    if-eq v6, v15, :cond_17

    if-eq v6, v1, :cond_16

    goto :goto_b

    :cond_16
    const/16 v18, 0x3

    goto :goto_b

    :cond_17
    const/16 v18, 0x2

    goto :goto_b

    :cond_18
    const/16 v18, 0x1

    goto :goto_b

    :cond_19
    const/16 v18, 0x0

    goto :goto_b

    .line 899
    :cond_1a
    :goto_a
    invoke-static/range {p0 .. p0}, Lo/getUserDetails;->onMessageChannelReady(Lo/DreamAppGlideModule;)Lo/getUserDetails;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 901
    iget v6, v1, Lo/getUserDetails;->extraCallback:I

    const/4 v10, 0x5

    if-ne v6, v10, :cond_1b

    .line 902
    iget-object v3, v1, Lo/getUserDetails;->onMessageChannelReady:Ljava/lang/String;

    const-string/jumbo v7, "video/dolby-vision"

    :cond_1b
    :goto_b
    add-int/2addr v5, v13

    move/from16 v1, p2

    goto/16 :goto_1

    :cond_1c
    if-nez v7, :cond_1d

    return-void

    .line 958
    :cond_1d
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/high16 v13, -0x40800000    # -1.0f

    const/16 v19, 0x0

    move-object v8, v3

    move/from16 v15, p5

    .line 957
    invoke-static/range {v6 .. v20}, Lo/p$a;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILo/getRewardDetails;Lo/generateLink;)Lo/p$a;

    move-result-object v0

    iput-object v0, v4, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    return-void
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;IIIILjava/lang/String;ZLo/generateLink;Lo/unbindNPCICL$extraCallback;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v14, p5

    move-object/from16 v3, p7

    move-object/from16 v15, p8

    add-int/lit8 v4, v1, 0x8

    const/16 v5, 0x8

    add-int/2addr v4, v5

    .line 1018
    invoke-virtual {v0, v4}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const/4 v4, 0x6

    const/4 v13, 0x0

    if-eqz p6, :cond_0

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v5

    .line 1023
    invoke-virtual {v0, v4}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    goto :goto_0

    .line 1025
    :cond_0
    invoke-virtual {v0, v5}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    const/4 v5, 0x0

    :goto_0
    const/16 v6, 0x10

    const/4 v12, 0x2

    const/4 v11, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v11, :cond_1

    goto :goto_1

    :cond_1
    if-ne v5, v12, :cond_2

    .line 1040
    invoke-virtual {v0, v6}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1042
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->validateRelationship()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v5, v4

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v4

    const/16 v6, 0x14

    .line 1047
    invoke-virtual {v0, v6}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    goto :goto_2

    :cond_2
    return-void

    .line 1032
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v7

    .line 1033
    invoke-virtual {v0, v4}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->mayLaunchUrl()I

    move-result v4

    if-ne v5, v11, :cond_4

    .line 1037
    invoke-virtual {v0, v6}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    :cond_4
    move v5, v4

    move v4, v7

    .line 1053
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v6

    .line 1054
    sget v7, Lo/saveData;->MediaBrowserCompat$CustomActionCallback:I

    const/16 v16, 0x0

    move/from16 v8, p1

    if-ne v8, v7, :cond_7

    .line 1055
    invoke-static {v0, v1, v2}, Lo/unbindNPCICL;->extraCallback(Lo/DreamAppGlideModule;II)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 1058
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    if-nez v3, :cond_5

    move-object/from16 v3, v16

    goto :goto_3

    .line 1059
    :cond_5
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lo/NPCICLJSInterface$3;

    iget-object v9, v9, Lo/NPCICLJSInterface$3;->onMessageChannelReady:Ljava/lang/String;

    .line 1060
    invoke-virtual {v3, v9}, Lo/generateLink;->onNavigationEvent(Ljava/lang/String;)Lo/generateLink;

    move-result-object v3

    .line 1061
    :goto_3
    iget-object v9, v15, Lo/unbindNPCICL$extraCallback;->ICustomTabsCallback:[Lo/NPCICLJSInterface$3;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lo/NPCICLJSInterface$3;

    aput-object v7, v9, p9

    .line 1063
    :cond_6
    invoke-virtual {v0, v6}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    :cond_7
    move-object v10, v3

    .line 1072
    sget v3, Lo/saveData;->IPostMessageService$Stub$Proxy:I

    const-string v9, "audio/raw"

    if-ne v8, v3, :cond_8

    const-string v3, "audio/ac3"

    goto/16 :goto_6

    .line 1074
    :cond_8
    sget v3, Lo/saveData;->cancel:I

    if-ne v8, v3, :cond_9

    const-string v3, "audio/eac3"

    goto/16 :goto_6

    .line 1076
    :cond_9
    sget v3, Lo/saveData;->INotificationSideChannel$Default:I

    if-ne v8, v3, :cond_a

    const-string v3, "audio/ac4"

    goto/16 :goto_6

    .line 1078
    :cond_a
    sget v3, Lo/saveData;->INotificationSideChannel$Stub$Proxy:I

    if-ne v8, v3, :cond_b

    const-string v3, "audio/vnd.dts"

    goto/16 :goto_6

    .line 1080
    :cond_b
    sget v3, Lo/saveData;->INotificationSideChannel$Stub:I

    if-eq v8, v3, :cond_18

    sget v3, Lo/saveData;->setDefaultImpl:I

    if-ne v8, v3, :cond_c

    goto :goto_5

    .line 1082
    :cond_c
    sget v3, Lo/saveData;->write:I

    if-ne v8, v3, :cond_d

    const-string v3, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    .line 1084
    :cond_d
    sget v3, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$7:I

    if-ne v8, v3, :cond_e

    const-string v3, "audio/3gpp"

    goto :goto_6

    .line 1086
    :cond_e
    sget v3, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase:I

    if-ne v8, v3, :cond_f

    const-string v3, "audio/amr-wb"

    goto :goto_6

    .line 1088
    :cond_f
    sget v3, Lo/saveData;->ICustomTabsService$Stub:I

    if-eq v8, v3, :cond_17

    sget v3, Lo/saveData;->cancelAll:I

    if-ne v8, v3, :cond_10

    goto :goto_4

    .line 1090
    :cond_10
    sget v3, Lo/saveData;->IPostMessageService:I

    if-ne v8, v3, :cond_11

    const-string v3, "audio/mpeg"

    goto :goto_6

    .line 1092
    :cond_11
    sget v3, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$6:I

    if-ne v8, v3, :cond_12

    const-string v3, "audio/alac"

    goto :goto_6

    .line 1094
    :cond_12
    sget v3, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection:I

    if-ne v8, v3, :cond_13

    const-string v3, "audio/g711-alaw"

    goto :goto_6

    .line 1096
    :cond_13
    sget v3, Lo/saveData;->MediaBrowserCompat$MediaItem:I

    if-ne v8, v3, :cond_14

    const-string v3, "audio/g711-mlaw"

    goto :goto_6

    .line 1098
    :cond_14
    sget v3, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:I

    if-ne v8, v3, :cond_15

    const-string v3, "audio/opus"

    goto :goto_6

    .line 1100
    :cond_15
    sget v3, Lo/saveData;->fromMediaItemList:I

    if-ne v8, v3, :cond_16

    const-string v3, "audio/flac"

    goto :goto_6

    :cond_16
    move-object/from16 v3, v16

    goto :goto_6

    :cond_17
    :goto_4
    move-object v3, v9

    goto :goto_6

    :cond_18
    :goto_5
    const-string v3, "audio/vnd.dts.hd"

    :goto_6
    move-object v8, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move v7, v6

    move-object/from16 v19, v16

    :goto_7
    sub-int v3, v7, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_25

    .line 1106
    invoke-virtual {v0, v7}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v6

    if-lez v6, :cond_19

    const/4 v3, 0x1

    goto :goto_8

    :cond_19
    const/4 v3, 0x0

    :goto_8
    const-string v5, "childAtomSize should be positive"

    .line 1108
    invoke-static {v3, v5}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    .line 1109
    invoke-virtual/range {p0 .. p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v3

    .line 1110
    sget v5, Lo/saveData;->isConnected:I

    if-eq v3, v5, :cond_22

    if-eqz p6, :cond_1a

    sget v5, Lo/saveData;->IPostMessageService$Stub:I

    if-ne v3, v5, :cond_1a

    goto/16 :goto_c

    .line 1127
    :cond_1a
    sget v4, Lo/saveData;->notify:I

    if-ne v3, v4, :cond_1b

    add-int/lit8 v3, v7, 0x8

    .line 1128
    invoke-virtual {v0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1129
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lo/v;->onNavigationEvent(Lo/DreamAppGlideModule;Ljava/lang/String;Ljava/lang/String;Lo/generateLink;)Lo/p$a;

    move-result-object v3

    iput-object v3, v15, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    :goto_9
    move v5, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    goto/16 :goto_b

    .line 1131
    :cond_1b
    sget v4, Lo/saveData;->INotificationSideChannel:I

    if-ne v3, v4, :cond_1c

    add-int/lit8 v3, v7, 0x8

    .line 1132
    invoke-virtual {v0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1133
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lo/v;->onPostMessage(Lo/DreamAppGlideModule;Ljava/lang/String;Ljava/lang/String;Lo/generateLink;)Lo/p$a;

    move-result-object v3

    iput-object v3, v15, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    goto :goto_9

    .line 1135
    :cond_1c
    sget v4, Lo/saveData;->getDefaultImpl:I

    if-ne v3, v4, :cond_1d

    add-int/lit8 v3, v7, 0x8

    .line 1136
    invoke-virtual {v0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1138
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v14, v10}, Lo/u$e;->onMessageChannelReady(Lo/DreamAppGlideModule;Ljava/lang/String;Ljava/lang/String;Lo/generateLink;)Lo/p$a;

    move-result-object v3

    iput-object v3, v15, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    goto :goto_9

    .line 1139
    :cond_1d
    sget v4, Lo/saveData;->read:I

    if-ne v3, v4, :cond_1e

    .line 1140
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v20, -0x1

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v4, v8

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, v21

    move-object/from16 v26, v8

    move/from16 v8, v17

    move-object/from16 v27, v9

    move/from16 v9, v18

    move-object/from16 v20, v10

    move-object/from16 v10, v22

    const/16 v21, 0x1

    move-object/from16 v11, v20

    const/16 v22, 0x2

    move/from16 v12, v23

    const/4 v1, 0x0

    move-object/from16 v13, p5

    invoke-static/range {v3 .. v13}, Lo/p$a;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v3

    iput-object v3, v15, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    move/from16 v5, v24

    move/from16 v7, v25

    goto/16 :goto_b

    :cond_1e
    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    .line 1143
    sget v4, Lo/saveData;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    if-ne v3, v4, :cond_1f

    move/from16 v5, v24

    add-int/lit8 v6, v5, -0x8

    .line 1147
    sget-object v3, Lo/unbindNPCICL;->onRelationshipValidationResult:[B

    array-length v4, v3

    add-int/2addr v4, v6

    new-array v4, v4, [B

    .line 1148
    array-length v7, v3

    invoke-static {v3, v1, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v7, v25

    add-int/lit8 v3, v7, 0x8

    .line 1149
    invoke-virtual {v0, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1150
    sget-object v3, Lo/unbindNPCICL;->onRelationshipValidationResult:[B

    array-length v3, v3

    invoke-virtual {v0, v4, v3, v6}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    move-object/from16 v19, v4

    goto :goto_b

    :cond_1f
    move/from16 v5, v24

    move/from16 v7, v25

    .line 1151
    sget v4, Lo/saveData;->fromMediaItem:I

    if-ne v3, v4, :cond_20

    add-int/lit8 v6, v5, -0xc

    add-int/lit8 v3, v6, 0x4

    .line 1153
    new-array v3, v3, [B

    const/16 v4, 0x66

    .line 1154
    aput-byte v4, v3, v1

    const/16 v4, 0x4c

    .line 1155
    aput-byte v4, v3, v21

    const/16 v4, 0x61

    .line 1156
    aput-byte v4, v3, v22

    const/4 v4, 0x3

    const/16 v8, 0x43

    .line 1157
    aput-byte v8, v3, v4

    add-int/lit8 v4, v7, 0xc

    .line 1158
    invoke-virtual {v0, v4}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const/4 v4, 0x4

    .line 1159
    invoke-virtual {v0, v3, v4, v6}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    :goto_a
    move-object/from16 v19, v3

    goto :goto_b

    .line 1160
    :cond_20
    sget v4, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$6:I

    if-ne v3, v4, :cond_21

    add-int/lit8 v6, v5, -0xc

    .line 1162
    new-array v3, v6, [B

    add-int/lit8 v4, v7, 0xc

    .line 1163
    invoke-virtual {v0, v4}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1164
    invoke-virtual {v0, v3, v1, v6}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    goto :goto_a

    :cond_21
    :goto_b
    move-object/from16 v8, v26

    goto :goto_e

    :cond_22
    :goto_c
    move v5, v6

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/4 v1, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x2

    .line 1111
    sget v6, Lo/saveData;->isConnected:I

    if-ne v3, v6, :cond_23

    move v3, v7

    goto :goto_d

    .line 1112
    :cond_23
    invoke-static {v0, v7, v5}, Lo/unbindNPCICL;->onPostMessage(Lo/DreamAppGlideModule;II)I

    move-result v3

    :goto_d
    if-eq v3, v4, :cond_21

    .line 1115
    invoke-static {v0, v3}, Lo/unbindNPCICL;->onNavigationEvent(Lo/DreamAppGlideModule;I)Landroid/util/Pair;

    move-result-object v3

    .line 1116
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 1117
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, [B

    const-string v3, "audio/mp4a-latm"

    .line 1118
    invoke-virtual {v3, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1122
    invoke-static/range {v19 .. v19}, Lo/RetryRecommendationFragment$onCancel$$inlined$let$lambda$1;->onNavigationEvent([B)Landroid/util/Pair;

    move-result-object v3

    .line 1123
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v18

    .line 1124
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v17

    :cond_24
    :goto_e
    add-int/2addr v7, v5

    move/from16 v1, p2

    move-object/from16 v10, v20

    move-object/from16 v9, v27

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_25
    move-object/from16 v26, v8

    move-object/from16 v27, v9

    move-object/from16 v20, v10

    const/16 v22, 0x2

    .line 1169
    iget-object v0, v15, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    if-nez v0, :cond_28

    move-object/from16 v8, v26

    if-eqz v8, :cond_28

    move-object/from16 v0, v27

    .line 1172
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v7, 0x2

    goto :goto_f

    :cond_26
    const/4 v7, -0x1

    .line 1173
    :goto_f
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-nez v19, :cond_27

    goto :goto_10

    .line 1175
    :cond_27
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object/from16 v16, v1

    :goto_10
    const/4 v10, 0x0

    move-object v1, v8

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v16

    move-object/from16 v9, v20

    move-object/from16 v11, p5

    .line 1173
    invoke-static/range {v0 .. v11}, Lo/p$a;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lo/generateLink;ILjava/lang/String;)Lo/p$a;

    move-result-object v0

    iput-object v0, v15, Lo/unbindNPCICL$extraCallback;->onPostMessage:Lo/p$a;

    :cond_28
    return-void
.end method

.method private static onMessageChannelReady(Lo/DreamAppGlideModule;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    .line 1350
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1351
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 1352
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v2

    .line 1353
    sget v3, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1:I

    if-ne v2, v3, :cond_0

    .line 1354
    iget-object p0, p0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onNavigationEvent(I)I
    .locals 1

    .line 683
    sget v0, Lo/unbindNPCICL;->onNavigationEvent:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 685
    :cond_0
    sget v0, Lo/unbindNPCICL;->onPostMessage:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 687
    :cond_1
    sget v0, Lo/unbindNPCICL;->extraCallback:I

    if-eq p0, v0, :cond_4

    sget v0, Lo/unbindNPCICL;->onMessageChannelReady:I

    if-eq p0, v0, :cond_4

    sget v0, Lo/unbindNPCICL;->ICustomTabsCallback:I

    if-eq p0, v0, :cond_4

    sget v0, Lo/unbindNPCICL;->asInterface:I

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 689
    :cond_2
    sget v0, Lo/unbindNPCICL;->asBinder:I

    if-ne p0, v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method private static onNavigationEvent(Lo/DreamAppGlideModule;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 704
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 705
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    .line 706
    invoke-static {v1}, Lo/saveData;->onNavigationEvent(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 707
    :goto_0
    invoke-virtual {p0, v2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 708
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    .line 709
    :cond_1
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 710
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result p0

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 716
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Lo/DreamAppGlideModule;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    .line 1203
    invoke-virtual {p0, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const/4 p1, 0x1

    .line 1205
    invoke-virtual {p0, p1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1206
    invoke-static {p0}, Lo/unbindNPCICL;->onPostMessage(Lo/DreamAppGlideModule;)I

    const/4 v0, 0x2

    .line 1207
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1209
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 1211
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 1214
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub()I

    move-result v2

    invoke-virtual {p0, v2}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 1217
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1221
    :cond_2
    invoke-virtual {p0, p1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1222
    invoke-static {p0}, Lo/unbindNPCICL;->onPostMessage(Lo/DreamAppGlideModule;)I

    .line 1225
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    .line 1226
    invoke-static {v0}, Lo/InAppUpdateManager$showDownloadingBottomSheet$$inlined$executeOnResume$1;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 1227
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts"

    .line 1228
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "audio/vnd.dts.hd"

    .line 1229
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc

    .line 1233
    invoke-virtual {p0, v1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1236
    invoke-virtual {p0, p1}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1237
    invoke-static {p0}, Lo/unbindNPCICL;->onPostMessage(Lo/DreamAppGlideModule;)I

    move-result p1

    .line 1238
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 1239
    invoke-virtual {p0, v1, v2, p1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 1240
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 1230
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static onNavigationEvent(Lo/DreamAppGlideModule;II)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/DreamAppGlideModule;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lo/NPCICLJSInterface$3;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v6, v4

    const/4 v5, -0x1

    const/4 v7, 0x0

    :goto_0
    sub-int v8, v0, p1

    if-ge v8, p2, :cond_3

    .line 1276
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1277
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v8

    .line 1278
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v9

    .line 1279
    sget v10, Lo/saveData;->onResult:I

    if-ne v9, v10, :cond_0

    .line 1280
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    .line 1281
    :cond_0
    sget v10, Lo/saveData;->onConnectionSuspended:I

    if-ne v9, v10, :cond_1

    const/4 v4, 0x4

    .line 1282
    invoke-virtual {p0, v4}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 1284
    invoke-virtual {p0, v4}, Lo/DreamAppGlideModule;->ICustomTabsCallback(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1285
    :cond_1
    sget v10, Lo/saveData;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:I

    if-ne v9, v10, :cond_2

    move v5, v0

    move v7, v8

    :cond_2
    :goto_1
    add-int/2addr v0, v8

    goto :goto_0

    :cond_3
    const-string p1, "cenc"

    .line 1292
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbc1"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cens"

    .line 1293
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "cbcs"

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    :cond_5
    :goto_2
    const/4 p1, 0x1

    if-eqz v6, :cond_6

    const/4 p2, 0x1

    goto :goto_3

    :cond_6
    const/4 p2, 0x0

    :goto_3
    const-string v0, "frma atom is mandatory"

    .line 1294
    invoke-static {p2, v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    if-eq v5, v1, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    :goto_4
    const-string/jumbo v0, "schi atom is mandatory"

    .line 1295
    invoke-static {p2, v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    .line 1297
    invoke-static {p0, v5, v7, v4}, Lo/unbindNPCICL;->ICustomTabsCallback(Lo/DreamAppGlideModule;IILjava/lang/String;)Lo/NPCICLJSInterface$3;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v3, 0x1

    :cond_8
    const-string/jumbo p1, "tenc atom is mandatory"

    .line 1299
    invoke-static {v3, p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    .line 1300
    invoke-static {v6, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;)I
    .locals 3

    .line 1365
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 1368
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static onPostMessage(Lo/DreamAppGlideModule;II)I
    .locals 4

    .line 1185
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    .line 1187
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 1188
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    .line 1189
    invoke-static {v2, v3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->extraCallback(ZLjava/lang/Object;)V

    .line 1190
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v2

    .line 1191
    sget v3, Lo/saveData;->isConnected:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static onPostMessage(Lo/saveData$extraCallback;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/saveData$extraCallback;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 984
    sget v0, Lo/saveData;->MediaBrowserCompat$CallbackHandler:I

    invoke-virtual {p0, v0}, Lo/saveData$extraCallback;->ICustomTabsCallback(I)Lo/saveData$onNavigationEvent;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 987
    :cond_0
    iget-object p0, p0, Lo/saveData$onNavigationEvent;->toString:Lo/DreamAppGlideModule;

    const/16 v0, 0x8

    .line 988
    invoke-virtual {p0, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 989
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v0

    .line 990
    invoke-static {v0}, Lo/saveData;->onNavigationEvent(I)I

    move-result v0

    .line 991
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->postMessage()I

    move-result v1

    .line 992
    new-array v2, v1, [J

    .line 993
    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 996
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->requestPostMessageChannel()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->getInterfaceDescriptor()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 997
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->warmup()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->ICustomTabsCallback$Stub$Proxy()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 998
    invoke-virtual {p0}, Lo/DreamAppGlideModule;->asInterface()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 1003
    invoke-virtual {p0, v5}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1001
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1005
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    .line 985
    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
