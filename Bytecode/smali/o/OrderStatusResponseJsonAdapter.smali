.class final Lo/OrderStatusResponseJsonAdapter;
.super Lo/getMerchantId;
.source ""


# static fields
.field private static final newSession:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final ICustomTabsCallback$Stub$Proxy:Lo/PaymentRequestJsonAdapter;

.field public final ICustomTabsService:Landroid/net/Uri;

.field private final ICustomTabsService$Stub:Lo/generateLink;

.field private final ICustomTabsService$Stub$Proxy:Lo/ImageHeaderParser$ImageType;

.field private final INotificationSideChannel:Z

.field private INotificationSideChannel$Default:I

.field private volatile INotificationSideChannel$Stub:Z

.field private INotificationSideChannel$Stub$Proxy:Z

.field private final IPostMessageService:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private final IPostMessageService$Stub:Lo/Event;

.field private IPostMessageService$Stub$Proxy:Lo/Event;

.field private cancel:Z

.field private final cancelAll:Z

.field private final extraCommand:Z

.field private getDefaultImpl:Z

.field public final getInterfaceDescriptor:I

.field private final mayLaunchUrl:Z

.field private notify:Lo/PayCallResponseJsonAdapter;

.field public final onTransact:I

.field private final postMessage:Z

.field private final requestPostMessageChannel:Lo/getWaivers;

.field private final updateVisuals:Lo/ListInstrument;

.field private final validateRelationship:Lo/DreamAppGlideModule;

.field private final warmup:Lo/ResultJsonAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lo/OrderStatusResponseJsonAdapter;->newSession:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Lo/ListInstrument;Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Lo/p$a;ZLo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLo/getWaivers;Lo/generateLink;Lo/Event;Lo/ImageHeaderParser$ImageType;Lo/DreamAppGlideModule;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ListInstrument;",
            "Lo/ResultJsonAdapter;",
            "Lo/PaymentRequestJsonAdapter;",
            "Lo/p$a;",
            "Z",
            "Lo/ResultJsonAdapter;",
            "Lo/PaymentRequestJsonAdapter;",
            "Z",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Lo/getWaivers;",
            "Lo/generateLink;",
            "Lo/Event;",
            "Lo/ImageHeaderParser$ImageType;",
            "Lo/DreamAppGlideModule;",
            "Z)V"
        }
    .end annotation

    move-object v12, p0

    move-object/from16 v13, p7

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p11

    move-object/from16 v5, p12

    move-wide/from16 v6, p13

    move-wide/from16 v8, p15

    move-wide/from16 v10, p17

    .line 239
    invoke-direct/range {v0 .. v11}, Lo/getMerchantId;-><init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Lo/p$a;ILjava/lang/Object;JJJ)V

    move/from16 v0, p5

    .line 248
    iput-boolean v0, v12, Lo/OrderStatusResponseJsonAdapter;->cancelAll:Z

    move/from16 v0, p19

    .line 249
    iput v0, v12, Lo/OrderStatusResponseJsonAdapter;->getInterfaceDescriptor:I

    move-object/from16 v0, p6

    .line 250
    iput-object v0, v12, Lo/OrderStatusResponseJsonAdapter;->warmup:Lo/ResultJsonAdapter;

    .line 251
    iput-object v13, v12, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PaymentRequestJsonAdapter;

    move/from16 v0, p8

    .line 252
    iput-boolean v0, v12, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel:Z

    move-object/from16 v0, p9

    .line 253
    iput-object v0, v12, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsService:Landroid/net/Uri;

    move/from16 v0, p21

    .line 254
    iput-boolean v0, v12, Lo/OrderStatusResponseJsonAdapter;->extraCommand:Z

    move-object/from16 v0, p22

    .line 255
    iput-object v0, v12, Lo/OrderStatusResponseJsonAdapter;->requestPostMessageChannel:Lo/getWaivers;

    move/from16 v0, p20

    .line 256
    iput-boolean v0, v12, Lo/OrderStatusResponseJsonAdapter;->mayLaunchUrl:Z

    move-object v0, p1

    .line 257
    iput-object v0, v12, Lo/OrderStatusResponseJsonAdapter;->updateVisuals:Lo/ListInstrument;

    move-object/from16 v0, p10

    .line 258
    iput-object v0, v12, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService:Ljava/util/List;

    move-object/from16 v0, p23

    .line 259
    iput-object v0, v12, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsService$Stub:Lo/generateLink;

    move-object/from16 v0, p24

    .line 260
    iput-object v0, v12, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub:Lo/Event;

    move-object/from16 v0, p25

    .line 261
    iput-object v0, v12, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:Lo/ImageHeaderParser$ImageType;

    move-object/from16 v0, p26

    .line 262
    iput-object v0, v12, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    move/from16 v0, p27

    .line 263
    iput-boolean v0, v12, Lo/OrderStatusResponseJsonAdapter;->postMessage:Z

    if-eqz v13, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 264
    :goto_0
    iput-boolean v0, v12, Lo/OrderStatusResponseJsonAdapter;->getDefaultImpl:Z

    .line 265
    sget-object v0, Lo/OrderStatusResponseJsonAdapter;->newSession:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lo/OrderStatusResponseJsonAdapter;->onTransact:I

    return-void
.end method

.method private ICustomTabsCallback(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;)Lo/AxisTracker$DataSenderTask$1;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 369
    invoke-interface/range {p1 .. p2}, Lo/ResultJsonAdapter;->ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J

    move-result-wide v6

    .line 371
    new-instance v15, Lo/AxisTracker$DataSenderTask$1;

    iget-wide v4, v1, Lo/PaymentRequestJsonAdapter;->onMessageChannelReady:J

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lo/AxisTracker$DataSenderTask$1;-><init>(Lo/ResultJsonAdapter;JJ)V

    .line 374
    iget-object v2, v0, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/Event;

    if-nez v2, :cond_2

    .line 375
    invoke-direct {v0, v15}, Lo/OrderStatusResponseJsonAdapter;->onMessageChannelReady(Lo/Event$Action;)J

    move-result-wide v2

    .line 376
    invoke-virtual {v15}, Lo/AxisTracker$DataSenderTask$1;->extraCallback()V

    .line 378
    iget-object v8, v0, Lo/OrderStatusResponseJsonAdapter;->updateVisuals:Lo/ListInstrument;

    iget-object v9, v0, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub:Lo/Event;

    iget-object v10, v1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    iget-object v11, v0, Lo/component3;->extraCallback:Lo/p$a;

    iget-object v12, v0, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService:Ljava/util/List;

    iget-object v13, v0, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsService$Stub:Lo/generateLink;

    iget-object v14, v0, Lo/OrderStatusResponseJsonAdapter;->requestPostMessageChannel:Lo/getWaivers;

    .line 386
    invoke-interface/range {p1 .. p1}, Lo/ResultJsonAdapter;->onPostMessage()Ljava/util/Map;

    move-result-object v1

    move-object v4, v15

    move-object v15, v1

    move-object/from16 v16, v4

    .line 379
    invoke-interface/range {v8 .. v16}, Lo/ListInstrument;->extraCallback(Lo/Event;Landroid/net/Uri;Lo/p$a;Ljava/util/List;Lo/generateLink;Lo/getWaivers;Ljava/util/Map;Lo/Event$Action;)Lo/ListInstrument$onMessageChannelReady;

    move-result-object v1

    .line 388
    iget-object v5, v1, Lo/ListInstrument$onMessageChannelReady;->ICustomTabsCallback:Lo/Event;

    iput-object v5, v0, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/Event;

    .line 389
    iget-boolean v5, v1, Lo/ListInstrument$onMessageChannelReady;->extraCallback:Z

    iput-boolean v5, v0, Lo/OrderStatusResponseJsonAdapter;->cancel:Z

    .line 390
    iget-boolean v1, v1, Lo/ListInstrument$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, v0, Lo/OrderStatusResponseJsonAdapter;->notify:Lo/PayCallResponseJsonAdapter;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-eqz v7, :cond_0

    iget-object v5, v0, Lo/OrderStatusResponseJsonAdapter;->requestPostMessageChannel:Lo/getWaivers;

    .line 393
    invoke-virtual {v5, v2, v3}, Lo/getWaivers;->extraCallback(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lo/component3;->asInterface:J

    .line 391
    :goto_0
    invoke-virtual {v1, v2, v3}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(J)V

    goto :goto_1

    .line 398
    :cond_1
    iget-object v1, v0, Lo/OrderStatusResponseJsonAdapter;->notify:Lo/PayCallResponseJsonAdapter;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lo/PayCallResponseJsonAdapter;->ICustomTabsCallback(J)V

    .line 400
    :goto_1
    iget-object v1, v0, Lo/OrderStatusResponseJsonAdapter;->notify:Lo/PayCallResponseJsonAdapter;

    iget v2, v0, Lo/OrderStatusResponseJsonAdapter;->onTransact:I

    iget-boolean v3, v0, Lo/OrderStatusResponseJsonAdapter;->postMessage:Z

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lo/PayCallResponseJsonAdapter;->onPostMessage(IZZ)V

    .line 401
    iget-object v1, v0, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/Event;

    iget-object v2, v0, Lo/OrderStatusResponseJsonAdapter;->notify:Lo/PayCallResponseJsonAdapter;

    invoke-interface {v1, v2}, Lo/Event;->extraCallback(Lo/ExceptionTracker;)V

    goto :goto_2

    :cond_2
    move-object v4, v15

    :goto_2
    return-object v4
.end method

.method public static ICustomTabsCallback(Lo/ListInstrument;Lo/ResultJsonAdapter;Lo/p$a;JLo/SessionCallResponseJsonAdapter;ILandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;ZLo/PaymentMethod;Lo/OrderStatusResponseJsonAdapter;[B[B)Lo/OrderStatusResponseJsonAdapter;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ListInstrument;",
            "Lo/ResultJsonAdapter;",
            "Lo/p$a;",
            "J",
            "Lo/SessionCallResponseJsonAdapter;",
            "I",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Lo/p$a;",
            ">;I",
            "Ljava/lang/Object;",
            "Z",
            "Lo/PaymentMethod;",
            "Lo/OrderStatusResponseJsonAdapter;",
            "[B[B)",
            "Lo/OrderStatusResponseJsonAdapter;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p13

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    .line 87
    iget-object v6, v1, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    .line 88
    new-instance v14, Lo/PaymentRequestJsonAdapter;

    iget-object v7, v1, Lo/ShortCircuitInfoJsonAdapter;->warmup:Ljava/lang/String;

    iget-object v8, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 90
    invoke-static {v7, v8}, Lo/ThirdPartyAuthorizeRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-wide v9, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onRelationshipValidationResult:J

    iget-wide v11, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->warmup:J

    const/4 v13, 0x0

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lo/PaymentRequestJsonAdapter;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    if-eqz v4, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_1

    .line 95
    iget-object v10, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->asInterface:Ljava/lang/String;

    .line 96
    invoke-static {v10}, Lo/OrderStatusResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)[B

    move-result-object v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    .line 97
    :goto_1
    invoke-static {v0, v4, v10}, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsCallback(Lo/ResultJsonAdapter;[B[B)Lo/ResultJsonAdapter;

    move-result-object v4

    .line 100
    iget-object v10, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onNavigationEvent:Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;

    if-eqz v10, :cond_4

    if-eqz v5, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-eqz v11, :cond_3

    .line 106
    iget-object v13, v10, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->asInterface:Ljava/lang/String;

    .line 107
    invoke-static {v13}, Lo/OrderStatusResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/String;)[B

    move-result-object v13

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 108
    :goto_3
    iget-object v15, v1, Lo/ShortCircuitInfoJsonAdapter;->warmup:Ljava/lang/String;

    iget-object v7, v10, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v15, v7}, Lo/ThirdPartyAuthorizeRequestJsonAdapter;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 109
    new-instance v7, Lo/PaymentRequestJsonAdapter;

    iget-wide v8, v10, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onRelationshipValidationResult:J

    move/from16 p14, v11

    iget-wide v10, v10, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->warmup:J

    const/16 v23, 0x0

    move-object/from16 v17, v7

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    invoke-direct/range {v17 .. v23}, Lo/PaymentRequestJsonAdapter;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    .line 115
    invoke-static {v0, v5, v13}, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsCallback(Lo/ResultJsonAdapter;[B[B)Lo/ResultJsonAdapter;

    move-result-object v0

    move/from16 v5, p14

    move-object v13, v0

    move-object v0, v7

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 118
    :goto_4
    iget-wide v7, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onTransact:J

    add-long v20, p3, v7

    .line 119
    iget-wide v7, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onPostMessage:J

    add-long v22, v20, v7

    .line 120
    iget v7, v1, Lo/SessionCallResponseJsonAdapter;->ICustomTabsCallback:I

    iget v8, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->onMessageChannelReady:I

    add-int v11, v7, v8

    if-eqz v3, :cond_8

    .line 128
    iget-object v7, v3, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:Lo/ImageHeaderParser$ImageType;

    .line 129
    iget-object v8, v3, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    .line 130
    iget-object v9, v3, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsService:Landroid/net/Uri;

    move-object/from16 v10, p7

    .line 131
    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-boolean v9, v3, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:Z

    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/16 v16, 0x1

    .line 132
    :goto_6
    iget-boolean v9, v3, Lo/OrderStatusResponseJsonAdapter;->cancel:Z

    if-eqz v9, :cond_7

    iget v9, v3, Lo/OrderStatusResponseJsonAdapter;->getInterfaceDescriptor:I

    if-ne v9, v11, :cond_7

    if-nez v16, :cond_7

    iget-object v9, v3, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/Event;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    move-object/from16 v32, v7

    move-object/from16 v33, v8

    move-object/from16 v31, v9

    move/from16 v34, v16

    goto :goto_8

    :cond_8
    move-object/from16 v10, p7

    .line 139
    new-instance v3, Lo/ImageHeaderParser$ImageType;

    invoke-direct {v3}, Lo/ImageHeaderParser$ImageType;-><init>()V

    .line 140
    new-instance v7, Lo/DreamAppGlideModule;

    const/16 v8, 0xa

    invoke-direct {v7, v8}, Lo/DreamAppGlideModule;-><init>(I)V

    move-object/from16 v32, v3

    move-object/from16 v33, v7

    const/16 v31, 0x0

    const/16 v34, 0x0

    .line 144
    :goto_8
    new-instance v3, Lo/OrderStatusResponseJsonAdapter;

    move-object v7, v3

    iget-wide v8, v1, Lo/SessionCallResponseJsonAdapter;->asBinder:J

    int-to-long v1, v2

    add-long v24, v8, v1

    iget-boolean v1, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Z

    move/from16 v27, v1

    move-object/from16 v1, p12

    .line 163
    invoke-virtual {v1, v11}, Lo/PaymentMethod;->onMessageChannelReady(I)Lo/getWaivers;

    move-result-object v29

    iget-object v1, v6, Lo/SessionCallResponseJsonAdapter$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/generateLink;

    move-object/from16 v30, v1

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v14

    move v1, v11

    move-object/from16 v11, p2

    move-object v14, v0

    move v15, v5

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, p9

    move-object/from16 v19, p10

    move/from16 v26, v1

    move/from16 v28, p11

    invoke-direct/range {v7 .. v34}, Lo/OrderStatusResponseJsonAdapter;-><init>(Lo/ListInstrument;Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Lo/p$a;ZLo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZZLo/getWaivers;Lo/generateLink;Lo/Event;Lo/ImageHeaderParser$ImageType;Lo/DreamAppGlideModule;Z)V

    return-object v3
.end method

.method private static ICustomTabsCallback(Lo/ResultJsonAdapter;[B[B)Lo/ResultJsonAdapter;
    .locals 1

    if-eqz p1, :cond_0

    .line 490
    new-instance v0, Lo/component4;

    invoke-direct {v0, p0, p1, p2}, Lo/component4;-><init>(Lo/ResultJsonAdapter;[B[B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private asInterface()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 310
    iget-boolean v0, p0, Lo/OrderStatusResponseJsonAdapter;->getDefaultImpl:Z

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->warmup:Lo/ResultJsonAdapter;

    iget-object v1, p0, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/PaymentRequestJsonAdapter;

    iget-boolean v2, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel:Z

    invoke-direct {p0, v0, v1, v2}, Lo/OrderStatusResponseJsonAdapter;->onPostMessage(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Z)V

    const/4 v0, 0x0

    .line 314
    iput v0, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Default:I

    .line 315
    iput-boolean v0, p0, Lo/OrderStatusResponseJsonAdapter;->getDefaultImpl:Z

    return-void
.end method

.method private onMessageChannelReady(Lo/Event$Action;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 418
    invoke-interface {p1}, Lo/Event$Action;->extraCallback()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 420
    :try_start_0
    iget-object v2, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    iget-object v2, v2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {p1, v2, v4, v3}, Lo/Event$Action;->extraCallback([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    iget-object v2, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    invoke-virtual {v2, v3}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 426
    iget-object v2, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    invoke-virtual {v2}, Lo/DreamAppGlideModule;->newSession()I

    move-result v2

    .line 427
    sget v5, Lo/ImageHeaderParser$ImageType;->onPostMessage:I

    if-eq v2, v5, :cond_0

    return-wide v0

    .line 430
    :cond_0
    iget-object v2, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 431
    iget-object v2, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    invoke-virtual {v2}, Lo/DreamAppGlideModule;->extraCommand()I

    move-result v2

    add-int/lit8 v5, v2, 0xa

    .line 433
    iget-object v6, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    invoke-virtual {v6}, Lo/DreamAppGlideModule;->extraCallback()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 434
    iget-object v6, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    iget-object v6, v6, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 435
    iget-object v7, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    invoke-virtual {v7, v5}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 436
    iget-object v5, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {v6, v4, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 438
    :cond_1
    iget-object v5, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-interface {p1, v5, v3, v2}, Lo/Event$Action;->extraCallback([BII)V

    .line 439
    iget-object p1, p0, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsService$Stub$Proxy:Lo/ImageHeaderParser$ImageType;

    iget-object v3, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    iget-object v3, v3, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-virtual {p1, v3, v2}, Lo/ImageHeaderParser$ImageType;->onPostMessage([BI)Lo/callAPI;

    move-result-object p1

    if-nez p1, :cond_2

    return-wide v0

    .line 443
    :cond_2
    invoke-virtual {p1}, Lo/callAPI;->ICustomTabsCallback()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    .line 445
    invoke-virtual {p1, v3}, Lo/callAPI;->onPostMessage(I)Lo/callAPI$onPostMessage;

    move-result-object v5

    .line 446
    instance-of v6, v5, Lo/Downsampler;

    if-eqz v6, :cond_3

    .line 447
    check-cast v5, Lo/Downsampler;

    .line 448
    iget-object v6, v5, Lo/Downsampler;->ICustomTabsCallback:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 449
    iget-object p1, v5, Lo/Downsampler;->onMessageChannelReady:[B

    iget-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    const/16 v1, 0x8

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    iget-object p1, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    invoke-virtual {p1, v1}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 454
    iget-object p1, p0, Lo/OrderStatusResponseJsonAdapter;->validateRelationship:Lo/DreamAppGlideModule;

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->warmup()J

    move-result-wide v0

    const-wide v2, 0x1ffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-wide v0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)[B
    .locals 4

    .line 465
    invoke-static {p0}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 466
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 471
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    new-array v0, v1, [B

    .line 473
    array-length v2, p0

    if-le v2, v1, :cond_1

    array-length v2, p0

    sub-int/2addr v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 474
    :goto_0
    array-length v3, p0

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private onPostMessage(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 344
    iget p3, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Default:I

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move v1, p3

    move-object p3, p2

    goto :goto_1

    .line 346
    :cond_1
    iget p3, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Default:I

    int-to-long v1, p3

    invoke-virtual {p2, v1, v2}, Lo/PaymentRequestJsonAdapter;->onMessageChannelReady(J)Lo/PaymentRequestJsonAdapter;

    move-result-object p3

    const/4 v1, 0x0

    .line 350
    :goto_1
    :try_start_0
    invoke-direct {p0, p1, p3}, Lo/OrderStatusResponseJsonAdapter;->ICustomTabsCallback(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;)Lo/AxisTracker$DataSenderTask$1;

    move-result-object p3

    if-eqz v1, :cond_2

    .line 352
    iget v1, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Default:I

    invoke-interface {p3, v1}, Lo/Event$Action;->extraCallback(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 356
    :try_start_1
    iget-boolean v0, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Stub:Z

    if-nez v0, :cond_3

    .line 357
    iget-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/Event;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lo/Event;->onNavigationEvent(Lo/Event$Action;Lo/SessionInfo;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 360
    :try_start_2
    invoke-interface {p3}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v1

    iget-wide p2, p2, Lo/PaymentRequestJsonAdapter;->onMessageChannelReady:J

    sub-long/2addr v1, p2

    long-to-int p2, v1

    iput p2, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Default:I

    .line 361
    throw v0

    .line 360
    :cond_3
    invoke-interface {p3}, Lo/Event$Action;->onMessageChannelReady()J

    move-result-wide v0

    iget-wide p2, p2, Lo/PaymentRequestJsonAdapter;->onMessageChannelReady:J

    sub-long/2addr v0, p2

    long-to-int p2, v0

    iput p2, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Default:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Lo/ResultJsonAdapter;)V

    return-void

    :catchall_1
    move-exception p2

    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Lo/ResultJsonAdapter;)V

    .line 364
    throw p2
.end method

.method private onRelationshipValidationResult()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 319
    iget-boolean v0, p0, Lo/OrderStatusResponseJsonAdapter;->extraCommand:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->requestPostMessageChannel:Lo/getWaivers;

    invoke-virtual {v0}, Lo/getWaivers;->ICustomTabsCallback()V

    goto :goto_0

    .line 321
    :cond_0
    iget-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->requestPostMessageChannel:Lo/getWaivers;

    invoke-virtual {v0}, Lo/getWaivers;->onPostMessage()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 323
    iget-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->requestPostMessageChannel:Lo/getWaivers;

    iget-wide v1, p0, Lo/component3;->asInterface:J

    invoke-virtual {v0, v1, v2}, Lo/getWaivers;->ICustomTabsCallback(J)V

    .line 325
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/component3;->onRelationshipValidationResult:Lo/EligibilityPayloadJsonAdapter;

    iget-object v1, p0, Lo/component3;->ICustomTabsCallback:Lo/PaymentRequestJsonAdapter;

    iget-boolean v2, p0, Lo/OrderStatusResponseJsonAdapter;->cancelAll:Z

    invoke-direct {p0, v0, v1, v2}, Lo/OrderStatusResponseJsonAdapter;->onPostMessage(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Z)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/Event;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub:Lo/Event;

    if-eqz v0, :cond_0

    .line 293
    iput-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->IPostMessageService$Stub$Proxy:Lo/Event;

    .line 294
    iput-boolean v1, p0, Lo/OrderStatusResponseJsonAdapter;->cancel:Z

    const/4 v0, 0x0

    .line 295
    iput-boolean v0, p0, Lo/OrderStatusResponseJsonAdapter;->getDefaultImpl:Z

    .line 296
    iget-object v0, p0, Lo/OrderStatusResponseJsonAdapter;->notify:Lo/PayCallResponseJsonAdapter;

    iget v2, p0, Lo/OrderStatusResponseJsonAdapter;->onTransact:I

    iget-boolean v3, p0, Lo/OrderStatusResponseJsonAdapter;->postMessage:Z

    invoke-virtual {v0, v2, v3, v1}, Lo/PayCallResponseJsonAdapter;->onPostMessage(IZZ)V

    .line 298
    :cond_0
    invoke-direct {p0}, Lo/OrderStatusResponseJsonAdapter;->asInterface()V

    .line 299
    iget-boolean v0, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Stub:Z

    if-nez v0, :cond_2

    .line 300
    iget-boolean v0, p0, Lo/OrderStatusResponseJsonAdapter;->mayLaunchUrl:Z

    if-nez v0, :cond_1

    .line 301
    invoke-direct {p0}, Lo/OrderStatusResponseJsonAdapter;->onRelationshipValidationResult()V

    .line 303
    :cond_1
    iput-boolean v1, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:Z

    :cond_2
    return-void
.end method

.method public final asBinder()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Stub$Proxy:Z

    return v0
.end method

.method public final extraCallback(Lo/PayCallResponseJsonAdapter;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lo/OrderStatusResponseJsonAdapter;->notify:Lo/PayCallResponseJsonAdapter;

    return-void
.end method

.method public final onTransact()V
    .locals 1

    const/4 v0, 0x1

    .line 287
    iput-boolean v0, p0, Lo/OrderStatusResponseJsonAdapter;->INotificationSideChannel$Stub:Z

    return-void
.end method
