.class final Lo/aE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/C;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/C<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final extraCallback:[I

.field private static final onNavigationEvent:Lsun/misc/Unsafe;


# instance fields
.field private final ICustomTabsCallback:[I

.field private final ICustomTabsCallback$Stub:Z

.field private final ICustomTabsCallback$Stub$Proxy:[I

.field private final ICustomTabsService:Z

.field private final asBinder:Lo/aD;

.field private final asInterface:Z

.field private final extraCommand:Lo/onShowCustomView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onShowCustomView<",
            "**>;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:I

.field private final newSession:I

.field private final onMessageChannelReady:[Ljava/lang/Object;

.field private final onPostMessage:I

.field private final onRelationshipValidationResult:Z

.field private final onTransact:I

.field private final postMessage:Lo/ConversationDetailActivity$19;

.field private final requestPostMessageChannel:Lo/ConversationDetailActivity$5;

.field private final updateVisuals:Lo/gg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/gg<",
            "*>;"
        }
    .end annotation
.end field

.field private final warmup:Lo/InterstitialActivity$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 2570
    sput-object v0, Lo/aE;->extraCallback:[I

    .line 2571
    invoke-static {}, Lo/c$b;->onNavigationEvent()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lo/aE;->onNavigationEvent:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILo/aD;ZZ[IIILo/InterstitialActivity$2;Lo/ConversationDetailActivity$19;Lo/onShowCustomView;Lo/gg;Lo/ConversationDetailActivity$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lo/aD;",
            "ZZ[III",
            "Lo/InterstitialActivity$2;",
            "Lo/ConversationDetailActivity$19;",
            "Lo/onShowCustomView<",
            "**>;",
            "Lo/gg<",
            "*>;",
            "Lo/ConversationDetailActivity$5;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/aE;->ICustomTabsCallback:[I

    .line 3
    iput-object p2, p0, Lo/aE;->onMessageChannelReady:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lo/aE;->onPostMessage:I

    .line 5
    iput p4, p0, Lo/aE;->onTransact:I

    .line 6
    instance-of p1, p5, Lo/fU;

    iput-boolean p1, p0, Lo/aE;->asInterface:Z

    .line 7
    iput-boolean p6, p0, Lo/aE;->onRelationshipValidationResult:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lo/gg;->onNavigationEvent(Lo/aD;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lo/aE;->ICustomTabsCallback$Stub:Z

    .line 9
    iput-boolean p1, p0, Lo/aE;->ICustomTabsService:Z

    .line 10
    iput-object p8, p0, Lo/aE;->ICustomTabsCallback$Stub$Proxy:[I

    .line 11
    iput p9, p0, Lo/aE;->getInterfaceDescriptor:I

    .line 12
    iput p10, p0, Lo/aE;->newSession:I

    .line 13
    iput-object p11, p0, Lo/aE;->warmup:Lo/InterstitialActivity$2;

    .line 14
    iput-object p12, p0, Lo/aE;->postMessage:Lo/ConversationDetailActivity$19;

    .line 15
    iput-object p13, p0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    .line 16
    iput-object p14, p0, Lo/aE;->updateVisuals:Lo/gg;

    .line 17
    iput-object p5, p0, Lo/aE;->asBinder:Lo/aD;

    .line 18
    iput-object p15, p0, Lo/aE;->requestPostMessageChannel:Lo/ConversationDetailActivity$5;

    return-void
.end method

.method private final ICustomTabsCallback(I)I
    .locals 1

    .line 2510
    iget-object v0, p0, Lo/aE;->ICustomTabsCallback:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static ICustomTabsCallback(Ljava/lang/Object;J)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 2513
    invoke-static {p0, p1, p2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final ICustomTabsCallback(Ljava/lang/Object;Lo/bh;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/bh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2079
    iget-boolean v3, v0, Lo/aE;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_0

    .line 2080
    iget-object v3, v0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v3, v1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object v3

    .line 2082
    iget-object v5, v3, Lo/av;->ICustomTabsCallback:Lo/B;

    invoke-virtual {v5}, Lo/B;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2084
    invoke-virtual {v3}, Lo/av;->extraCallback()Ljava/util/Iterator;

    move-result-object v3

    .line 2085
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2088
    :goto_0
    iget-object v6, v0, Lo/aE;->ICustomTabsCallback:[I

    array-length v6, v6

    .line 2089
    sget-object v7, Lo/aE;->onNavigationEvent:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    .line 2091
    invoke-direct {v0, v10}, Lo/aE;->onNavigationEvent(I)I

    move-result v13

    .line 2093
    iget-object v14, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v15, v14, v10

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    .line 2099
    iget-boolean v9, v0, Lo/aE;->onRelationshipValidationResult:Z

    if-nez v9, :cond_2

    const/16 v9, 0x11

    if-gt v4, v9, :cond_2

    add-int/lit8 v9, v10, 0x2

    .line 2100
    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v11, :cond_1

    int-to-long v11, v8

    .line 2104
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v8

    :cond_1
    ushr-int/lit8 v8, v9, 0x14

    const/4 v9, 0x1

    shl-int v8, v9, v8

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-eqz v5, :cond_4

    .line 2106
    iget-object v9, v0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v9, v5}, Lo/gg;->onNavigationEvent(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v15, :cond_4

    .line 2107
    iget-object v9, v0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v9, v2, v5}, Lo/gg;->ICustomTabsCallback(Lo/bh;Ljava/util/Map$Entry;)V

    .line 2108
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const v9, 0xfffff

    and-int/2addr v13, v9

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_0

    :cond_5
    :goto_3
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 2393
    :pswitch_0
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2395
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v8

    .line 2396
    invoke-interface {v2, v15, v4, v8}, Lo/bh;->onMessageChannelReady(ILjava/lang/Object;Lo/C;)V

    goto :goto_3

    .line 2391
    :pswitch_1
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2392
    invoke-static {v1, v13, v14}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->extraCallback(IJ)V

    goto :goto_3

    .line 2389
    :pswitch_2
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2390
    invoke-static {v1, v13, v14}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/bh;->asBinder(II)V

    goto :goto_3

    .line 2387
    :pswitch_3
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2388
    invoke-static {v1, v13, v14}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->ICustomTabsCallback(IJ)V

    goto :goto_3

    .line 2385
    :pswitch_4
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2386
    invoke-static {v1, v13, v14}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/bh;->onMessageChannelReady(II)V

    goto :goto_3

    .line 2383
    :pswitch_5
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2384
    invoke-static {v1, v13, v14}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/bh;->onNavigationEvent(II)V

    goto :goto_3

    .line 2381
    :pswitch_6
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2382
    invoke-static {v1, v13, v14}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/bh;->ICustomTabsCallback(II)V

    goto :goto_3

    .line 2379
    :pswitch_7
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2380
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ChannelListActivity$2;

    invoke-interface {v2, v15, v4}, Lo/bh;->extraCallback(ILo/ChannelListActivity$2;)V

    goto :goto_3

    .line 2375
    :pswitch_8
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2376
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2377
    invoke-direct {v0, v10}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lo/bh;->extraCallback(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_3

    .line 2373
    :pswitch_9
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2374
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lo/aE;->onNavigationEvent(ILjava/lang/Object;Lo/bh;)V

    goto/16 :goto_3

    .line 2371
    :pswitch_a
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2372
    invoke-static {v1, v13, v14}, Lo/aE;->onTransact(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/bh;->onMessageChannelReady(IZ)V

    goto/16 :goto_3

    .line 2369
    :pswitch_b
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2370
    invoke-static {v1, v13, v14}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/bh;->onPostMessage(II)V

    goto/16 :goto_3

    .line 2367
    :pswitch_c
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2368
    invoke-static {v1, v13, v14}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->onNavigationEvent(IJ)V

    goto/16 :goto_3

    .line 2365
    :pswitch_d
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2366
    invoke-static {v1, v13, v14}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/bh;->extraCallback(II)V

    goto/16 :goto_3

    .line 2363
    :pswitch_e
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2364
    invoke-static {v1, v13, v14}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->onMessageChannelReady(IJ)V

    goto/16 :goto_3

    .line 2361
    :pswitch_f
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2362
    invoke-static {v1, v13, v14}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->onPostMessage(IJ)V

    goto/16 :goto_3

    .line 2359
    :pswitch_10
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2360
    invoke-static {v1, v13, v14}, Lo/aE;->onPostMessage(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/bh;->onPostMessage(IF)V

    goto/16 :goto_3

    .line 2357
    :pswitch_11
    invoke-direct {v0, v1, v15, v10}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2358
    invoke-static {v1, v13, v14}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->onMessageChannelReady(ID)V

    goto/16 :goto_3

    .line 2355
    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v15, v4, v10}, Lo/aE;->extraCallback(Lo/bh;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 2349
    :pswitch_13
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2351
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2352
    invoke-direct {v0, v10}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v13

    .line 2353
    invoke-static {v4, v8, v2, v13}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;Lo/C;)V

    goto/16 :goto_3

    .line 2343
    :pswitch_14
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2344
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x1

    .line 2345
    invoke-static {v4, v8, v2, v15}, Lo/aM;->extraCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v15, 0x1

    .line 2337
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2338
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2339
    invoke-static {v4, v8, v2, v15}, Lo/aM;->asInterface(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v15, 0x1

    .line 2331
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2332
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2333
    invoke-static {v4, v8, v2, v15}, Lo/aM;->asBinder(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v15, 0x1

    .line 2325
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2326
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2327
    invoke-static {v4, v8, v2, v15}, Lo/aM;->ICustomTabsService(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v15, 0x1

    .line 2319
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2320
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2321
    invoke-static {v4, v8, v2, v15}, Lo/aM;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v15, 0x1

    .line 2313
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2314
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2315
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onTransact(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v15, 0x1

    .line 2307
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2308
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2309
    invoke-static {v4, v8, v2, v15}, Lo/aM;->warmup(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v15, 0x1

    .line 2301
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2302
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2303
    invoke-static {v4, v8, v2, v15}, Lo/aM;->getInterfaceDescriptor(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v15, 0x1

    .line 2295
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2296
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2297
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v15, 0x1

    .line 2289
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2290
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2291
    invoke-static {v4, v8, v2, v15}, Lo/aM;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v15, 0x1

    .line 2283
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2284
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2285
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onNavigationEvent(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v15, 0x1

    .line 2277
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2278
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2279
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onPostMessage(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v15, 0x1

    .line 2271
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2272
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2273
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onMessageChannelReady(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v15, 0x1

    .line 2265
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2266
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2267
    invoke-static {v4, v8, v2, v15}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 2259
    :pswitch_22
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2260
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 2261
    invoke-static {v4, v8, v2, v15}, Lo/aM;->extraCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_23
    const/4 v15, 0x0

    .line 2253
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2254
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2255
    invoke-static {v4, v8, v2, v15}, Lo/aM;->asInterface(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_24
    const/4 v15, 0x0

    .line 2247
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2248
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2249
    invoke-static {v4, v8, v2, v15}, Lo/aM;->asBinder(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_25
    const/4 v15, 0x0

    .line 2241
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2242
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2243
    invoke-static {v4, v8, v2, v15}, Lo/aM;->ICustomTabsService(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_26
    const/4 v15, 0x0

    .line 2235
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2236
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2237
    invoke-static {v4, v8, v2, v15}, Lo/aM;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_27
    const/4 v15, 0x0

    .line 2229
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2230
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2231
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onTransact(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 2223
    :pswitch_28
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2224
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2225
    invoke-static {v4, v8, v2}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;)V

    goto/16 :goto_3

    .line 2215
    :pswitch_29
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2217
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2218
    invoke-direct {v0, v10}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v13

    .line 2219
    invoke-static {v4, v8, v2, v13}, Lo/aM;->onPostMessage(ILjava/util/List;Lo/bh;Lo/C;)V

    goto/16 :goto_3

    .line 2209
    :pswitch_2a
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2210
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2211
    invoke-static {v4, v8, v2}, Lo/aM;->extraCallback(ILjava/util/List;Lo/bh;)V

    goto/16 :goto_3

    .line 2203
    :pswitch_2b
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2204
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 2205
    invoke-static {v4, v8, v2, v15}, Lo/aM;->warmup(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_2c
    const/4 v15, 0x0

    .line 2197
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2198
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2199
    invoke-static {v4, v8, v2, v15}, Lo/aM;->getInterfaceDescriptor(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_2d
    const/4 v15, 0x0

    .line 2191
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2192
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2193
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_2e
    const/4 v15, 0x0

    .line 2185
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2186
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2187
    invoke-static {v4, v8, v2, v15}, Lo/aM;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_2f
    const/4 v15, 0x0

    .line 2179
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2180
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2181
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onNavigationEvent(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_30
    const/4 v15, 0x0

    .line 2173
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2174
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2175
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onPostMessage(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_31
    const/4 v15, 0x0

    .line 2167
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2168
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2169
    invoke-static {v4, v8, v2, v15}, Lo/aM;->onMessageChannelReady(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_32
    const/4 v15, 0x0

    .line 2161
    iget-object v4, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v10

    .line 2162
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2163
    invoke-static {v4, v8, v2, v15}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    :pswitch_33
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2157
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v10}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v13

    .line 2158
    invoke-interface {v2, v15, v8, v13}, Lo/bh;->onMessageChannelReady(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2154
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->extraCallback(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2152
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/bh;->asBinder(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2150
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->ICustomTabsCallback(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2148
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/bh;->onMessageChannelReady(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2146
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/bh;->onNavigationEvent(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2144
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/bh;->ICustomTabsCallback(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2142
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/ChannelListActivity$2;

    invoke-interface {v2, v15, v8}, Lo/bh;->extraCallback(ILo/ChannelListActivity$2;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2138
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 2139
    invoke-direct {v0, v10}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lo/bh;->extraCallback(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2136
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v15, v8, v2}, Lo/aE;->onNavigationEvent(ILjava/lang/Object;Lo/bh;)V

    goto :goto_4

    :pswitch_3d
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2133
    invoke-static {v1, v13, v14}, Lo/c$b;->onPostMessage(Ljava/lang/Object;J)Z

    move-result v8

    .line 2134
    invoke-interface {v2, v15, v8}, Lo/bh;->onMessageChannelReady(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2130
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/bh;->onPostMessage(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2128
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->onNavigationEvent(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2126
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/bh;->extraCallback(II)V

    goto :goto_4

    :pswitch_41
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2124
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->onMessageChannelReady(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2122
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/bh;->onPostMessage(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2119
    invoke-static {v1, v13, v14}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result v8

    .line 2120
    invoke-interface {v2, v15, v8}, Lo/bh;->onPostMessage(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2115
    invoke-static {v1, v13, v14}, Lo/c$b;->onMessageChannelReady(Ljava/lang/Object;J)D

    move-result-wide v13

    .line 2116
    invoke-interface {v2, v15, v13, v14}, Lo/bh;->onMessageChannelReady(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 2399
    iget-object v4, v0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v4, v2, v5}, Lo/gg;->ICustomTabsCallback(Lo/bh;Ljava/util/Map$Entry;)V

    .line 2400
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_5

    :cond_8
    const/4 v5, 0x0

    goto :goto_5

    .line 2401
    :cond_9
    iget-object v3, v0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-static {v3, v1, v2}, Lo/aE;->onNavigationEvent(Lo/onShowCustomView;Ljava/lang/Object;Lo/bh;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final ICustomTabsCallback(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 2520
    invoke-direct {p0, p2}, Lo/aE;->ICustomTabsCallback(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_14

    .line 2523
    invoke-direct {p0, p2}, Lo/aE;->onNavigationEvent(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 2553
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2552
    :pswitch_0
    invoke-static {p1, v0, v1}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    .line 2551
    :pswitch_1
    invoke-static {p1, v0, v1}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v4

    .line 2550
    :pswitch_2
    invoke-static {p1, v0, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    .line 2549
    :pswitch_3
    invoke-static {p1, v0, v1}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4

    .line 2548
    :pswitch_4
    invoke-static {p1, v0, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    .line 2547
    :pswitch_5
    invoke-static {p1, v0, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    .line 2546
    :pswitch_6
    invoke-static {p1, v0, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    .line 2545
    :pswitch_7
    sget-object p2, Lo/ChannelListActivity$2;->onNavigationEvent:Lo/ChannelListActivity$2;

    invoke-static {p1, v0, v1}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/ChannelListActivity$2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    .line 2544
    :pswitch_8
    invoke-static {p1, v0, v1}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    .line 2538
    :pswitch_9
    invoke-static {p1, v0, v1}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 2539
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 2540
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    .line 2541
    :cond_a
    instance-of p2, p1, Lo/ChannelListActivity$2;

    if-eqz p2, :cond_c

    .line 2542
    sget-object p2, Lo/ChannelListActivity$2;->onNavigationEvent:Lo/ChannelListActivity$2;

    invoke-virtual {p2, p1}, Lo/ChannelListActivity$2;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    .line 2543
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 2537
    :pswitch_a
    invoke-static {p1, v0, v1}, Lo/c$b;->onPostMessage(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 2536
    :pswitch_b
    invoke-static {p1, v0, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    .line 2535
    :pswitch_c
    invoke-static {p1, v0, v1}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v5

    :cond_e
    return v4

    .line 2534
    :pswitch_d
    invoke-static {p1, v0, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    .line 2533
    :pswitch_e
    invoke-static {p1, v0, v1}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v5

    :cond_10
    return v4

    .line 2532
    :pswitch_f
    invoke-static {p1, v0, v1}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v4

    .line 2531
    :pswitch_10
    invoke-static {p1, v0, v1}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    .line 2530
    :pswitch_11
    invoke-static {p1, v0, v1}, Lo/c$b;->onMessageChannelReady(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_13

    return v5

    :cond_13
    return v4

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    .line 2555
    invoke-static {p1, v2, v3}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v5

    :cond_15
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final ICustomTabsCallback(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 2565
    invoke-direct {p0, p3}, Lo/aE;->ICustomTabsCallback(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2566
    invoke-static {p1, v0, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static extraCallback(Ljava/lang/Object;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 2514
    invoke-static {p0, p1, p2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final extraCallback(Lo/bh;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/bh;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2404
    iget-object v0, p0, Lo/aE;->requestPostMessageChannel:Lo/ConversationDetailActivity$5;

    .line 2405
    invoke-direct {p0, p4}, Lo/aE;->onPostMessage(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lo/ConversationDetailActivity$5;->ICustomTabsCallback(Ljava/lang/Object;)Lo/onLongClick;

    move-result-object p4

    iget-object v0, p0, Lo/aE;->requestPostMessageChannel:Lo/ConversationDetailActivity$5;

    .line 2406
    invoke-interface {v0, p3}, Lo/ConversationDetailActivity$5;->extraCallback(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2407
    invoke-interface {p1, p2, p4, p3}, Lo/bh;->onMessageChannelReady(ILo/onLongClick;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 2516
    invoke-direct {p0, p1, p3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1157
    invoke-static {p0, p1, p2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final onMessageChannelReady(I)Lo/C;
    .locals 3

    .line 2411
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 2412
    iget-object v0, p0, Lo/aE;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lo/C;

    if-eqz v0, :cond_0

    return-object v0

    .line 2415
    :cond_0
    invoke-static {}, Lo/PictureAttachmentActivity$a;->onPostMessage()Lo/PictureAttachmentActivity$a;

    move-result-object v0

    iget-object v1, p0, Lo/aE;->onMessageChannelReady:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lo/PictureAttachmentActivity$a;->extraCallback(Ljava/lang/Class;)Lo/C;

    move-result-object v0

    .line 2416
    iget-object v1, p0, Lo/aE;->onMessageChannelReady:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 553
    invoke-direct {p0, p3}, Lo/aE;->onNavigationEvent(I)I

    move-result v0

    .line 555
    iget-object v1, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 560
    invoke-direct {p0, p2, v1, p3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 562
    :cond_0
    invoke-static {p1, v2, v3}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 563
    invoke-static {p2, v2, v3}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 565
    invoke-static {v0, p2}, Lo/aw;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 566
    invoke-static {p1, v2, v3, p2}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 567
    invoke-direct {p0, p1, v1, p3}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 569
    invoke-static {p1, v2, v3, p2}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 570
    invoke-direct {p0, p1, v1, p3}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private static onNavigationEvent(Ljava/lang/Object;J)D
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 2511
    invoke-static {p0, p1, p2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final onNavigationEvent(I)I
    .locals 1

    .line 2509
    iget-object v0, p0, Lo/aE;->ICustomTabsCallback:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static onNavigationEvent(Lo/onShowCustomView;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onShowCustomView<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1155
    invoke-virtual {p0, p1}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1156
    invoke-virtual {p0, p1}, Lo/onShowCustomView;->onPostMessage(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(ILjava/lang/Object;Lo/bh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2505
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2506
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lo/bh;->onPostMessage(ILjava/lang/String;)V

    return-void

    .line 2507
    :cond_0
    check-cast p1, Lo/ChannelListActivity$2;

    invoke-interface {p2, p0, p1}, Lo/bh;->extraCallback(ILo/ChannelListActivity$2;)V

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 2567
    invoke-direct {p0, p3}, Lo/aE;->ICustomTabsCallback(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2568
    invoke-static {p1, v0, v1, p2}, Lo/c$b;->extraCallback(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 538
    invoke-direct {p0, p3}, Lo/aE;->onNavigationEvent(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 541
    invoke-direct {p0, p2, p3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 543
    :cond_0
    invoke-static {p1, v0, v1}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 544
    invoke-static {p2, v0, v1}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 546
    invoke-static {v2, p2}, Lo/aw;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 547
    invoke-static {p1, v0, v1, p2}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 548
    invoke-direct {p0, p1, p3}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 550
    invoke-static {p1, v0, v1, p2}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 551
    invoke-direct {p0, p1, p3}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method private static onNavigationEvent(Lo/onShowCustomView;Ljava/lang/Object;Lo/bh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onShowCustomView<",
            "TUT;TUB;>;TT;",
            "Lo/bh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2409
    invoke-virtual {p0, p1}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/onShowCustomView;->ICustomTabsCallback(Ljava/lang/Object;Lo/bh;)V

    return-void
.end method

.method private static onNavigationEvent(Ljava/lang/Object;ILo/C;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 2503
    invoke-static {p0, v0, v1}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2504
    invoke-interface {p2, p0}, Lo/C;->onPostMessage(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static onPostMessage(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 2512
    invoke-static {p0, p1, p2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final onPostMessage(I)Ljava/lang/Object;
    .locals 1

    .line 2418
    iget-object v0, p0, Lo/aE;->onMessageChannelReady:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private static onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 238
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 240
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 241
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 242
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 246
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static onPostMessage(Ljava/lang/Class;Lo/InterstitialActivity;Lo/InterstitialActivity$2;Lo/ConversationDetailActivity$19;Lo/onShowCustomView;Lo/gg;Lo/ConversationDetailActivity$5;)Lo/aE;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/InterstitialActivity;",
            "Lo/InterstitialActivity$2;",
            "Lo/ConversationDetailActivity$19;",
            "Lo/onShowCustomView<",
            "**>;",
            "Lo/gg<",
            "*>;",
            "Lo/ConversationDetailActivity$5;",
            ")",
            "Lo/aE<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    instance-of v1, v0, Lo/aK;

    if-eqz v1, :cond_34

    .line 21
    check-cast v0, Lo/aK;

    .line 22
    invoke-virtual {v0}, Lo/aK;->onMessageChannelReady()I

    move-result v1

    sget v2, Lo/aH;->extraCallback:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lo/aK;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    .line 30
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v5, v7, 0x1

    .line 33
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_4
    if-nez v7, :cond_5

    .line 49
    sget-object v7, Lo/aE;->extraCallback:[I

    move-object v14, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_b

    :cond_5
    add-int/lit8 v7, v5, 0x1

    .line 51
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_3
    add-int/lit8 v10, v7, 0x1

    .line 55
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_3

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7
    add-int/lit8 v9, v7, 0x1

    .line 60
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_4
    add-int/lit8 v12, v9, 0x1

    .line 64
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_4

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9
    add-int/lit8 v10, v9, 0x1

    .line 69
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v10, 0x1

    .line 73
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_5

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b
    add-int/lit8 v12, v10, 0x1

    .line 78
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 82
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    .line 87
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 91
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    .line 96
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 100
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    .line 105
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 109
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    .line 114
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v3, 0x1

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_a

    :cond_14
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    :cond_15
    add-int v3, v15, v13

    add-int/2addr v3, v14

    .line 123
    new-array v3, v3, [I

    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v14

    move-object v14, v3

    move v3, v5

    move/from16 v5, v16

    .line 125
    :goto_b
    sget-object v8, Lo/aE;->onNavigationEvent:Lsun/misc/Unsafe;

    .line 126
    invoke-virtual {v0}, Lo/aK;->onNavigationEvent()[Ljava/lang/Object;

    move-result-object v16

    .line 128
    invoke-virtual {v0}, Lo/aK;->extraCallback()Lo/aD;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v17, v5

    mul-int/lit8 v5, v12, 0x3

    .line 129
    new-array v5, v5, [I

    shl-int/2addr v12, v4

    .line 130
    new-array v12, v12, [Ljava/lang/Object;

    add-int v19, v15, v13

    move v13, v7

    move/from16 v21, v15

    move/from16 v7, v17

    move/from16 v22, v19

    const/16 v17, 0x0

    const/16 v20, 0x0

    :goto_c
    if-ge v7, v2, :cond_33

    add-int/lit8 v23, v7, 0x1

    .line 135
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v4, 0xd800

    if-lt v7, v4, :cond_17

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_d
    add-int/lit8 v25, v4, 0x1

    .line 139
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_16

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v23

    or-int/2addr v7, v2

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    shl-int v2, v4, v23

    or-int/2addr v7, v2

    move/from16 v2, v25

    goto :goto_e

    :cond_17
    move/from16 v26, v2

    move/from16 v2, v23

    :goto_e
    add-int/lit8 v4, v2, 0x1

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v23, v4

    const v4, 0xd800

    if-lt v2, v4, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_f
    add-int/lit8 v25, v4, 0x1

    .line 148
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_18

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v23

    or-int/2addr v2, v4

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v15, v27

    goto :goto_f

    :cond_18
    shl-int v4, v4, v23

    or-int/2addr v2, v4

    move/from16 v4, v25

    goto :goto_10

    :cond_19
    move/from16 v27, v15

    move/from16 v4, v23

    :goto_10
    and-int/lit16 v15, v2, 0xff

    move/from16 v23, v10

    and-int/lit16 v10, v2, 0x400

    if-eqz v10, :cond_1a

    add-int/lit8 v10, v17, 0x1

    .line 155
    aput v20, v14, v17

    move/from16 v17, v10

    :cond_1a
    const/16 v10, 0x33

    move/from16 v29, v9

    if-lt v15, v10, :cond_22

    add-int/lit8 v10, v4, 0x1

    .line 157
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v9, 0xd800

    if-lt v4, v9, :cond_1c

    and-int/lit16 v4, v4, 0x1fff

    const/16 v31, 0xd

    :goto_11
    add-int/lit8 v32, v10, 0x1

    .line 161
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v9, :cond_1b

    and-int/lit16 v9, v10, 0x1fff

    shl-int v9, v9, v31

    or-int/2addr v4, v9

    add-int/lit8 v31, v31, 0xd

    move/from16 v10, v32

    const v9, 0xd800

    goto :goto_11

    :cond_1b
    shl-int v9, v10, v31

    or-int/2addr v4, v9

    move/from16 v10, v32

    :cond_1c
    add-int/lit8 v9, v15, -0x33

    move/from16 v31, v10

    const/16 v10, 0x9

    if-eq v9, v10, :cond_1f

    const/16 v10, 0x11

    if-ne v9, v10, :cond_1d

    goto :goto_12

    :cond_1d
    const/16 v10, 0xc

    if-ne v9, v10, :cond_1e

    if-nez v11, :cond_1e

    .line 171
    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move v13, v10

    :cond_1e
    const/4 v10, 0x1

    goto :goto_13

    .line 168
    :cond_1f
    :goto_12
    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v24, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move/from16 v13, v24

    :goto_13
    shl-int/2addr v4, v10

    .line 173
    aget-object v9, v16, v4

    .line 174
    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_20

    .line 175
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_14

    .line 176
    :cond_20
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lo/aE;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 177
    aput-object v9, v16, v4

    .line 178
    :goto_14
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    add-int/lit8 v4, v4, 0x1

    .line 180
    aget-object v9, v16, v4

    move/from16 v25, v10

    .line 181
    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_21

    .line 182
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_15

    .line 183
    :cond_21
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lo/aE;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 184
    aput-object v9, v16, v4

    .line 185
    :goto_15
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v4, v9

    move-object/from16 v30, v1

    move v9, v4

    move v1, v11

    move-object/from16 v24, v12

    move/from16 v10, v25

    move/from16 v11, v31

    const/4 v4, 0x0

    const/16 v18, 0x1

    goto/16 :goto_1f

    :cond_22
    add-int/lit8 v9, v13, 0x1

    .line 188
    aget-object v10, v16, v13

    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lo/aE;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/16 v13, 0x9

    if-eq v15, v13, :cond_2a

    const/16 v13, 0x11

    if-ne v15, v13, :cond_23

    goto :goto_19

    :cond_23
    const/16 v13, 0x1b

    if-eq v15, v13, :cond_29

    const/16 v13, 0x31

    if-ne v15, v13, :cond_24

    goto :goto_17

    :cond_24
    const/16 v13, 0xc

    if-eq v15, v13, :cond_27

    const/16 v13, 0x1e

    if-eq v15, v13, :cond_27

    const/16 v13, 0x2c

    if-ne v15, v13, :cond_25

    goto :goto_16

    :cond_25
    const/16 v13, 0x32

    if-ne v15, v13, :cond_2b

    add-int/lit8 v13, v21, 0x1

    .line 197
    aput v20, v14, v21

    .line 198
    div-int/lit8 v21, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v21, v21, 0x1

    add-int/lit8 v25, v9, 0x1

    aget-object v9, v16, v9

    aput-object v9, v12, v21

    and-int/lit16 v9, v2, 0x800

    if-eqz v9, :cond_26

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v9, v25, 0x1

    .line 200
    aget-object v25, v16, v25

    aput-object v25, v12, v21

    move/from16 v21, v13

    goto :goto_1a

    :cond_26
    move/from16 v21, v13

    goto :goto_18

    :cond_27
    :goto_16
    if-nez v11, :cond_28

    .line 195
    div-int/lit8 v13, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v25, v9, 0x1

    aget-object v9, v16, v9

    aput-object v9, v12, v13

    goto :goto_18

    :cond_28
    const/16 v24, 0x1

    goto :goto_1a

    :cond_29
    :goto_17
    const/16 v24, 0x1

    .line 192
    div-int/lit8 v13, v20, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v25, v9, 0x1

    aget-object v9, v16, v9

    aput-object v9, v12, v13

    :goto_18
    move/from16 v13, v25

    goto :goto_1b

    :cond_2a
    :goto_19
    const/16 v24, 0x1

    .line 190
    div-int/lit8 v13, v20, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v12, v13

    :cond_2b
    :goto_1a
    move v13, v9

    .line 201
    :goto_1b
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    and-int/lit16 v9, v2, 0x1000

    move/from16 v25, v13

    const/16 v13, 0x1000

    if-ne v9, v13, :cond_2f

    const/16 v9, 0x11

    if-gt v15, v9, :cond_2f

    add-int/lit8 v9, v4, 0x1

    .line 204
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v13, 0xd800

    if-lt v4, v13, :cond_2d

    and-int/lit16 v4, v4, 0x1fff

    const/16 v18, 0xd

    :goto_1c
    add-int/lit8 v28, v9, 0x1

    .line 208
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v13, :cond_2c

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v18

    or-int/2addr v4, v9

    add-int/lit8 v18, v18, 0xd

    move/from16 v9, v28

    goto :goto_1c

    :cond_2c
    shl-int v9, v9, v18

    or-int/2addr v4, v9

    move/from16 v9, v28

    :cond_2d
    const/16 v18, 0x1

    shl-int/lit8 v24, v3, 0x1

    .line 213
    div-int/lit8 v28, v4, 0x20

    add-int v24, v24, v28

    .line 214
    aget-object v13, v16, v24

    move-object/from16 v30, v1

    .line 215
    instance-of v1, v13, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2e

    .line 216
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_1d

    .line 217
    :cond_2e
    check-cast v13, Ljava/lang/String;

    invoke-static {v6, v13}, Lo/aE;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 218
    aput-object v13, v16, v24

    :goto_1d
    move v1, v11

    move-object/from16 v24, v12

    .line 219
    invoke-virtual {v8, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v12, v11

    .line 220
    rem-int/lit8 v4, v4, 0x20

    move v11, v9

    move v9, v12

    goto :goto_1e

    :cond_2f
    move-object/from16 v30, v1

    move v1, v11

    move-object/from16 v24, v12

    const/16 v18, 0x1

    const v9, 0xfffff

    move v11, v4

    const/4 v4, 0x0

    :goto_1e
    const/16 v12, 0x12

    if-lt v15, v12, :cond_30

    const/16 v12, 0x31

    if-gt v15, v12, :cond_30

    add-int/lit8 v12, v22, 0x1

    .line 225
    aput v10, v14, v22

    move/from16 v22, v12

    :cond_30
    move/from16 v13, v25

    :goto_1f
    add-int/lit8 v12, v20, 0x1

    .line 226
    aput v7, v5, v20

    add-int/lit8 v7, v12, 0x1

    move/from16 v20, v3

    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_31

    const/high16 v3, 0x20000000

    goto :goto_20

    :cond_31
    const/4 v3, 0x0

    :goto_20
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_32

    const/high16 v2, 0x10000000

    goto :goto_21

    :cond_32
    const/4 v2, 0x0

    :goto_21
    or-int/2addr v2, v3

    shl-int/lit8 v3, v15, 0x14

    or-int/2addr v2, v3

    or-int/2addr v2, v10

    .line 229
    aput v2, v5, v12

    add-int/lit8 v2, v7, 0x1

    shl-int/lit8 v3, v4, 0x14

    or-int/2addr v3, v9

    .line 230
    aput v3, v5, v7

    move v7, v11

    move/from16 v3, v20

    move/from16 v10, v23

    move-object/from16 v12, v24

    move/from16 v15, v27

    move/from16 v9, v29

    const/4 v4, 0x1

    move v11, v1

    move/from16 v20, v2

    move/from16 v2, v26

    move-object/from16 v1, v30

    goto/16 :goto_c

    :cond_33
    move/from16 v29, v9

    move/from16 v23, v10

    move v1, v11

    move-object/from16 v24, v12

    move/from16 v27, v15

    .line 232
    new-instance v2, Lo/aE;

    .line 233
    invoke-virtual {v0}, Lo/aK;->extraCallback()Lo/aD;

    move-result-object v10

    const/4 v12, 0x0

    move-object v0, v5

    move-object v5, v2

    move-object v6, v0

    move-object/from16 v7, v24

    move/from16 v8, v29

    move/from16 v9, v23

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v19

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lo/aE;-><init>([I[Ljava/lang/Object;IILo/aD;ZZ[IIILo/InterstitialActivity$2;Lo/ConversationDetailActivity$19;Lo/onShowCustomView;Lo/gg;Lo/ConversationDetailActivity$5;)V

    return-object v2

    .line 235
    :cond_34
    check-cast v0, Lo/c$1;

    .line 236
    invoke-virtual {v0}, Lo/c$1;->onMessageChannelReady()I

    move-result v0

    sget v1, Lo/aH;->extraCallback:I

    .line 237
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final onPostMessage(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 2556
    invoke-direct {p0, p2}, Lo/aE;->ICustomTabsCallback(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v2, p2

    .line 2562
    invoke-static {p1, v0, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 2563
    invoke-static {p1, v0, v1, p2}, Lo/c$b;->extraCallback(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final onPostMessage(Ljava/lang/Object;IIII)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 2518
    invoke-direct {p0, p1, p2}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static onTransact(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 2515
    invoke-static {p0, p1, p2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lo/aE;->ICustomTabsCallback:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 348
    invoke-direct {p0, v1}, Lo/aE;->onNavigationEvent(I)I

    move-result v3

    .line 350
    iget-object v4, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 446
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 447
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 448
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 444
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 445
    invoke-static {p1, v5, v6}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 442
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 443
    invoke-static {p1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 440
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 441
    invoke-static {p1, v5, v6}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 438
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 439
    invoke-static {p1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 436
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 437
    invoke-static {p1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 434
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 435
    invoke-static {p1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 432
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 433
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 428
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 429
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 430
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 425
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 427
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 423
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 424
    invoke-static {p1, v5, v6}, Lo/aE;->onTransact(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lo/aw;->ICustomTabsCallback(Z)I

    move-result v3

    goto/16 :goto_2

    .line 421
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 422
    invoke-static {p1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 419
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 420
    invoke-static {p1, v5, v6}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 417
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 418
    invoke-static {p1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 415
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 416
    invoke-static {p1, v5, v6}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 413
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 414
    invoke-static {p1, v5, v6}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 411
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 412
    invoke-static {p1, v5, v6}, Lo/aE;->onPostMessage(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 408
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 410
    invoke-static {p1, v5, v6}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 406
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 404
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 399
    :pswitch_14
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 401
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 396
    invoke-static {p1, v5, v6}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 394
    invoke-static {p1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 392
    invoke-static {p1, v5, v6}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 390
    invoke-static {p1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 388
    invoke-static {p1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 386
    invoke-static {p1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 384
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 379
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 381
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 376
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 374
    invoke-static {p1, v5, v6}, Lo/c$b;->onPostMessage(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lo/aw;->ICustomTabsCallback(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 372
    invoke-static {p1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 370
    invoke-static {p1, v5, v6}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 368
    invoke-static {p1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 366
    invoke-static {p1, v5, v6}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 364
    invoke-static {p1, v5, v6}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 362
    invoke-static {p1, v5, v6}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 359
    invoke-static {p1, v5, v6}, Lo/c$b;->onMessageChannelReady(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 360
    invoke-static {v3, v4}, Lo/aw;->ICustomTabsCallback(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 450
    iget-object v0, p0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-virtual {v0, p1}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 451
    iget-boolean v0, p0, Lo/aE;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 452
    iget-object v0, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v0, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object p1

    invoke-virtual {p1}, Lo/av;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 456
    :goto_0
    iget-object v1, p0, Lo/aE;->ICustomTabsCallback:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 458
    invoke-direct {p0, v0}, Lo/aE;->onNavigationEvent(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 463
    iget-object v4, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 532
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 529
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    invoke-static {p2, v2, v3}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 531
    invoke-direct {p0, p1, v4, v0}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 527
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 524
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-static {p2, v2, v3}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 526
    invoke-direct {p0, p1, v4, v0}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 522
    :pswitch_4
    iget-object v1, p0, Lo/aE;->requestPostMessageChannel:Lo/ConversationDetailActivity$5;

    invoke-static {v1, p1, p2, v2, v3}, Lo/aM;->ICustomTabsCallback(Lo/ConversationDetailActivity$5;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 520
    :pswitch_5
    iget-object v1, p0, Lo/aE;->postMessage:Lo/ConversationDetailActivity$19;

    invoke-virtual {v1, p1, p2, v2, v3}, Lo/ConversationDetailActivity$19;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 518
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 515
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    invoke-static {p2, v2, v3}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 517
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 512
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-static {p2, v2, v3}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;JI)V

    .line 514
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 509
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-static {p2, v2, v3}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 511
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 506
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    invoke-static {p2, v2, v3}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;JI)V

    .line 508
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 503
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-static {p2, v2, v3}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;JI)V

    .line 505
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 500
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 501
    invoke-static {p2, v2, v3}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;JI)V

    .line 502
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 497
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-static {p2, v2, v3}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 499
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 495
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 492
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-static {p2, v2, v3}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 494
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 489
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    invoke-static {p2, v2, v3}, Lo/c$b;->onPostMessage(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->onMessageChannelReady(Ljava/lang/Object;JZ)V

    .line 491
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 486
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-static {p2, v2, v3}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;JI)V

    .line 488
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto :goto_1

    .line 483
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    invoke-static {p2, v2, v3}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 485
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto :goto_1

    .line 480
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    invoke-static {p2, v2, v3}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->extraCallback(Ljava/lang/Object;JI)V

    .line 482
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto :goto_1

    .line 477
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-static {p2, v2, v3}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 479
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto :goto_1

    .line 474
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-static {p2, v2, v3}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 476
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto :goto_1

    .line 471
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-static {p2, v2, v3}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;JF)V

    .line 473
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    goto :goto_1

    .line 468
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-static {p2, v2, v3}, Lo/c$b;->onMessageChannelReady(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JD)V

    .line 470
    invoke-direct {p0, p1, v0}, Lo/aE;->onPostMessage(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 534
    :cond_1
    iget-object v0, p0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-static {v0, p1, p2}, Lo/aM;->onNavigationEvent(Lo/onShowCustomView;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 535
    iget-boolean v0, p0, Lo/aE;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-static {v0, p1, p2}, Lo/aM;->extraCallback(Lo/gg;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 455
    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lo/aE;->ICustomTabsCallback:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 251
    invoke-direct {p0, v2}, Lo/aE;->onNavigationEvent(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 325
    :pswitch_0
    invoke-direct {p0, v2}, Lo/aE;->ICustomTabsCallback(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 326
    invoke-static {p1, v4, v5}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v8

    .line 327
    invoke-static {p2, v4, v5}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 329
    invoke-static {p1, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 330
    invoke-static {v4, v5}, Lo/aM;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 322
    :pswitch_1
    invoke-static {p1, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 323
    invoke-static {v3, v4}, Lo/aM;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 319
    :pswitch_2
    invoke-static {p1, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 320
    invoke-static {v3, v4}, Lo/aM;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 314
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    invoke-static {p1, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 316
    invoke-static {v4, v5}, Lo/aM;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 311
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    invoke-static {p1, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 308
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 309
    invoke-static {p1, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 305
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    invoke-static {p1, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 302
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    invoke-static {p1, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 299
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 300
    invoke-static {p1, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 296
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-static {p1, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 292
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 293
    invoke-static {p1, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 294
    invoke-static {v4, v5}, Lo/aM;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 288
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    invoke-static {p1, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 290
    invoke-static {v4, v5}, Lo/aM;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 284
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    invoke-static {p1, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 286
    invoke-static {v4, v5}, Lo/aM;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 281
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    invoke-static {p1, v6, v7}, Lo/c$b;->onPostMessage(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lo/c$b;->onPostMessage(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 278
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    invoke-static {p1, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 275
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    invoke-static {p1, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 272
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    invoke-static {p1, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 269
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    invoke-static {p1, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 266
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 267
    invoke-static {p1, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 262
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    invoke-static {p1, v6, v7}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 264
    invoke-static {p2, v6, v7}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 258
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lo/aE;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    invoke-static {p1, v6, v7}, Lo/c$b;->onMessageChannelReady(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 260
    invoke-static {p2, v6, v7}, Lo/c$b;->onMessageChannelReady(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    :cond_0
    :goto_1
    const/4 v3, 0x0

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    .line 336
    :cond_3
    iget-object v0, p0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-virtual {v0, p1}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    iget-object v2, p0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-virtual {v2, p2}, Lo/onShowCustomView;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 340
    :cond_4
    iget-boolean v0, p0, Lo/aE;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_5

    .line 341
    iget-object v0, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v0, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object p1

    .line 342
    iget-object v0, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v0, p2}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object p2

    .line 343
    invoke-virtual {p1, p2}, Lo/av;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2419
    iget v0, p0, Lo/aE;->getInterfaceDescriptor:I

    :goto_0
    iget v1, p0, Lo/aE;->newSession:I

    if-ge v0, v1, :cond_1

    .line 2420
    iget-object v1, p0, Lo/aE;->ICustomTabsCallback$Stub$Proxy:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lo/aE;->onNavigationEvent(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2423
    invoke-static {p1, v1, v2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2425
    iget-object v4, p0, Lo/aE;->requestPostMessageChannel:Lo/ConversationDetailActivity$5;

    invoke-interface {v4, v3}, Lo/ConversationDetailActivity$5;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lo/c$b;->onPostMessage(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2427
    :cond_1
    iget-object v0, p0, Lo/aE;->ICustomTabsCallback$Stub$Proxy:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 2429
    iget-object v2, p0, Lo/aE;->postMessage:Lo/ConversationDetailActivity$19;

    iget-object v3, p0, Lo/aE;->ICustomTabsCallback$Stub$Proxy:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lo/ConversationDetailActivity$19;->extraCallback(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2431
    :cond_2
    iget-object v0, p0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-virtual {v0, p1}, Lo/onShowCustomView;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 2432
    iget-boolean v0, p0, Lo/aE;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_3

    .line 2433
    iget-object v0, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v0, p1}, Lo/gg;->onNavigationEvent(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 572
    iget-boolean v2, v0, Lo/aE;->onRelationshipValidationResult:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_5

    .line 573
    sget-object v2, Lo/aE;->onNavigationEvent:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 575
    :goto_0
    iget-object v14, v0, Lo/aE;->ICustomTabsCallback:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4

    .line 576
    invoke-direct {v0, v12}, Lo/aE;->onNavigationEvent(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 581
    iget-object v3, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v3, v3, v12

    and-int/2addr v14, v7

    int-to-long v5, v14

    .line 586
    sget-object v14, Lo/eB;->onMessageChannelReady:Lo/eB;

    .line 587
    invoke-virtual {v14}, Lo/eB;->onNavigationEvent()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lo/eB;->ICustomTabsCallback:Lo/eB;

    .line 588
    invoke-virtual {v14}, Lo/eB;->onNavigationEvent()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 589
    iget-object v14, v0, Lo/aE;->ICustomTabsCallback:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    :cond_0
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_3

    .line 838
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 840
    invoke-static {v1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/aD;

    .line 841
    invoke-direct {v0, v12}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v6

    .line 842
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(ILo/aD;Lo/C;)I

    move-result v3

    goto/16 :goto_2

    .line 836
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 837
    invoke-static {v1, v5, v6}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 834
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 835
    invoke-static {v1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(II)I

    move-result v3

    goto/16 :goto_2

    .line 832
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 833
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asInterface(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 830
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 831
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onRelationshipValidationResult(II)I

    move-result v3

    goto/16 :goto_2

    .line 828
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 829
    invoke-static {v1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub$Proxy(II)I

    move-result v3

    goto/16 :goto_2

    .line 826
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 827
    invoke-static {v1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub(II)I

    move-result v3

    goto/16 :goto_2

    .line 822
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 824
    invoke-static {v1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ChannelListActivity$2;

    .line 825
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(ILo/ChannelListActivity$2;)I

    move-result v3

    goto/16 :goto_2

    .line 818
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 819
    invoke-static {v1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 820
    invoke-direct {v0, v12}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lo/aM;->extraCallback(ILjava/lang/Object;Lo/C;)I

    move-result v3

    goto/16 :goto_2

    .line 812
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 813
    invoke-static {v1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 814
    instance-of v6, v5, Lo/ChannelListActivity$2;

    if-eqz v6, :cond_1

    .line 815
    check-cast v5, Lo/ChannelListActivity$2;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(ILo/ChannelListActivity$2;)I

    move-result v3

    goto/16 :goto_2

    .line 816
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    .line 810
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 811
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(IZ)I

    move-result v3

    goto/16 :goto_2

    .line 808
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 809
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onTransact(II)I

    move-result v3

    goto/16 :goto_2

    .line 806
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 807
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 804
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 805
    invoke-static {v1, v5, v6}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asInterface(II)I

    move-result v3

    goto/16 :goto_2

    .line 802
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 803
    invoke-static {v1, v5, v6}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onMessageChannelReady(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 800
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 801
    invoke-static {v1, v5, v6}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 798
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 799
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(IF)I

    move-result v3

    goto/16 :goto_2

    .line 796
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x0

    .line 797
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onMessageChannelReady(ID)I

    move-result v3

    goto/16 :goto_2

    .line 792
    :pswitch_12
    iget-object v14, v0, Lo/aE;->requestPostMessageChannel:Lo/ConversationDetailActivity$5;

    .line 793
    invoke-static {v1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/aE;->onPostMessage(I)Ljava/lang/Object;

    move-result-object v6

    .line 794
    invoke-interface {v14, v3, v5, v6}, Lo/ConversationDetailActivity$5;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_2

    .line 789
    :pswitch_13
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v6

    .line 790
    invoke-static {v3, v5, v6}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/C;)I

    move-result v3

    goto/16 :goto_2

    .line 782
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 783
    invoke-static {v5}, Lo/aM;->onMessageChannelReady(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 786
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 787
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto/16 :goto_1

    .line 775
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 776
    invoke-static {v5}, Lo/aM;->asBinder(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 779
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 780
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto/16 :goto_1

    .line 768
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 769
    invoke-static {v5}, Lo/aM;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 772
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 773
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto/16 :goto_1

    .line 761
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 762
    invoke-static {v5}, Lo/aM;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 765
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 766
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto/16 :goto_1

    .line 754
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 755
    invoke-static {v5}, Lo/aM;->onNavigationEvent(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 758
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 759
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto/16 :goto_1

    .line 747
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 748
    invoke-static {v5}, Lo/aM;->onTransact(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 751
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 752
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto/16 :goto_1

    .line 740
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 741
    invoke-static {v5}, Lo/aM;->asInterface(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 744
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 745
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto/16 :goto_1

    .line 733
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 734
    invoke-static {v5}, Lo/aM;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 737
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 738
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto/16 :goto_1

    .line 726
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 727
    invoke-static {v5}, Lo/aM;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 730
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 731
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto :goto_1

    .line 719
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 720
    invoke-static {v5}, Lo/aM;->ICustomTabsCallback(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 723
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 724
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto :goto_1

    .line 712
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 713
    invoke-static {v5}, Lo/aM;->onPostMessage(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 716
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 717
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto :goto_1

    .line 705
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 706
    invoke-static {v5}, Lo/aM;->extraCallback(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 709
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 710
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto :goto_1

    .line 698
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 699
    invoke-static {v5}, Lo/aM;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 702
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 703
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    goto :goto_1

    .line 691
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 692
    invoke-static {v5}, Lo/aM;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_3

    .line 695
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v3

    .line 696
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v6

    :goto_1
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_2

    .line 688
    :pswitch_22
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->extraCallback(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    .line 684
    :pswitch_23
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 685
    invoke-static {v3, v5, v11}, Lo/aM;->asInterface(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    .line 681
    :pswitch_24
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->onTransact(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    .line 679
    :pswitch_25
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    .line 676
    :pswitch_26
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 677
    invoke-static {v3, v5, v11}, Lo/aM;->onPostMessage(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_2

    .line 672
    :pswitch_27
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 673
    invoke-static {v3, v5, v11}, Lo/aM;->ICustomTabsCallback$Stub(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    .line 668
    :pswitch_28
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 669
    invoke-static {v3, v5}, Lo/aM;->extraCallback(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 664
    :pswitch_29
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v6

    .line 665
    invoke-static {v3, v5, v6}, Lo/aM;->extraCallback(ILjava/util/List;Lo/C;)I

    move-result v3

    goto :goto_2

    .line 661
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lo/aM;->onPostMessage(ILjava/util/List;)I

    move-result v3

    goto :goto_2

    .line 659
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->asBinder(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    .line 657
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    .line 655
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->onTransact(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    .line 652
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 653
    invoke-static {v3, v5, v11}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    .line 649
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->onNavigationEvent(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    .line 646
    :pswitch_30
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->onMessageChannelReady(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    .line 643
    :pswitch_31
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v3

    goto :goto_2

    .line 641
    :pswitch_32
    invoke-static {v1, v5, v6}, Lo/aE;->onMessageChannelReady(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/aM;->onTransact(ILjava/util/List;Z)I

    move-result v3

    :goto_2
    add-int/2addr v13, v3

    goto/16 :goto_3

    .line 636
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 638
    invoke-static {v1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/aD;

    .line 639
    invoke-direct {v0, v12}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v6

    .line 640
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(ILo/aD;Lo/C;)I

    move-result v3

    goto :goto_2

    .line 633
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 635
    invoke-static {v1, v5, v6}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(IJ)I

    move-result v3

    goto :goto_2

    .line 631
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 632
    invoke-static {v1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(II)I

    move-result v3

    goto :goto_2

    .line 629
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 630
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asInterface(IJ)I

    move-result v3

    goto :goto_2

    .line 627
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 628
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onRelationshipValidationResult(II)I

    move-result v3

    goto :goto_2

    .line 625
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 626
    invoke-static {v1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub$Proxy(II)I

    move-result v3

    goto :goto_2

    .line 623
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 624
    invoke-static {v1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub(II)I

    move-result v3

    goto :goto_2

    .line 619
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 620
    invoke-static {v1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/ChannelListActivity$2;

    .line 621
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(ILo/ChannelListActivity$2;)I

    move-result v3

    goto :goto_2

    .line 615
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 616
    invoke-static {v1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 617
    invoke-direct {v0, v12}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lo/aM;->extraCallback(ILjava/lang/Object;Lo/C;)I

    move-result v3

    goto/16 :goto_2

    .line 609
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 610
    invoke-static {v1, v5, v6}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 611
    instance-of v6, v5, Lo/ChannelListActivity$2;

    if-eqz v6, :cond_2

    .line 612
    check-cast v5, Lo/ChannelListActivity$2;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(ILo/ChannelListActivity$2;)I

    move-result v3

    goto/16 :goto_2

    .line 613
    :cond_2
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    .line 607
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 608
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(IZ)I

    move-result v3

    goto/16 :goto_2

    .line 605
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 606
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onTransact(II)I

    move-result v3

    goto/16 :goto_2

    .line 603
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 604
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 601
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 602
    invoke-static {v1, v5, v6}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asInterface(II)I

    move-result v3

    goto/16 :goto_2

    .line 598
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 600
    invoke-static {v1, v5, v6}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onMessageChannelReady(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 596
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 597
    invoke-static {v1, v5, v6}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(IJ)I

    move-result v3

    goto/16 :goto_2

    .line 594
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 595
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(IF)I

    move-result v3

    goto/16 :goto_2

    .line 592
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x0

    .line 593
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onMessageChannelReady(ID)I

    move-result v3

    goto/16 :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 844
    :cond_4
    iget-object v2, v0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-static {v2, v1}, Lo/aE;->onNavigationEvent(Lo/onShowCustomView;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 847
    :cond_5
    sget-object v2, Lo/aE;->onNavigationEvent:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v12, 0x0

    .line 850
    :goto_4
    iget-object v13, v0, Lo/aE;->ICustomTabsCallback:[I

    array-length v13, v13

    if-ge v3, v13, :cond_d

    .line 851
    invoke-direct {v0, v3}, Lo/aE;->onNavigationEvent(I)I

    move-result v13

    .line 853
    iget-object v14, v0, Lo/aE;->ICustomTabsCallback:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_6

    add-int/lit8 v11, v3, 0x2

    .line 860
    aget v11, v14, v11

    and-int v14, v11, v7

    ushr-int/lit8 v11, v11, 0x14

    shl-int v11, v8, v11

    if-eq v14, v6, :cond_7

    int-to-long v8, v14

    .line 865
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    move v12, v6

    move v6, v14

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    :cond_7
    :goto_5
    and-int v8, v13, v7

    int-to-long v8, v8

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_a

    .line 1134
    :pswitch_45
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1136
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/aD;

    .line 1137
    invoke-direct {v0, v3}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v8

    .line 1138
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(ILo/aD;Lo/C;)I

    move-result v4

    goto/16 :goto_9

    .line 1132
    :pswitch_46
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1133
    invoke-static {v1, v8, v9}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1130
    :pswitch_47
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1131
    invoke-static {v1, v8, v9}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(II)I

    move-result v4

    goto/16 :goto_9

    .line 1128
    :pswitch_48
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v8, 0x0

    .line 1129
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asInterface(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1126
    :pswitch_49
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    .line 1127
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onRelationshipValidationResult(II)I

    move-result v8

    goto/16 :goto_d

    .line 1124
    :pswitch_4a
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1125
    invoke-static {v1, v8, v9}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub$Proxy(II)I

    move-result v4

    goto/16 :goto_9

    .line 1122
    :pswitch_4b
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1123
    invoke-static {v1, v8, v9}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub(II)I

    move-result v4

    goto/16 :goto_9

    .line 1118
    :pswitch_4c
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1120
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ChannelListActivity$2;

    .line 1121
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(ILo/ChannelListActivity$2;)I

    move-result v4

    goto/16 :goto_9

    .line 1114
    :pswitch_4d
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1115
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1116
    invoke-direct {v0, v3}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lo/aM;->extraCallback(ILjava/lang/Object;Lo/C;)I

    move-result v4

    goto/16 :goto_9

    .line 1108
    :pswitch_4e
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1109
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1110
    instance-of v8, v4, Lo/ChannelListActivity$2;

    if-eqz v8, :cond_8

    .line 1111
    check-cast v4, Lo/ChannelListActivity$2;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(ILo/ChannelListActivity$2;)I

    move-result v4

    goto/16 :goto_9

    .line 1112
    :cond_8
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_9

    .line 1106
    :pswitch_4f
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    .line 1107
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(IZ)I

    move-result v8

    goto/16 :goto_d

    .line 1104
    :pswitch_50
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    .line 1105
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onTransact(II)I

    move-result v8

    goto/16 :goto_d

    .line 1102
    :pswitch_51
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v8, 0x0

    .line 1103
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1100
    :pswitch_52
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1101
    invoke-static {v1, v8, v9}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asInterface(II)I

    move-result v4

    goto/16 :goto_9

    .line 1098
    :pswitch_53
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1099
    invoke-static {v1, v8, v9}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onMessageChannelReady(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1096
    :pswitch_54
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1097
    invoke-static {v1, v8, v9}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1094
    :pswitch_55
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    .line 1095
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(IF)I

    move-result v8

    goto/16 :goto_d

    .line 1092
    :pswitch_56
    invoke-direct {v0, v1, v15, v3}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_a

    const-wide/16 v8, 0x0

    .line 1093
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onMessageChannelReady(ID)I

    move-result v4

    goto/16 :goto_9

    .line 1088
    :pswitch_57
    iget-object v4, v0, Lo/aE;->requestPostMessageChannel:Lo/ConversationDetailActivity$5;

    .line 1089
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v3}, Lo/aE;->onPostMessage(I)Ljava/lang/Object;

    move-result-object v9

    .line 1090
    invoke-interface {v4, v15, v8, v9}, Lo/ConversationDetailActivity$5;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_9

    .line 1084
    :pswitch_58
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1085
    invoke-direct {v0, v3}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v8

    .line 1086
    invoke-static {v15, v4, v8}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/C;)I

    move-result v4

    goto/16 :goto_9

    .line 1077
    :pswitch_59
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1078
    invoke-static {v4}, Lo/aM;->onMessageChannelReady(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1081
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1082
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto/16 :goto_6

    .line 1070
    :pswitch_5a
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1071
    invoke-static {v4}, Lo/aM;->asBinder(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1074
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1075
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto/16 :goto_6

    .line 1063
    :pswitch_5b
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1064
    invoke-static {v4}, Lo/aM;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1067
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1068
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto/16 :goto_6

    .line 1056
    :pswitch_5c
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1057
    invoke-static {v4}, Lo/aM;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1060
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1061
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto/16 :goto_6

    .line 1049
    :pswitch_5d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1050
    invoke-static {v4}, Lo/aM;->onNavigationEvent(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1053
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1054
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto/16 :goto_6

    .line 1042
    :pswitch_5e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1043
    invoke-static {v4}, Lo/aM;->onTransact(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1046
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1047
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto/16 :goto_6

    .line 1035
    :pswitch_5f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1036
    invoke-static {v4}, Lo/aM;->asInterface(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1039
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1040
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto/16 :goto_6

    .line 1028
    :pswitch_60
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1029
    invoke-static {v4}, Lo/aM;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1032
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1033
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto/16 :goto_6

    .line 1021
    :pswitch_61
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1022
    invoke-static {v4}, Lo/aM;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1025
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1026
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto :goto_6

    .line 1014
    :pswitch_62
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1015
    invoke-static {v4}, Lo/aM;->ICustomTabsCallback(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1018
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1019
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto :goto_6

    .line 1007
    :pswitch_63
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1008
    invoke-static {v4}, Lo/aM;->onPostMessage(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1011
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1012
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto :goto_6

    .line 1000
    :pswitch_64
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1001
    invoke-static {v4}, Lo/aM;->extraCallback(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 1004
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 1005
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto :goto_6

    .line 993
    :pswitch_65
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 994
    invoke-static {v4}, Lo/aM;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 997
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 998
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    goto :goto_6

    .line 986
    :pswitch_66
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 987
    invoke-static {v4}, Lo/aM;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_a

    .line 990
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result v8

    .line 991
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(I)I

    move-result v9

    :goto_6
    add-int/2addr v8, v9

    add-int/2addr v8, v4

    goto/16 :goto_d

    .line 982
    :pswitch_67
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 983
    invoke-static {v15, v4, v10}, Lo/aM;->extraCallback(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_7

    :pswitch_68
    const/4 v10, 0x0

    .line 978
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 979
    invoke-static {v15, v4, v10}, Lo/aM;->asInterface(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_7

    :pswitch_69
    const/4 v10, 0x0

    .line 974
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 975
    invoke-static {v15, v4, v10}, Lo/aM;->onTransact(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_7

    :pswitch_6a
    const/4 v10, 0x0

    .line 970
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 971
    invoke-static {v15, v4, v10}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_7

    :pswitch_6b
    const/4 v10, 0x0

    .line 966
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 967
    invoke-static {v15, v4, v10}, Lo/aM;->onPostMessage(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_7

    :pswitch_6c
    const/4 v10, 0x0

    .line 962
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 963
    invoke-static {v15, v4, v10}, Lo/aM;->ICustomTabsCallback$Stub(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    .line 958
    :pswitch_6d
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 959
    invoke-static {v15, v4}, Lo/aM;->extraCallback(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_9

    .line 954
    :pswitch_6e
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v8

    .line 955
    invoke-static {v15, v4, v8}, Lo/aM;->extraCallback(ILjava/util/List;Lo/C;)I

    move-result v4

    goto/16 :goto_9

    .line 951
    :pswitch_6f
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lo/aM;->onPostMessage(ILjava/util/List;)I

    move-result v4

    goto :goto_9

    .line 947
    :pswitch_70
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v10, 0x0

    .line 948
    invoke-static {v15, v4, v10}, Lo/aM;->asBinder(ILjava/util/List;Z)I

    move-result v4

    goto :goto_7

    :pswitch_71
    const/4 v10, 0x0

    .line 943
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 944
    invoke-static {v15, v4, v10}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v4

    goto :goto_7

    :pswitch_72
    const/4 v10, 0x0

    .line 939
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 940
    invoke-static {v15, v4, v10}, Lo/aM;->onTransact(ILjava/util/List;Z)I

    move-result v4

    goto :goto_7

    :pswitch_73
    const/4 v10, 0x0

    .line 935
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 936
    invoke-static {v15, v4, v10}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Z)I

    move-result v4

    goto :goto_7

    :pswitch_74
    const/4 v10, 0x0

    .line 931
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 932
    invoke-static {v15, v4, v10}, Lo/aM;->onNavigationEvent(ILjava/util/List;Z)I

    move-result v4

    goto :goto_7

    :pswitch_75
    const/4 v10, 0x0

    .line 927
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 928
    invoke-static {v15, v4, v10}, Lo/aM;->onMessageChannelReady(ILjava/util/List;Z)I

    move-result v4

    goto :goto_7

    :pswitch_76
    const/4 v10, 0x0

    .line 923
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 924
    invoke-static {v15, v4, v10}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v4

    :goto_7
    add-int/2addr v5, v4

    const/4 v4, 0x1

    :cond_9
    :goto_8
    const-wide/16 v7, 0x0

    goto :goto_c

    :pswitch_77
    const/4 v10, 0x0

    .line 919
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 920
    invoke-static {v15, v4, v10}, Lo/aM;->onTransact(ILjava/util/List;Z)I

    move-result v4

    :goto_9
    add-int/2addr v5, v4

    :cond_a
    :goto_a
    const/4 v4, 0x1

    :goto_b
    const-wide/16 v7, 0x0

    const/4 v10, 0x0

    :goto_c
    const-wide/16 v13, 0x0

    goto/16 :goto_10

    :pswitch_78
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    .line 915
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/aD;

    .line 916
    invoke-direct {v0, v3}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v8

    .line 917
    invoke-static {v15, v4, v8}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(ILo/aD;Lo/C;)I

    move-result v4

    goto :goto_9

    :pswitch_79
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    .line 912
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(IJ)I

    move-result v4

    goto :goto_9

    :pswitch_7a
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    .line 910
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asBinder(II)I

    move-result v4

    goto :goto_9

    :pswitch_7b
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    const-wide/16 v8, 0x0

    .line 908
    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asInterface(IJ)I

    move-result v4

    goto :goto_9

    :pswitch_7c
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    .line 906
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onRelationshipValidationResult(II)I

    move-result v8

    :goto_d
    add-int/2addr v5, v8

    goto :goto_a

    :pswitch_7d
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    .line 904
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub$Proxy(II)I

    move-result v4

    goto :goto_9

    :pswitch_7e
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    .line 902
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub(II)I

    move-result v4

    goto :goto_9

    :pswitch_7f
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    .line 898
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/ChannelListActivity$2;

    .line 899
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(ILo/ChannelListActivity$2;)I

    move-result v4

    goto :goto_9

    :pswitch_80
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    .line 894
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 895
    invoke-direct {v0, v3}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v8

    invoke-static {v15, v4, v8}, Lo/aM;->extraCallback(ILjava/lang/Object;Lo/C;)I

    move-result v4

    goto/16 :goto_9

    :pswitch_81
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    .line 888
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 889
    instance-of v8, v4, Lo/ChannelListActivity$2;

    if-eqz v8, :cond_b

    .line 890
    check-cast v4, Lo/ChannelListActivity$2;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(ILo/ChannelListActivity$2;)I

    move-result v4

    goto/16 :goto_9

    .line 891
    :cond_b
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_9

    :pswitch_82
    and-int v4, v12, v11

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    .line 886
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->extraCallback(IZ)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_b

    :pswitch_83
    const/4 v4, 0x1

    and-int v8, v12, v11

    const/4 v10, 0x0

    if-eqz v8, :cond_9

    .line 884
    invoke-static {v15, v10}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onTransact(II)I

    move-result v8

    add-int/2addr v5, v8

    goto/16 :goto_8

    :pswitch_84
    const/4 v4, 0x1

    const/4 v10, 0x0

    and-int v8, v12, v11

    const-wide/16 v13, 0x0

    if-eqz v8, :cond_c

    .line 882
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback$Stub(IJ)I

    move-result v8

    goto :goto_e

    :pswitch_85
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    .line 880
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->asInterface(II)I

    move-result v8

    goto :goto_e

    :pswitch_86
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    .line 878
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onMessageChannelReady(IJ)I

    move-result v8

    goto :goto_e

    :pswitch_87
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    .line 876
    invoke-virtual {v2, v1, v8, v9}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-static {v15, v8, v9}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(IJ)I

    move-result v8

    :goto_e
    add-int/2addr v5, v8

    goto :goto_f

    :pswitch_88
    const/4 v4, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v8, v12, v11

    if-eqz v8, :cond_c

    const/4 v8, 0x0

    .line 874
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->ICustomTabsCallback(IF)I

    move-result v9

    add-int/2addr v5, v9

    :cond_c
    :goto_f
    const-wide/16 v7, 0x0

    goto :goto_10

    :pswitch_89
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v11

    if-eqz v9, :cond_c

    const-wide/16 v7, 0x0

    .line 872
    invoke-static {v15, v7, v8}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onMessageChannelReady(ID)I

    move-result v11

    add-int/2addr v5, v11

    :goto_10
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const v7, 0xfffff

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_d
    const/4 v10, 0x0

    .line 1140
    iget-object v2, v0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-static {v2, v1}, Lo/aE;->onNavigationEvent(Lo/onShowCustomView;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1141
    iget-boolean v2, v0, Lo/aE;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_10

    .line 1142
    iget-object v2, v0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v2, v1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object v1

    const/4 v11, 0x0

    .line 1144
    :goto_11
    iget-object v2, v1, Lo/av;->ICustomTabsCallback:Lo/B;

    invoke-virtual {v2}, Lo/B;->onNavigationEvent()I

    move-result v2

    if-ge v11, v2, :cond_e

    .line 1145
    iget-object v2, v1, Lo/av;->ICustomTabsCallback:Lo/B;

    invoke-virtual {v2, v11}, Lo/B;->ICustomTabsCallback(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 1146
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/at;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo/av;->onNavigationEvent(Lo/at;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v10, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_11

    .line 1148
    :cond_e
    iget-object v1, v1, Lo/av;->ICustomTabsCallback:Lo/B;

    invoke-virtual {v1}, Lo/B;->extraCallback()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1149
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/at;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo/av;->onNavigationEvent(Lo/at;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v10, v2

    goto :goto_12

    :cond_f
    add-int/2addr v5, v10

    :cond_10
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final onPostMessage(Ljava/lang/Object;Lo/bh;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/bh;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1158
    invoke-interface {p2}, Lo/bh;->ICustomTabsCallback()I

    move-result v0

    sget v1, Lo/aH;->onNavigationEvent:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    .line 1160
    iget-object v0, p0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-static {v0, p1, p2}, Lo/aE;->onNavigationEvent(Lo/onShowCustomView;Ljava/lang/Object;Lo/bh;)V

    .line 1163
    iget-boolean v0, p0, Lo/aE;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v0, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object v0

    .line 1166
    iget-object v1, v0, Lo/av;->ICustomTabsCallback:Lo/B;

    invoke-virtual {v1}, Lo/B;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1168
    invoke-virtual {v0}, Lo/av;->onNavigationEvent()Ljava/util/Iterator;

    move-result-object v0

    .line 1169
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    .line 1170
    :goto_0
    iget-object v7, p0, Lo/aE;->ICustomTabsCallback:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    .line 1171
    invoke-direct {p0, v7}, Lo/aE;->onNavigationEvent(I)I

    move-result v8

    .line 1173
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    .line 1175
    iget-object v10, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v10, v1}, Lo/gg;->onNavigationEvent(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    .line 1176
    iget-object v10, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v10, p2, v1}, Lo/gg;->ICustomTabsCallback(Lo/bh;Ljava/util/Map$Entry;)V

    .line 1177
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_2

    :cond_1
    move-object v1, v3

    goto :goto_2

    :cond_2
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 1605
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1608
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1609
    invoke-direct {p0, v7}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v10

    .line 1610
    invoke-interface {p2, v9, v8, v10}, Lo/bh;->onMessageChannelReady(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_3

    .line 1601
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1604
    invoke-static {p1, v10, v11}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/bh;->extraCallback(IJ)V

    goto/16 :goto_3

    .line 1597
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1600
    invoke-static {p1, v10, v11}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/bh;->asBinder(II)V

    goto/16 :goto_3

    .line 1593
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1596
    invoke-static {p1, v10, v11}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/bh;->ICustomTabsCallback(IJ)V

    goto/16 :goto_3

    .line 1589
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1592
    invoke-static {p1, v10, v11}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/bh;->onMessageChannelReady(II)V

    goto/16 :goto_3

    .line 1585
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1588
    invoke-static {p1, v10, v11}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/bh;->onNavigationEvent(II)V

    goto/16 :goto_3

    .line 1581
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1584
    invoke-static {p1, v10, v11}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/bh;->ICustomTabsCallback(II)V

    goto/16 :goto_3

    .line 1576
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1579
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/ChannelListActivity$2;

    .line 1580
    invoke-interface {p2, v9, v8}, Lo/bh;->extraCallback(ILo/ChannelListActivity$2;)V

    goto/16 :goto_3

    .line 1570
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1573
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1574
    invoke-direct {p0, v7}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lo/bh;->extraCallback(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_3

    .line 1566
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1569
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lo/aE;->onNavigationEvent(ILjava/lang/Object;Lo/bh;)V

    goto/16 :goto_3

    .line 1562
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1565
    invoke-static {p1, v10, v11}, Lo/aE;->onTransact(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/bh;->onMessageChannelReady(IZ)V

    goto/16 :goto_3

    .line 1558
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1561
    invoke-static {p1, v10, v11}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/bh;->onPostMessage(II)V

    goto/16 :goto_3

    .line 1554
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1557
    invoke-static {p1, v10, v11}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/bh;->onNavigationEvent(IJ)V

    goto/16 :goto_3

    .line 1550
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1553
    invoke-static {p1, v10, v11}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/bh;->extraCallback(II)V

    goto/16 :goto_3

    .line 1546
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1549
    invoke-static {p1, v10, v11}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/bh;->onMessageChannelReady(IJ)V

    goto/16 :goto_3

    .line 1542
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1545
    invoke-static {p1, v10, v11}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/bh;->onPostMessage(IJ)V

    goto/16 :goto_3

    .line 1538
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1541
    invoke-static {p1, v10, v11}, Lo/aE;->onPostMessage(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/bh;->onPostMessage(IF)V

    goto/16 :goto_3

    .line 1534
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1537
    invoke-static {p1, v10, v11}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/bh;->onMessageChannelReady(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1532
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lo/aE;->extraCallback(Lo/bh;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 1523
    :pswitch_13
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1526
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1527
    invoke-direct {p0, v7}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v10

    .line 1528
    invoke-static {v9, v8, p2, v10}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;Lo/C;)V

    goto/16 :goto_3

    .line 1515
    :pswitch_14
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1518
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1519
    invoke-static {v9, v8, p2, v4}, Lo/aM;->extraCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1507
    :pswitch_15
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1510
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1511
    invoke-static {v9, v8, p2, v4}, Lo/aM;->asInterface(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1499
    :pswitch_16
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1502
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1503
    invoke-static {v9, v8, p2, v4}, Lo/aM;->asBinder(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1491
    :pswitch_17
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1494
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1495
    invoke-static {v9, v8, p2, v4}, Lo/aM;->ICustomTabsService(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1483
    :pswitch_18
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1486
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1487
    invoke-static {v9, v8, p2, v4}, Lo/aM;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1475
    :pswitch_19
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1478
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1479
    invoke-static {v9, v8, p2, v4}, Lo/aM;->onTransact(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1467
    :pswitch_1a
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1470
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1471
    invoke-static {v9, v8, p2, v4}, Lo/aM;->warmup(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1459
    :pswitch_1b
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1462
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1463
    invoke-static {v9, v8, p2, v4}, Lo/aM;->getInterfaceDescriptor(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1451
    :pswitch_1c
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1454
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1455
    invoke-static {v9, v8, p2, v4}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1443
    :pswitch_1d
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1446
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1447
    invoke-static {v9, v8, p2, v4}, Lo/aM;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1435
    :pswitch_1e
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1438
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1439
    invoke-static {v9, v8, p2, v4}, Lo/aM;->onNavigationEvent(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1427
    :pswitch_1f
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1430
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1431
    invoke-static {v9, v8, p2, v4}, Lo/aM;->onPostMessage(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1419
    :pswitch_20
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1422
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1423
    invoke-static {v9, v8, p2, v4}, Lo/aM;->onMessageChannelReady(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1411
    :pswitch_21
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1414
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1415
    invoke-static {v9, v8, p2, v4}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1403
    :pswitch_22
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1406
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1407
    invoke-static {v9, v8, p2, v5}, Lo/aM;->extraCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1395
    :pswitch_23
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1398
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1399
    invoke-static {v9, v8, p2, v5}, Lo/aM;->asInterface(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1387
    :pswitch_24
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1390
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1391
    invoke-static {v9, v8, p2, v5}, Lo/aM;->asBinder(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1379
    :pswitch_25
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1382
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1383
    invoke-static {v9, v8, p2, v5}, Lo/aM;->ICustomTabsService(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1371
    :pswitch_26
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1374
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1375
    invoke-static {v9, v8, p2, v5}, Lo/aM;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1363
    :pswitch_27
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1366
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1367
    invoke-static {v9, v8, p2, v5}, Lo/aM;->onTransact(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1355
    :pswitch_28
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1358
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1359
    invoke-static {v9, v8, p2}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;)V

    goto/16 :goto_3

    .line 1346
    :pswitch_29
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1349
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1350
    invoke-direct {p0, v7}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v10

    .line 1351
    invoke-static {v9, v8, p2, v10}, Lo/aM;->onPostMessage(ILjava/util/List;Lo/bh;Lo/C;)V

    goto/16 :goto_3

    .line 1338
    :pswitch_2a
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1341
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1342
    invoke-static {v9, v8, p2}, Lo/aM;->extraCallback(ILjava/util/List;Lo/bh;)V

    goto/16 :goto_3

    .line 1330
    :pswitch_2b
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1333
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1334
    invoke-static {v9, v8, p2, v5}, Lo/aM;->warmup(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1322
    :pswitch_2c
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1325
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1326
    invoke-static {v9, v8, p2, v5}, Lo/aM;->getInterfaceDescriptor(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1314
    :pswitch_2d
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1317
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1318
    invoke-static {v9, v8, p2, v5}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1306
    :pswitch_2e
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1309
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1310
    invoke-static {v9, v8, p2, v5}, Lo/aM;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1298
    :pswitch_2f
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1301
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1302
    invoke-static {v9, v8, p2, v5}, Lo/aM;->onNavigationEvent(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1290
    :pswitch_30
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1293
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1294
    invoke-static {v9, v8, p2, v5}, Lo/aM;->onPostMessage(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1282
    :pswitch_31
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1285
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1286
    invoke-static {v9, v8, p2, v5}, Lo/aM;->onMessageChannelReady(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1274
    :pswitch_32
    iget-object v9, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1277
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1278
    invoke-static {v9, v8, p2, v5}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_3

    .line 1266
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1269
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1270
    invoke-direct {p0, v7}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v10

    .line 1271
    invoke-interface {p2, v9, v8, v10}, Lo/bh;->onMessageChannelReady(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_3

    .line 1261
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1264
    invoke-static {p1, v10, v11}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1265
    invoke-interface {p2, v9, v10, v11}, Lo/bh;->extraCallback(IJ)V

    goto/16 :goto_3

    .line 1256
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1259
    invoke-static {p1, v10, v11}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v8

    .line 1260
    invoke-interface {p2, v9, v8}, Lo/bh;->asBinder(II)V

    goto/16 :goto_3

    .line 1251
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1254
    invoke-static {p1, v10, v11}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1255
    invoke-interface {p2, v9, v10, v11}, Lo/bh;->ICustomTabsCallback(IJ)V

    goto/16 :goto_3

    .line 1246
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1249
    invoke-static {p1, v10, v11}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v8

    .line 1250
    invoke-interface {p2, v9, v8}, Lo/bh;->onMessageChannelReady(II)V

    goto/16 :goto_3

    .line 1241
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1244
    invoke-static {p1, v10, v11}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v8

    .line 1245
    invoke-interface {p2, v9, v8}, Lo/bh;->onNavigationEvent(II)V

    goto/16 :goto_3

    .line 1236
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1239
    invoke-static {p1, v10, v11}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v8

    .line 1240
    invoke-interface {p2, v9, v8}, Lo/bh;->ICustomTabsCallback(II)V

    goto/16 :goto_3

    .line 1231
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1234
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/ChannelListActivity$2;

    .line 1235
    invoke-interface {p2, v9, v8}, Lo/bh;->extraCallback(ILo/ChannelListActivity$2;)V

    goto/16 :goto_3

    .line 1225
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1228
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1229
    invoke-direct {p0, v7}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lo/bh;->extraCallback(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_3

    .line 1221
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1224
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lo/aE;->onNavigationEvent(ILjava/lang/Object;Lo/bh;)V

    goto/16 :goto_3

    .line 1216
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1219
    invoke-static {p1, v10, v11}, Lo/c$b;->onPostMessage(Ljava/lang/Object;J)Z

    move-result v8

    .line 1220
    invoke-interface {p2, v9, v8}, Lo/bh;->onMessageChannelReady(IZ)V

    goto/16 :goto_3

    .line 1211
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1214
    invoke-static {p1, v10, v11}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v8

    .line 1215
    invoke-interface {p2, v9, v8}, Lo/bh;->onPostMessage(II)V

    goto :goto_3

    .line 1206
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1209
    invoke-static {p1, v10, v11}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1210
    invoke-interface {p2, v9, v10, v11}, Lo/bh;->onNavigationEvent(IJ)V

    goto :goto_3

    .line 1201
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1204
    invoke-static {p1, v10, v11}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v8

    .line 1205
    invoke-interface {p2, v9, v8}, Lo/bh;->extraCallback(II)V

    goto :goto_3

    .line 1196
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1199
    invoke-static {p1, v10, v11}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1200
    invoke-interface {p2, v9, v10, v11}, Lo/bh;->onMessageChannelReady(IJ)V

    goto :goto_3

    .line 1191
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1194
    invoke-static {p1, v10, v11}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1195
    invoke-interface {p2, v9, v10, v11}, Lo/bh;->onPostMessage(IJ)V

    goto :goto_3

    .line 1186
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1189
    invoke-static {p1, v10, v11}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result v8

    .line 1190
    invoke-interface {p2, v9, v8}, Lo/bh;->onPostMessage(IF)V

    goto :goto_3

    .line 1181
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1184
    invoke-static {p1, v10, v11}, Lo/c$b;->onMessageChannelReady(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1185
    invoke-interface {p2, v9, v10, v11}, Lo/bh;->onMessageChannelReady(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 1613
    iget-object p1, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {p1, p2, v1}, Lo/gg;->ICustomTabsCallback(Lo/bh;Ljava/util/Map$Entry;)V

    .line 1614
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_4

    :cond_5
    move-object v1, v3

    goto :goto_4

    :cond_6
    return-void

    .line 1616
    :cond_7
    iget-boolean v0, p0, Lo/aE;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_f

    .line 1620
    iget-boolean v0, p0, Lo/aE;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_8

    .line 1621
    iget-object v0, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v0, p1}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object v0

    .line 1623
    iget-object v1, v0, Lo/av;->ICustomTabsCallback:Lo/B;

    invoke-virtual {v1}, Lo/B;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1625
    invoke-virtual {v0}, Lo/av;->extraCallback()Ljava/util/Iterator;

    move-result-object v0

    .line 1626
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    .line 1627
    :goto_5
    iget-object v7, p0, Lo/aE;->ICustomTabsCallback:[I

    array-length v7, v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_c

    .line 1629
    invoke-direct {p0, v8}, Lo/aE;->onNavigationEvent(I)I

    move-result v9

    .line 1631
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    :goto_7
    if-eqz v1, :cond_a

    .line 1633
    iget-object v11, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v11, v1}, Lo/gg;->onNavigationEvent(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    .line 1634
    iget-object v11, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v11, p2, v1}, Lo/gg;->ICustomTabsCallback(Lo/bh;Ljava/util/Map$Entry;)V

    .line 1635
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_7

    :cond_9
    move-object v1, v3

    goto :goto_7

    :cond_a
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_8

    .line 2063
    :pswitch_45
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2066
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2067
    invoke-direct {p0, v8}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v11

    .line 2068
    invoke-interface {p2, v10, v9, v11}, Lo/bh;->onMessageChannelReady(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_8

    .line 2059
    :pswitch_46
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2062
    invoke-static {p1, v11, v12}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/bh;->extraCallback(IJ)V

    goto/16 :goto_8

    .line 2055
    :pswitch_47
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2058
    invoke-static {p1, v11, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/bh;->asBinder(II)V

    goto/16 :goto_8

    .line 2051
    :pswitch_48
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2054
    invoke-static {p1, v11, v12}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/bh;->ICustomTabsCallback(IJ)V

    goto/16 :goto_8

    .line 2047
    :pswitch_49
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2050
    invoke-static {p1, v11, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/bh;->onMessageChannelReady(II)V

    goto/16 :goto_8

    .line 2043
    :pswitch_4a
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2046
    invoke-static {p1, v11, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/bh;->onNavigationEvent(II)V

    goto/16 :goto_8

    .line 2039
    :pswitch_4b
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2042
    invoke-static {p1, v11, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/bh;->ICustomTabsCallback(II)V

    goto/16 :goto_8

    .line 2034
    :pswitch_4c
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2037
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/ChannelListActivity$2;

    .line 2038
    invoke-interface {p2, v10, v9}, Lo/bh;->extraCallback(ILo/ChannelListActivity$2;)V

    goto/16 :goto_8

    .line 2028
    :pswitch_4d
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2031
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2032
    invoke-direct {p0, v8}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lo/bh;->extraCallback(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_8

    .line 2024
    :pswitch_4e
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2027
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lo/aE;->onNavigationEvent(ILjava/lang/Object;Lo/bh;)V

    goto/16 :goto_8

    .line 2020
    :pswitch_4f
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2023
    invoke-static {p1, v11, v12}, Lo/aE;->onTransact(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/bh;->onMessageChannelReady(IZ)V

    goto/16 :goto_8

    .line 2016
    :pswitch_50
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2019
    invoke-static {p1, v11, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/bh;->onPostMessage(II)V

    goto/16 :goto_8

    .line 2012
    :pswitch_51
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2015
    invoke-static {p1, v11, v12}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/bh;->onNavigationEvent(IJ)V

    goto/16 :goto_8

    .line 2008
    :pswitch_52
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2011
    invoke-static {p1, v11, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/bh;->extraCallback(II)V

    goto/16 :goto_8

    .line 2004
    :pswitch_53
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2007
    invoke-static {p1, v11, v12}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/bh;->onMessageChannelReady(IJ)V

    goto/16 :goto_8

    .line 2000
    :pswitch_54
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2003
    invoke-static {p1, v11, v12}, Lo/aE;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/bh;->onPostMessage(IJ)V

    goto/16 :goto_8

    .line 1996
    :pswitch_55
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1999
    invoke-static {p1, v11, v12}, Lo/aE;->onPostMessage(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/bh;->onPostMessage(IF)V

    goto/16 :goto_8

    .line 1992
    :pswitch_56
    invoke-direct {p0, p1, v10, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1995
    invoke-static {p1, v11, v12}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/bh;->onMessageChannelReady(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1990
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lo/aE;->extraCallback(Lo/bh;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 1981
    :pswitch_58
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1984
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1985
    invoke-direct {p0, v8}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v11

    .line 1986
    invoke-static {v10, v9, p2, v11}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;Lo/C;)V

    goto/16 :goto_8

    .line 1973
    :pswitch_59
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1976
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1977
    invoke-static {v10, v9, p2, v4}, Lo/aM;->extraCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1965
    :pswitch_5a
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1968
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1969
    invoke-static {v10, v9, p2, v4}, Lo/aM;->asInterface(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1957
    :pswitch_5b
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1960
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1961
    invoke-static {v10, v9, p2, v4}, Lo/aM;->asBinder(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1949
    :pswitch_5c
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1952
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1953
    invoke-static {v10, v9, p2, v4}, Lo/aM;->ICustomTabsService(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1941
    :pswitch_5d
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1944
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1945
    invoke-static {v10, v9, p2, v4}, Lo/aM;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1933
    :pswitch_5e
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1936
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1937
    invoke-static {v10, v9, p2, v4}, Lo/aM;->onTransact(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1925
    :pswitch_5f
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1928
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1929
    invoke-static {v10, v9, p2, v4}, Lo/aM;->warmup(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1917
    :pswitch_60
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1920
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1921
    invoke-static {v10, v9, p2, v4}, Lo/aM;->getInterfaceDescriptor(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1909
    :pswitch_61
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1912
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1913
    invoke-static {v10, v9, p2, v4}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1901
    :pswitch_62
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1904
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1905
    invoke-static {v10, v9, p2, v4}, Lo/aM;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1893
    :pswitch_63
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1896
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1897
    invoke-static {v10, v9, p2, v4}, Lo/aM;->onNavigationEvent(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1885
    :pswitch_64
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1888
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1889
    invoke-static {v10, v9, p2, v4}, Lo/aM;->onPostMessage(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1877
    :pswitch_65
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1880
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1881
    invoke-static {v10, v9, p2, v4}, Lo/aM;->onMessageChannelReady(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1869
    :pswitch_66
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1872
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1873
    invoke-static {v10, v9, p2, v4}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1861
    :pswitch_67
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1864
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1865
    invoke-static {v10, v9, p2, v5}, Lo/aM;->extraCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1853
    :pswitch_68
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1856
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1857
    invoke-static {v10, v9, p2, v5}, Lo/aM;->asInterface(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1845
    :pswitch_69
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1848
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1849
    invoke-static {v10, v9, p2, v5}, Lo/aM;->asBinder(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1837
    :pswitch_6a
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1840
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1841
    invoke-static {v10, v9, p2, v5}, Lo/aM;->ICustomTabsService(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1829
    :pswitch_6b
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1832
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1833
    invoke-static {v10, v9, p2, v5}, Lo/aM;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1821
    :pswitch_6c
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1824
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1825
    invoke-static {v10, v9, p2, v5}, Lo/aM;->onTransact(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1813
    :pswitch_6d
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1816
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1817
    invoke-static {v10, v9, p2}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;)V

    goto/16 :goto_8

    .line 1804
    :pswitch_6e
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1807
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1808
    invoke-direct {p0, v8}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v11

    .line 1809
    invoke-static {v10, v9, p2, v11}, Lo/aM;->onPostMessage(ILjava/util/List;Lo/bh;Lo/C;)V

    goto/16 :goto_8

    .line 1796
    :pswitch_6f
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1799
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1800
    invoke-static {v10, v9, p2}, Lo/aM;->extraCallback(ILjava/util/List;Lo/bh;)V

    goto/16 :goto_8

    .line 1788
    :pswitch_70
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1791
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1792
    invoke-static {v10, v9, p2, v5}, Lo/aM;->warmup(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1780
    :pswitch_71
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1783
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1784
    invoke-static {v10, v9, p2, v5}, Lo/aM;->getInterfaceDescriptor(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1772
    :pswitch_72
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1775
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1776
    invoke-static {v10, v9, p2, v5}, Lo/aM;->onRelationshipValidationResult(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1764
    :pswitch_73
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1767
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1768
    invoke-static {v10, v9, p2, v5}, Lo/aM;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1756
    :pswitch_74
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1759
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1760
    invoke-static {v10, v9, p2, v5}, Lo/aM;->onNavigationEvent(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1748
    :pswitch_75
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1751
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1752
    invoke-static {v10, v9, p2, v5}, Lo/aM;->onPostMessage(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1740
    :pswitch_76
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1743
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1744
    invoke-static {v10, v9, p2, v5}, Lo/aM;->onMessageChannelReady(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1732
    :pswitch_77
    iget-object v10, p0, Lo/aE;->ICustomTabsCallback:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1735
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1736
    invoke-static {v10, v9, p2, v5}, Lo/aM;->ICustomTabsCallback(ILjava/util/List;Lo/bh;Z)V

    goto/16 :goto_8

    .line 1724
    :pswitch_78
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1727
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1728
    invoke-direct {p0, v8}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v11

    .line 1729
    invoke-interface {p2, v10, v9, v11}, Lo/bh;->onMessageChannelReady(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_8

    .line 1719
    :pswitch_79
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1722
    invoke-static {p1, v11, v12}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1723
    invoke-interface {p2, v10, v11, v12}, Lo/bh;->extraCallback(IJ)V

    goto/16 :goto_8

    .line 1714
    :pswitch_7a
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1717
    invoke-static {p1, v11, v12}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 1718
    invoke-interface {p2, v10, v9}, Lo/bh;->asBinder(II)V

    goto/16 :goto_8

    .line 1709
    :pswitch_7b
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1712
    invoke-static {p1, v11, v12}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1713
    invoke-interface {p2, v10, v11, v12}, Lo/bh;->ICustomTabsCallback(IJ)V

    goto/16 :goto_8

    .line 1704
    :pswitch_7c
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1707
    invoke-static {p1, v11, v12}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 1708
    invoke-interface {p2, v10, v9}, Lo/bh;->onMessageChannelReady(II)V

    goto/16 :goto_8

    .line 1699
    :pswitch_7d
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1702
    invoke-static {p1, v11, v12}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 1703
    invoke-interface {p2, v10, v9}, Lo/bh;->onNavigationEvent(II)V

    goto/16 :goto_8

    .line 1694
    :pswitch_7e
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1697
    invoke-static {p1, v11, v12}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 1698
    invoke-interface {p2, v10, v9}, Lo/bh;->ICustomTabsCallback(II)V

    goto/16 :goto_8

    .line 1689
    :pswitch_7f
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1692
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/ChannelListActivity$2;

    .line 1693
    invoke-interface {p2, v10, v9}, Lo/bh;->extraCallback(ILo/ChannelListActivity$2;)V

    goto/16 :goto_8

    .line 1683
    :pswitch_80
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1686
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1687
    invoke-direct {p0, v8}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lo/bh;->extraCallback(ILjava/lang/Object;Lo/C;)V

    goto/16 :goto_8

    .line 1679
    :pswitch_81
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1682
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lo/aE;->onNavigationEvent(ILjava/lang/Object;Lo/bh;)V

    goto/16 :goto_8

    .line 1674
    :pswitch_82
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1677
    invoke-static {p1, v11, v12}, Lo/c$b;->onPostMessage(Ljava/lang/Object;J)Z

    move-result v9

    .line 1678
    invoke-interface {p2, v10, v9}, Lo/bh;->onMessageChannelReady(IZ)V

    goto/16 :goto_8

    .line 1669
    :pswitch_83
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1672
    invoke-static {p1, v11, v12}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 1673
    invoke-interface {p2, v10, v9}, Lo/bh;->onPostMessage(II)V

    goto :goto_8

    .line 1664
    :pswitch_84
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1667
    invoke-static {p1, v11, v12}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1668
    invoke-interface {p2, v10, v11, v12}, Lo/bh;->onNavigationEvent(IJ)V

    goto :goto_8

    .line 1659
    :pswitch_85
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1662
    invoke-static {p1, v11, v12}, Lo/c$b;->extraCallback(Ljava/lang/Object;J)I

    move-result v9

    .line 1663
    invoke-interface {p2, v10, v9}, Lo/bh;->extraCallback(II)V

    goto :goto_8

    .line 1654
    :pswitch_86
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1657
    invoke-static {p1, v11, v12}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1658
    invoke-interface {p2, v10, v11, v12}, Lo/bh;->onMessageChannelReady(IJ)V

    goto :goto_8

    .line 1649
    :pswitch_87
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1652
    invoke-static {p1, v11, v12}, Lo/c$b;->onNavigationEvent(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1653
    invoke-interface {p2, v10, v11, v12}, Lo/bh;->onPostMessage(IJ)V

    goto :goto_8

    .line 1644
    :pswitch_88
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1647
    invoke-static {p1, v11, v12}, Lo/c$b;->ICustomTabsCallback(Ljava/lang/Object;J)F

    move-result v9

    .line 1648
    invoke-interface {p2, v10, v9}, Lo/bh;->onPostMessage(IF)V

    goto :goto_8

    .line 1639
    :pswitch_89
    invoke-direct {p0, p1, v8}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1642
    invoke-static {p1, v11, v12}, Lo/c$b;->onMessageChannelReady(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1643
    invoke-interface {p2, v10, v11, v12}, Lo/bh;->onMessageChannelReady(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v1, :cond_e

    .line 2071
    iget-object v2, p0, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v2, p2, v1}, Lo/gg;->ICustomTabsCallback(Lo/bh;Ljava/util/Map$Entry;)V

    .line 2072
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_d
    move-object v1, v3

    goto :goto_9

    .line 2073
    :cond_e
    iget-object v0, p0, Lo/aE;->extraCommand:Lo/onShowCustomView;

    invoke-static {v0, p1, p2}, Lo/aE;->onNavigationEvent(Lo/onShowCustomView;Ljava/lang/Object;Lo/bh;)V

    return-void

    .line 2075
    :cond_f
    invoke-direct {p0, p1, p2}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;Lo/bh;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final onPostMessage(Ljava/lang/Object;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 2437
    :goto_0
    iget v2, v6, Lo/aE;->getInterfaceDescriptor:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_e

    .line 2438
    iget-object v2, v6, Lo/aE;->ICustomTabsCallback$Stub$Proxy:[I

    aget v12, v2, v10

    .line 2440
    iget-object v2, v6, Lo/aE;->ICustomTabsCallback:[I

    aget v13, v2, v12

    .line 2442
    invoke-direct {v6, v12}, Lo/aE;->onNavigationEvent(I)I

    move-result v14

    .line 2443
    iget-object v2, v6, Lo/aE;->ICustomTabsCallback:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_1

    if-eq v3, v8, :cond_0

    .line 2449
    sget-object v0, Lo/aE;->onNavigationEvent:Lsun/misc/Unsafe;

    int-to-long v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v17, v1

    move/from16 v16, v3

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 2453
    invoke-direct/range {v0 .. v5}, Lo/aE;->onPostMessage(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_3

    return v9

    :cond_3
    const/high16 v0, 0xff00000

    and-int/2addr v0, v14

    ushr-int/lit8 v0, v0, 0x14

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_8

    const/16 v1, 0x44

    if-eq v0, v1, :cond_8

    const/16 v1, 0x31

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_5

    .line 2479
    :cond_4
    iget-object v0, v6, Lo/aE;->requestPostMessageChannel:Lo/ConversationDetailActivity$5;

    and-int v1, v14, v8

    int-to-long v1, v1

    .line 2481
    invoke-static {v7, v1, v2}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ConversationDetailActivity$5;->extraCallback(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 2482
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2483
    invoke-direct {v6, v12}, Lo/aE;->onPostMessage(I)Ljava/lang/Object;

    move-result-object v1

    .line 2484
    iget-object v2, v6, Lo/aE;->requestPostMessageChannel:Lo/ConversationDetailActivity$5;

    invoke-interface {v2, v1}, Lo/ConversationDetailActivity$5;->ICustomTabsCallback(Ljava/lang/Object;)Lo/onLongClick;

    move-result-object v1

    .line 2485
    iget-object v1, v1, Lo/onLongClick;->onNavigationEvent:Lo/fJ;

    invoke-virtual {v1}, Lo/fJ;->extraCallback()Lo/bj;

    move-result-object v1

    sget-object v2, Lo/bj;->asInterface:Lo/bj;

    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    .line 2487
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    .line 2489
    invoke-static {}, Lo/PictureAttachmentActivity$a;->onPostMessage()Lo/PictureAttachmentActivity$a;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/PictureAttachmentActivity$a;->extraCallback(Ljava/lang/Class;)Lo/C;

    move-result-object v1

    .line 2490
    :cond_6
    invoke-interface {v1, v2}, Lo/C;->onPostMessage(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v11, 0x0

    :cond_7
    if-nez v11, :cond_d

    return v9

    .line 2475
    :cond_8
    invoke-direct {v6, v7, v13, v12}, Lo/aE;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2476
    invoke-direct {v6, v12}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;ILo/C;)Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_9
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 2464
    invoke-static {v7, v0, v1}, Lo/c$b;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2465
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2466
    invoke-direct {v6, v12}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v1

    const/4 v2, 0x0

    .line 2467
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 2468
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 2469
    invoke-interface {v1, v3}, Lo/C;->onPostMessage(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v11, 0x0

    goto :goto_4

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    :goto_4
    if-nez v11, :cond_d

    return v9

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 2458
    invoke-direct/range {v0 .. v5}, Lo/aE;->onPostMessage(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2459
    invoke-direct {v6, v12}, Lo/aE;->onMessageChannelReady(I)Lo/C;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lo/aE;->onNavigationEvent(Ljava/lang/Object;ILo/C;)Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_d
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    .line 2497
    :cond_e
    iget-boolean v0, v6, Lo/aE;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_f

    .line 2498
    iget-object v0, v6, Lo/aE;->updateVisuals:Lo/gg;

    invoke-virtual {v0, v7}, Lo/gg;->onMessageChannelReady(Ljava/lang/Object;)Lo/av;

    move-result-object v0

    invoke-virtual {v0}, Lo/av;->onTransact()Z

    move-result v0

    if-nez v0, :cond_f

    return v9

    :cond_f
    return v11
.end method
