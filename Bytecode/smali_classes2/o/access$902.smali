.class final Lo/access$902;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setReplacementStr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setReplacementStr<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final extraCallback:Lsun/misc/Unsafe;

.field private static final onMessageChannelReady:[I


# instance fields
.field private final ICustomTabsCallback:I

.field private final ICustomTabsCallback$Stub:I

.field private final ICustomTabsCallback$Stub$Proxy:[I

.field private final ICustomTabsService:Z

.field private final asBinder:Z

.field private final asInterface:Lo/access$502;

.field private final extraCommand:Lo/isUserMessage;

.field private final getInterfaceDescriptor:I

.field private final mayLaunchUrl:Lo/getContentType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getContentType<",
            "**>;"
        }
    .end annotation
.end field

.field private final newSession:Lo/access$802;

.field private final onNavigationEvent:[I

.field private final onPostMessage:[Ljava/lang/Object;

.field private final onRelationshipValidationResult:Z

.field private final onTransact:Z

.field private final requestPostMessageChannel:Lo/getMessageFragments;

.field private final updateVisuals:Lo/setVariant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setVariant<",
            "*>;"
        }
    .end annotation
.end field

.field private final warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 3240
    sput-object v0, Lo/access$902;->onMessageChannelReady:[I

    .line 3241
    invoke-static {}, Lo/getPhoneCountry;->extraCallback()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lo/access$902;->extraCallback:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILo/access$502;ZZ[IIILo/access$802;Lo/isUserMessage;Lo/getContentType;Lo/setVariant;Lo/getMessageFragments;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lo/access$502;",
            "ZZ[III",
            "Lo/access$802;",
            "Lo/isUserMessage;",
            "Lo/getContentType<",
            "**>;",
            "Lo/setVariant<",
            "*>;",
            "Lo/getMessageFragments;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/access$902;->onNavigationEvent:[I

    .line 3
    iput-object p2, p0, Lo/access$902;->onPostMessage:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lo/access$902;->ICustomTabsCallback:I

    .line 5
    iput p4, p0, Lo/access$902;->ICustomTabsCallback$Stub:I

    .line 6
    instance-of p1, p5, Lo/MarketingMessageStatus;

    iput-boolean p1, p0, Lo/access$902;->asBinder:Z

    .line 7
    iput-boolean p6, p0, Lo/access$902;->onTransact:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_0

    .line 8
    invoke-virtual {p14, p5}, Lo/setVariant;->onMessageChannelReady(Lo/access$502;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lo/access$902;->onRelationshipValidationResult:Z

    .line 9
    iput-boolean p1, p0, Lo/access$902;->ICustomTabsService:Z

    .line 10
    iput-object p8, p0, Lo/access$902;->ICustomTabsCallback$Stub$Proxy:[I

    .line 11
    iput p9, p0, Lo/access$902;->getInterfaceDescriptor:I

    .line 12
    iput p10, p0, Lo/access$902;->warmup:I

    .line 13
    iput-object p11, p0, Lo/access$902;->newSession:Lo/access$802;

    .line 14
    iput-object p12, p0, Lo/access$902;->extraCommand:Lo/isUserMessage;

    .line 15
    iput-object p13, p0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    .line 16
    iput-object p14, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    .line 17
    iput-object p5, p0, Lo/access$902;->asInterface:Lo/access$502;

    .line 18
    iput-object p15, p0, Lo/access$902;->requestPostMessageChannel:Lo/getMessageFragments;

    return-void
.end method

.method private final ICustomTabsCallback(I)I
    .locals 1

    .line 3179
    iget-object v0, p0, Lo/access$902;->onNavigationEvent:[I

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

    .line 3183
    invoke-static {p0, p1, p2}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;ILjava/lang/Object;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/setLaunchDeeplinkFromNotification;",
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

    .line 2493
    iget-object v0, p0, Lo/access$902;->requestPostMessageChannel:Lo/getMessageFragments;

    .line 2494
    invoke-direct {p0, p4}, Lo/access$902;->extraCallback(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lo/getMessageFragments;->ICustomTabsCallback(Ljava/lang/Object;)Lo/setMessageFragments;

    move-result-object p4

    iget-object v0, p0, Lo/access$902;->requestPostMessageChannel:Lo/getMessageFragments;

    .line 2495
    invoke-interface {v0, p3}, Lo/getMessageFragments;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 2496
    invoke-interface {p1, p2, p4, p3}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(ILo/setMessageFragments;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 3235
    invoke-direct {p0, p3}, Lo/access$902;->ICustomTabsCallback(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3236
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static ICustomTabsCallback$Stub(Ljava/lang/Object;J)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 3185
    invoke-static {p0, p1, p2}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
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

    .line 3184
    invoke-static {p0, p1, p2}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final extraCallback(I)Ljava/lang/Object;
    .locals 1

    .line 3039
    iget-object v0, p0, Lo/access$902;->onPostMessage:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final extraCallback(Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setLaunchDeeplinkFromNotification;",
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

    .line 2168
    iget-boolean v3, v0, Lo/access$902;->onRelationshipValidationResult:Z

    if-eqz v3, :cond_0

    .line 2169
    iget-object v3, v0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v3, v1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object v3

    .line 2171
    iget-object v5, v3, Lo/setDisplayCode;->ICustomTabsCallback:Lo/getReplacementStr;

    invoke-virtual {v5}, Lo/getReplacementStr;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2173
    invoke-virtual {v3}, Lo/setDisplayCode;->onMessageChannelReady()Ljava/util/Iterator;

    move-result-object v3

    .line 2174
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2177
    :goto_0
    iget-object v6, v0, Lo/access$902;->onNavigationEvent:[I

    array-length v6, v6

    .line 2178
    sget-object v7, Lo/access$902;->extraCallback:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_1
    if-ge v10, v6, :cond_7

    .line 2180
    invoke-direct {v0, v10}, Lo/access$902;->onNavigationEvent(I)I

    move-result v13

    .line 2182
    iget-object v14, v0, Lo/access$902;->onNavigationEvent:[I

    aget v15, v14, v10

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    .line 2188
    iget-boolean v9, v0, Lo/access$902;->onTransact:Z

    if-nez v9, :cond_2

    const/16 v9, 0x11

    if-gt v4, v9, :cond_2

    add-int/lit8 v9, v10, 0x2

    .line 2189
    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v11, :cond_1

    int-to-long v11, v8

    .line 2193
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

    .line 2195
    iget-object v9, v0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v9, v5}, Lo/setVariant;->onPostMessage(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v15, :cond_4

    .line 2196
    iget-object v9, v0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v9, v2, v5}, Lo/setVariant;->ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;Ljava/util/Map$Entry;)V

    .line 2197
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

    .line 2482
    :pswitch_0
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2484
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v8

    .line 2485
    invoke-interface {v2, v15, v4, v8}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto :goto_3

    .line 2480
    :pswitch_1
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2481
    invoke-static {v1, v13, v14}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IJ)V

    goto :goto_3

    .line 2478
    :pswitch_2
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2479
    invoke-static {v1, v13, v14}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/setLaunchDeeplinkFromNotification;->asInterface(II)V

    goto :goto_3

    .line 2476
    :pswitch_3
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2477
    invoke-static {v1, v13, v14}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(IJ)V

    goto :goto_3

    .line 2474
    :pswitch_4
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2475
    invoke-static {v1, v13, v14}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(II)V

    goto :goto_3

    .line 2472
    :pswitch_5
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2473
    invoke-static {v1, v13, v14}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(II)V

    goto :goto_3

    .line 2470
    :pswitch_6
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2471
    invoke-static {v1, v13, v14}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(II)V

    goto :goto_3

    .line 2468
    :pswitch_7
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2469
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setMandatory;

    invoke-interface {v2, v15, v4}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(ILo/setMandatory;)V

    goto :goto_3

    .line 2464
    :pswitch_8
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2465
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 2466
    invoke-direct {v0, v10}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_3

    .line 2462
    :pswitch_9
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2463
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lo/access$902;->onPostMessage(ILjava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_3

    .line 2460
    :pswitch_a
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2461
    invoke-static {v1, v13, v14}, Lo/access$902;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IZ)V

    goto/16 :goto_3

    .line 2458
    :pswitch_b
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2459
    invoke-static {v1, v13, v14}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(II)V

    goto/16 :goto_3

    .line 2456
    :pswitch_c
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2457
    invoke-static {v1, v13, v14}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(IJ)V

    goto/16 :goto_3

    .line 2454
    :pswitch_d
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2455
    invoke-static {v1, v13, v14}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(II)V

    goto/16 :goto_3

    .line 2452
    :pswitch_e
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2453
    invoke-static {v1, v13, v14}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(IJ)V

    goto/16 :goto_3

    .line 2450
    :pswitch_f
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2451
    invoke-static {v1, v13, v14}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IJ)V

    goto/16 :goto_3

    .line 2448
    :pswitch_10
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2449
    invoke-static {v1, v13, v14}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IF)V

    goto/16 :goto_3

    .line 2446
    :pswitch_11
    invoke-direct {v0, v1, v15, v10}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2447
    invoke-static {v1, v13, v14}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(ID)V

    goto/16 :goto_3

    .line 2444
    :pswitch_12
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v15, v4, v10}, Lo/access$902;->ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 2438
    :pswitch_13
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2440
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2441
    invoke-direct {v0, v10}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v13

    .line 2442
    invoke-static {v4, v8, v2, v13}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Lo/setReplacementStr;)V

    goto/16 :goto_3

    .line 2432
    :pswitch_14
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2433
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x1

    .line 2434
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_15
    const/4 v15, 0x1

    .line 2426
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2427
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2428
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_16
    const/4 v15, 0x1

    .line 2420
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2421
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2422
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->asBinder(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_17
    const/4 v15, 0x1

    .line 2414
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2415
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2416
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->newSession(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_18
    const/4 v15, 0x1

    .line 2408
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2409
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2410
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->getInterfaceDescriptor(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_19
    const/4 v15, 0x1

    .line 2402
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2403
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2404
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onTransact(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_1a
    const/4 v15, 0x1

    .line 2396
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2397
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2398
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_1b
    const/4 v15, 0x1

    .line 2390
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2391
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2392
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->ICustomTabsService(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_1c
    const/4 v15, 0x1

    .line 2384
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2385
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2386
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onRelationshipValidationResult(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_1d
    const/4 v15, 0x1

    .line 2378
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2379
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2380
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->asInterface(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_1e
    const/4 v15, 0x1

    .line 2372
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2373
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2374
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_1f
    const/4 v15, 0x1

    .line 2366
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2367
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2368
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_20
    const/4 v15, 0x1

    .line 2360
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2361
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2362
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_21
    const/4 v15, 0x1

    .line 2354
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2355
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2356
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 2348
    :pswitch_22
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2349
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 2350
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_23
    const/4 v15, 0x0

    .line 2342
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2343
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2344
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_24
    const/4 v15, 0x0

    .line 2336
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2337
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2338
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->asBinder(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_25
    const/4 v15, 0x0

    .line 2330
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2331
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2332
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->newSession(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_26
    const/4 v15, 0x0

    .line 2324
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2325
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2326
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->getInterfaceDescriptor(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_27
    const/4 v15, 0x0

    .line 2318
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2319
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2320
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onTransact(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 2312
    :pswitch_28
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2313
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2314
    invoke-static {v4, v8, v2}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_3

    .line 2304
    :pswitch_29
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2306
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2307
    invoke-direct {v0, v10}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v13

    .line 2308
    invoke-static {v4, v8, v2, v13}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Lo/setReplacementStr;)V

    goto/16 :goto_3

    .line 2298
    :pswitch_2a
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2299
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2300
    invoke-static {v4, v8, v2}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_3

    .line 2292
    :pswitch_2b
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2293
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 2294
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_2c
    const/4 v15, 0x0

    .line 2286
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2287
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2288
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->ICustomTabsService(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_2d
    const/4 v15, 0x0

    .line 2280
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2281
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2282
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onRelationshipValidationResult(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_2e
    const/4 v15, 0x0

    .line 2274
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2275
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2276
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->asInterface(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_2f
    const/4 v15, 0x0

    .line 2268
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2269
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2270
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_30
    const/4 v15, 0x0

    .line 2262
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2263
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2264
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_31
    const/4 v15, 0x0

    .line 2256
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2257
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2258
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_32
    const/4 v15, 0x0

    .line 2250
    iget-object v4, v0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v10

    .line 2251
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 2252
    invoke-static {v4, v8, v2, v15}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    :pswitch_33
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2246
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v10}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v13

    .line 2247
    invoke-interface {v2, v15, v8, v13}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_4

    :pswitch_34
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2243
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IJ)V

    goto/16 :goto_4

    :pswitch_35
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2241
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/setLaunchDeeplinkFromNotification;->asInterface(II)V

    goto/16 :goto_4

    :pswitch_36
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2239
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(IJ)V

    goto/16 :goto_4

    :pswitch_37
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2237
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(II)V

    goto/16 :goto_4

    :pswitch_38
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2235
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(II)V

    goto/16 :goto_4

    :pswitch_39
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2233
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(II)V

    goto/16 :goto_4

    :pswitch_3a
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2231
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/setMandatory;

    invoke-interface {v2, v15, v8}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(ILo/setMandatory;)V

    goto/16 :goto_4

    :pswitch_3b
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2227
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 2228
    invoke-direct {v0, v10}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_4

    :pswitch_3c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2225
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v15, v8, v2}, Lo/access$902;->onPostMessage(ILjava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    goto :goto_4

    :pswitch_3d
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2222
    invoke-static {v1, v13, v14}, Lo/getPhoneCountry;->extraCallback(Ljava/lang/Object;J)Z

    move-result v8

    .line 2223
    invoke-interface {v2, v15, v8}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IZ)V

    goto :goto_4

    :pswitch_3e
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2219
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(II)V

    goto :goto_4

    :pswitch_3f
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2217
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(IJ)V

    goto :goto_4

    :pswitch_40
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2215
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(II)V

    goto :goto_4

    :pswitch_41
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2213
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(IJ)V

    goto :goto_4

    :pswitch_42
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2211
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IJ)V

    goto :goto_4

    :pswitch_43
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2208
    invoke-static {v1, v13, v14}, Lo/getPhoneCountry;->onPostMessage(Ljava/lang/Object;J)F

    move-result v8

    .line 2209
    invoke-interface {v2, v15, v8}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IF)V

    goto :goto_4

    :pswitch_44
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_6

    .line 2204
    invoke-static {v1, v13, v14}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;J)D

    move-result-wide v13

    .line 2205
    invoke-interface {v2, v15, v13, v14}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(ID)V

    :cond_6
    :goto_4
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_1

    :cond_7
    :goto_5
    if-eqz v5, :cond_9

    .line 2488
    iget-object v4, v0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v4, v2, v5}, Lo/setVariant;->ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;Ljava/util/Map$Entry;)V

    .line 2489
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

    .line 2490
    :cond_9
    iget-object v3, v0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-static {v3, v1, v2}, Lo/access$902;->onPostMessage(Lo/getContentType;Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

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

.method private final extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 3186
    invoke-direct {p0, p1, p3}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static onMessageChannelReady(Ljava/lang/Object;J)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 3182
    invoke-static {p0, p1, p2}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static onMessageChannelReady(Lo/getContentType;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getContentType<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1216
    invoke-virtual {p0, p1}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1217
    invoke-virtual {p0, p1}, Lo/getContentType;->onNavigationEvent(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final onMessageChannelReady(Ljava/lang/Object;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 3226
    invoke-direct {p0, p2}, Lo/access$902;->ICustomTabsCallback(I)I

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

    .line 3232
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 3233
    invoke-static {p1, v0, v1, p2}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 3237
    invoke-direct {p0, p3}, Lo/access$902;->ICustomTabsCallback(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 3238
    invoke-static {p1, v0, v1, p2}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 539
    invoke-direct {p0, p3}, Lo/access$902;->onNavigationEvent(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 542
    invoke-direct {p0, p2, p3}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 544
    :cond_0
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 545
    invoke-static {p2, v0, v1}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 547
    invoke-static {v2, p2}, Lo/fromString;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 548
    invoke-static {p1, v0, v1, p2}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 549
    invoke-direct {p0, p1, p3}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 551
    invoke-static {p1, v0, v1, p2}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 552
    invoke-direct {p0, p1, p3}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

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

    .line 3181
    invoke-static {p0, p1, p2}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final onNavigationEvent(I)I
    .locals 1

    .line 3178
    iget-object v0, p0, Lo/access$902;->onNavigationEvent:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method static onNavigationEvent(Ljava/lang/Class;Lo/getUploadState;Lo/access$802;Lo/isUserMessage;Lo/getContentType;Lo/setVariant;Lo/getMessageFragments;)Lo/access$902;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lo/getUploadState;",
            "Lo/access$802;",
            "Lo/isUserMessage;",
            "Lo/getContentType<",
            "**>;",
            "Lo/setVariant<",
            "*>;",
            "Lo/getMessageFragments;",
            ")",
            "Lo/access$902<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 20
    instance-of v1, v0, Lo/getRegex;

    if-eqz v1, :cond_34

    .line 21
    check-cast v0, Lo/getRegex;

    .line 22
    invoke-virtual {v0}, Lo/getRegex;->ICustomTabsCallback()I

    move-result v1

    sget v2, Lo/MarketingMessageStatus$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    .line 23
    :goto_0
    invoke-virtual {v0}, Lo/getRegex;->onNavigationEvent()Ljava/lang/String;

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
    sget-object v7, Lo/access$902;->onMessageChannelReady:[I

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
    sget-object v8, Lo/access$902;->extraCallback:Lsun/misc/Unsafe;

    .line 126
    invoke-virtual {v0}, Lo/getRegex;->extraCallback()[Ljava/lang/Object;

    move-result-object v16

    .line 128
    invoke-virtual {v0}, Lo/getRegex;->onMessageChannelReady()Lo/access$502;

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

    invoke-static {v6, v9}, Lo/access$902;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v6, v9}, Lo/access$902;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v6, v10}, Lo/access$902;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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

    invoke-static {v6, v13}, Lo/access$902;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

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
    new-instance v2, Lo/access$902;

    .line 233
    invoke-virtual {v0}, Lo/getRegex;->onMessageChannelReady()Lo/access$502;

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

    invoke-direct/range {v5 .. v20}, Lo/access$902;-><init>([I[Ljava/lang/Object;IILo/access$502;ZZ[IIILo/access$802;Lo/isUserMessage;Lo/getContentType;Lo/setVariant;Lo/getMessageFragments;)V

    return-object v2

    .line 235
    :cond_34
    check-cast v0, Lo/getTaggedItemId;

    .line 236
    invoke-virtual {v0}, Lo/getTaggedItemId;->ICustomTabsCallback()I

    move-result v0

    sget v1, Lo/MarketingMessageStatus$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    .line 237
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw v0
.end method

.method private final onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 554
    invoke-direct {p0, p3}, Lo/access$902;->onNavigationEvent(I)I

    move-result v0

    .line 556
    iget-object v1, p0, Lo/access$902;->onNavigationEvent:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 561
    invoke-direct {p0, p2, v1, p3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-static {p1, v2, v3}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 564
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 566
    invoke-static {v0, p2}, Lo/fromString;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 567
    invoke-static {p1, v2, v3, p2}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 568
    invoke-direct {p0, p1, v1, p3}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;II)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 570
    invoke-static {p1, v2, v3, p2}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 571
    invoke-direct {p0, p1, v1, p3}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;II)V

    :cond_2
    return-void
.end method

.method private final onNavigationEvent(Ljava/lang/Object;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 3190
    invoke-direct {p0, p2}, Lo/access$902;->ICustomTabsCallback(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_14

    .line 3193
    invoke-direct {p0, p2}, Lo/access$902;->onNavigationEvent(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 3223
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3222
    :pswitch_0
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v5

    :cond_0
    return v4

    .line 3221
    :pswitch_1
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    return v5

    :cond_1
    return v4

    .line 3220
    :pswitch_2
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v5

    :cond_2
    return v4

    .line 3219
    :pswitch_3
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    return v5

    :cond_3
    return v4

    .line 3218
    :pswitch_4
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v5

    :cond_4
    return v4

    .line 3217
    :pswitch_5
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v5

    :cond_5
    return v4

    .line 3216
    :pswitch_6
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v5

    :cond_6
    return v4

    .line 3215
    :pswitch_7
    sget-object p2, Lo/setMandatory;->onMessageChannelReady:Lo/setMandatory;

    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/setMandatory;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v5

    :cond_7
    return v4

    .line 3214
    :pswitch_8
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v5

    :cond_8
    return v4

    .line 3208
    :pswitch_9
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 3209
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 3210
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v5

    :cond_9
    return v4

    .line 3211
    :cond_a
    instance-of p2, p1, Lo/setMandatory;

    if-eqz p2, :cond_c

    .line 3212
    sget-object p2, Lo/setMandatory;->onMessageChannelReady:Lo/setMandatory;

    invoke-virtual {p2, p1}, Lo/setMandatory;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v5

    :cond_b
    return v4

    .line 3213
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3207
    :pswitch_a
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->extraCallback(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 3206
    :pswitch_b
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v5

    :cond_d
    return v4

    .line 3205
    :pswitch_c
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_e

    return v5

    :cond_e
    return v4

    .line 3204
    :pswitch_d
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v5

    :cond_f
    return v4

    .line 3203
    :pswitch_e
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_10

    return v5

    :cond_10
    return v4

    .line 3202
    :pswitch_f
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_11

    return v5

    :cond_11
    return v4

    .line 3201
    :pswitch_10
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->onPostMessage(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_12

    return v5

    :cond_12
    return v4

    .line 3200
    :pswitch_11
    invoke-static {p1, v0, v1}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;J)D

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

    .line 3225
    invoke-static {p1, v2, v3}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

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

.method private static onPostMessage(Ljava/lang/Object;J)Ljava/util/List;
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

    .line 1218
    invoke-static {p0, p1, p2}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final onPostMessage(I)Lo/setReplacementStr;
    .locals 3

    .line 3032
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 3033
    iget-object v0, p0, Lo/access$902;->onPostMessage:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lo/setReplacementStr;

    if-eqz v0, :cond_0

    return-object v0

    .line 3036
    :cond_0
    invoke-static {}, Lo/messageUserType;->onNavigationEvent()Lo/messageUserType;

    move-result-object v0

    iget-object v1, p0, Lo/access$902;->onPostMessage:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lo/messageUserType;->extraCallback(Ljava/lang/Class;)Lo/setReplacementStr;

    move-result-object v0

    .line 3037
    iget-object v1, p0, Lo/access$902;->onPostMessage:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private static onPostMessage(ILjava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3162
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3163
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(ILjava/lang/String;)V

    return-void

    .line 3164
    :cond_0
    check-cast p1, Lo/setMandatory;

    invoke-interface {p2, p0, p1}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(ILo/setMandatory;)V

    return-void
.end method

.method private static onPostMessage(Lo/getContentType;Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getContentType<",
            "TUT;TUB;>;TT;",
            "Lo/setLaunchDeeplinkFromNotification;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2498
    invoke-virtual {p0, p1}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/getContentType;->extraCallback(Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

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

    .line 3188
    invoke-direct {p0, p1, p2}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

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

.method private static onPostMessage(Ljava/lang/Object;ILo/setReplacementStr;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 3160
    invoke-static {p0, v0, v1}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 3161
    invoke-interface {p2, p0}, Lo/setReplacementStr;->onPostMessage(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lo/access$902;->onNavigationEvent:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 252
    invoke-direct {p0, v2}, Lo/access$902;->onNavigationEvent(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 326
    :pswitch_0
    invoke-direct {p0, v2}, Lo/access$902;->ICustomTabsCallback(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 327
    invoke-static {p1, v4, v5}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v8

    .line 328
    invoke-static {p2, v4, v5}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 330
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 331
    invoke-static {v4, v5}, Lo/MessageMask;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 323
    :pswitch_1
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 324
    invoke-static {v3, v4}, Lo/MessageMask;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 320
    :pswitch_2
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 321
    invoke-static {v3, v4}, Lo/MessageMask;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_2

    .line 315
    :pswitch_3
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 317
    invoke-static {v4, v5}, Lo/MessageMask;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 312
    :pswitch_4
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 309
    :pswitch_5
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 306
    :pswitch_6
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto/16 :goto_1

    .line 303
    :pswitch_7
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 300
    :pswitch_8
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 297
    :pswitch_9
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 298
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 293
    :pswitch_a
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 294
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 295
    invoke-static {v4, v5}, Lo/MessageMask;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 289
    :pswitch_b
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 291
    invoke-static {v4, v5}, Lo/MessageMask;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 285
    :pswitch_c
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 287
    invoke-static {v4, v5}, Lo/MessageMask;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    .line 282
    :pswitch_d
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->extraCallback(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->extraCallback(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 279
    :pswitch_e
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 280
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    .line 276
    :pswitch_f
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 273
    :pswitch_10
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 270
    :pswitch_11
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 267
    :pswitch_12
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1

    goto :goto_1

    .line 263
    :pswitch_13
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->onPostMessage(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 265
    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->onPostMessage(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1

    goto :goto_1

    .line 259
    :pswitch_14
    invoke-direct {p0, p1, p2, v2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-static {p1, v6, v7}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 261
    invoke-static {p2, v6, v7}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;J)D

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

    .line 337
    :cond_3
    iget-object v0, p0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-virtual {v0, p1}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    iget-object v2, p0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-virtual {v2, p2}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 341
    :cond_4
    iget-boolean v0, p0, Lo/access$902;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v0, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object p1

    .line 343
    iget-object v0, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v0, p2}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object p2

    .line 344
    invoke-virtual {p1, p2}, Lo/setDisplayCode;->equals(Ljava/lang/Object;)Z

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

.method public final extraCallback(Ljava/lang/Object;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lo/access$902;->onNavigationEvent:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 349
    invoke-direct {p0, v1}, Lo/access$902;->onNavigationEvent(I)I

    move-result v3

    .line 351
    iget-object v4, p0, Lo/access$902;->onNavigationEvent:[I

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

    .line 447
    :pswitch_0
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 449
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 445
    :pswitch_1
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 446
    invoke-static {p1, v5, v6}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 443
    :pswitch_2
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 444
    invoke-static {p1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 441
    :pswitch_3
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 442
    invoke-static {p1, v5, v6}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 439
    :pswitch_4
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 440
    invoke-static {p1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 437
    :pswitch_5
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 438
    invoke-static {p1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 435
    :pswitch_6
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 436
    invoke-static {p1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 433
    :pswitch_7
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 434
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 429
    :pswitch_8
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 430
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 431
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 426
    :pswitch_9
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 428
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 424
    :pswitch_a
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 425
    invoke-static {p1, v5, v6}, Lo/access$902;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lo/fromString;->onNavigationEvent(Z)I

    move-result v3

    goto/16 :goto_2

    .line 422
    :pswitch_b
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 423
    invoke-static {p1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 420
    :pswitch_c
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 421
    invoke-static {p1, v5, v6}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 418
    :pswitch_d
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 419
    invoke-static {p1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    .line 416
    :pswitch_e
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 417
    invoke-static {p1, v5, v6}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 414
    :pswitch_f
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 415
    invoke-static {p1, v5, v6}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto/16 :goto_2

    .line 412
    :pswitch_10
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 413
    invoke-static {p1, v5, v6}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_2

    .line 409
    :pswitch_11
    invoke-direct {p0, p1, v4, v1}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v2, v2, 0x35

    .line 411
    invoke-static {p1, v5, v6}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v2, v2, 0x35

    .line 407
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    :pswitch_13
    mul-int/lit8 v2, v2, 0x35

    .line 405
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 400
    :pswitch_14
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 402
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v2, v2, 0x35

    .line 397
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v2, v2, 0x35

    .line 395
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v2, v2, 0x35

    .line 393
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v2, v2, 0x35

    .line 391
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v2, v2, 0x35

    .line 389
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v2, v2, 0x35

    .line 387
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v2, v2, 0x35

    .line 385
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_2

    .line 380
    :pswitch_1c
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 382
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_0
    :goto_1
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_3

    :pswitch_1d
    mul-int/lit8 v2, v2, 0x35

    .line 377
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :pswitch_1e
    mul-int/lit8 v2, v2, 0x35

    .line 375
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->extraCallback(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lo/fromString;->onNavigationEvent(Z)I

    move-result v3

    goto :goto_2

    :pswitch_1f
    mul-int/lit8 v2, v2, 0x35

    .line 373
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_20
    mul-int/lit8 v2, v2, 0x35

    .line 371
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v2, v2, 0x35

    .line 369
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_2

    :pswitch_22
    mul-int/lit8 v2, v2, 0x35

    .line 367
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v2, v2, 0x35

    .line 365
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v2, v2, 0x35

    .line 363
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->onPostMessage(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_2

    :pswitch_25
    mul-int/lit8 v2, v2, 0x35

    .line 360
    invoke-static {p1, v5, v6}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 361
    invoke-static {v3, v4}, Lo/fromString;->extraCallback(J)I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v2, v2, 0x35

    .line 451
    iget-object v0, p0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-virtual {v0, p1}, Lo/getContentType;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 452
    iget-boolean v0, p0, Lo/access$902;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v2, v2, 0x35

    .line 453
    iget-object v0, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v0, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object p1

    invoke-virtual {p1}, Lo/setDisplayCode;->hashCode()I

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

.method public final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 457
    :goto_0
    iget-object v1, p0, Lo/access$902;->onNavigationEvent:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 459
    invoke-direct {p0, v0}, Lo/access$902;->onNavigationEvent(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 464
    iget-object v4, p0, Lo/access$902;->onNavigationEvent:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 533
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 530
    :pswitch_1
    invoke-direct {p0, p2, v4, v0}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 532
    invoke-direct {p0, p1, v4, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 528
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 525
    :pswitch_3
    invoke-direct {p0, p2, v4, v0}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 527
    invoke-direct {p0, p1, v4, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 523
    :pswitch_4
    iget-object v1, p0, Lo/access$902;->requestPostMessageChannel:Lo/getMessageFragments;

    invoke-static {v1, p1, p2, v2, v3}, Lo/MessageMask;->onNavigationEvent(Lo/getMessageFragments;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 521
    :pswitch_5
    iget-object v1, p0, Lo/access$902;->extraCommand:Lo/isUserMessage;

    invoke-virtual {v1, p1, p2, v2, v3}, Lo/isUserMessage;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 519
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 516
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 518
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 513
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JI)V

    .line 515
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 510
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 512
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 507
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JI)V

    .line 509
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 504
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JI)V

    .line 506
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 501
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JI)V

    .line 503
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 498
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 500
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 496
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 493
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 495
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 490
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->extraCallback(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JZ)V

    .line 492
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 487
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JI)V

    .line 489
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto :goto_1

    .line 484
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 486
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto :goto_1

    .line 481
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JI)V

    .line 483
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto :goto_1

    .line 478
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 480
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto :goto_1

    .line 475
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;JJ)V

    .line 477
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto :goto_1

    .line 472
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->onPostMessage(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;JF)V

    .line 474
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    goto :goto_1

    .line 469
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-static {p2, v2, v3}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JD)V

    .line 471
    invoke-direct {p0, p1, v0}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    .line 535
    :cond_1
    iget-object v0, p0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-static {v0, p1, p2}, Lo/MessageMask;->onNavigationEvent(Lo/getContentType;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 536
    iget-boolean v0, p0, Lo/access$902;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_2

    .line 537
    iget-object v0, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-static {v0, p1, p2}, Lo/MessageMask;->onPostMessage(Lo/setVariant;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    const/4 p1, 0x0

    .line 456
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

.method public final onMessageChannelReady(Ljava/lang/Object;)I
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 573
    iget-boolean v2, v0, Lo/access$902;->onTransact:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const/4 v7, 0x1

    const v8, 0xfffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_13

    .line 574
    sget-object v2, Lo/access$902;->extraCallback:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 576
    :goto_0
    iget-object v14, v0, Lo/access$902;->onNavigationEvent:[I

    array-length v14, v14

    if-ge v12, v14, :cond_12

    .line 577
    invoke-direct {v0, v12}, Lo/access$902;->onNavigationEvent(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 582
    iget-object v3, v0, Lo/access$902;->onNavigationEvent:[I

    aget v3, v3, v12

    and-int/2addr v14, v8

    int-to-long v5, v14

    .line 587
    sget-object v14, Lo/getDirection;->onPostMessage:Lo/getDirection;

    .line 588
    invoke-virtual {v14}, Lo/getDirection;->onNavigationEvent()I

    move-result v14

    if-lt v15, v14, :cond_0

    sget-object v14, Lo/getDirection;->ICustomTabsCallback:Lo/getDirection;

    .line 589
    invoke-virtual {v14}, Lo/getDirection;->onNavigationEvent()I

    move-result v14

    if-gt v15, v14, :cond_0

    .line 590
    iget-object v14, v0, Lo/access$902;->onNavigationEvent:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v8

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    :goto_1
    packed-switch v15, :pswitch_data_0

    goto/16 :goto_4

    .line 867
    :pswitch_0
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 869
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/access$502;

    .line 870
    invoke-direct {v0, v12}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v6

    .line 871
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(ILo/access$502;Lo/setReplacementStr;)I

    move-result v3

    goto/16 :goto_3

    .line 865
    :pswitch_1
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 866
    invoke-static {v1, v5, v6}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 863
    :pswitch_2
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 864
    invoke-static {v1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(II)I

    move-result v3

    goto/16 :goto_3

    .line 861
    :pswitch_3
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 862
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 859
    :pswitch_4
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 860
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onTransact(II)I

    move-result v3

    goto/16 :goto_3

    .line 857
    :pswitch_5
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 858
    invoke-static {v1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->getInterfaceDescriptor(II)I

    move-result v3

    goto/16 :goto_3

    .line 855
    :pswitch_6
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 856
    invoke-static {v1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(II)I

    move-result v3

    goto/16 :goto_3

    .line 851
    :pswitch_7
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 853
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setMandatory;

    .line 854
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/setMandatory;)I

    move-result v3

    goto/16 :goto_3

    .line 847
    :pswitch_8
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 848
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 849
    invoke-direct {v0, v12}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lo/MessageMask;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)I

    move-result v3

    goto/16 :goto_3

    .line 841
    :pswitch_9
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 842
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 843
    instance-of v6, v5, Lo/setMandatory;

    if-eqz v6, :cond_1

    .line 844
    check-cast v5, Lo/setMandatory;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/setMandatory;)I

    move-result v3

    goto/16 :goto_3

    .line 845
    :cond_1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 839
    :pswitch_a
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 840
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 837
    :pswitch_b
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 838
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(II)I

    move-result v3

    goto/16 :goto_3

    .line 835
    :pswitch_c
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 836
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onTransact(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 833
    :pswitch_d
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 834
    invoke-static {v1, v5, v6}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asBinder(II)I

    move-result v3

    goto/16 :goto_3

    .line 831
    :pswitch_e
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 832
    invoke-static {v1, v5, v6}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 829
    :pswitch_f
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 830
    invoke-static {v1, v5, v6}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 827
    :pswitch_10
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 828
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IF)I

    move-result v3

    goto/16 :goto_3

    .line 825
    :pswitch_11
    invoke-direct {v0, v1, v3, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 826
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(ID)I

    move-result v3

    goto/16 :goto_3

    .line 821
    :pswitch_12
    iget-object v14, v0, Lo/access$902;->requestPostMessageChannel:Lo/getMessageFragments;

    .line 822
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/access$902;->extraCallback(I)Ljava/lang/Object;

    move-result-object v6

    .line 823
    invoke-interface {v14, v3, v5, v6}, Lo/getMessageFragments;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3

    .line 818
    :pswitch_13
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v6

    .line 819
    invoke-static {v3, v5, v6}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Lo/setReplacementStr;)I

    move-result v3

    goto/16 :goto_3

    .line 809
    :pswitch_14
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 810
    invoke-static {v5}, Lo/MessageMask;->onNavigationEvent(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 812
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_2

    int-to-long v14, v14

    .line 813
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 815
    :cond_2
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 816
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 800
    :pswitch_15
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 801
    invoke-static {v5}, Lo/MessageMask;->asInterface(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 803
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_3

    int-to-long v14, v14

    .line 804
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 806
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 807
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 791
    :pswitch_16
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 792
    invoke-static {v5}, Lo/MessageMask;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 794
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_4

    int-to-long v14, v14

    .line 795
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 797
    :cond_4
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 798
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 782
    :pswitch_17
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 783
    invoke-static {v5}, Lo/MessageMask;->onTransact(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 785
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_5

    int-to-long v14, v14

    .line 786
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 788
    :cond_5
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 789
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 773
    :pswitch_18
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 774
    invoke-static {v5}, Lo/MessageMask;->onMessageChannelReady(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 776
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_6

    int-to-long v14, v14

    .line 777
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 779
    :cond_6
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 780
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 764
    :pswitch_19
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 765
    invoke-static {v5}, Lo/MessageMask;->asBinder(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 767
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_7

    int-to-long v14, v14

    .line 768
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 770
    :cond_7
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 771
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 755
    :pswitch_1a
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 756
    invoke-static {v5}, Lo/MessageMask;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 758
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_8

    int-to-long v14, v14

    .line 759
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 761
    :cond_8
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 762
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 746
    :pswitch_1b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 747
    invoke-static {v5}, Lo/MessageMask;->onTransact(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 749
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_9

    int-to-long v14, v14

    .line 750
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 752
    :cond_9
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 753
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 737
    :pswitch_1c
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 738
    invoke-static {v5}, Lo/MessageMask;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 740
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_a

    int-to-long v14, v14

    .line 741
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 743
    :cond_a
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 744
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 728
    :pswitch_1d
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 729
    invoke-static {v5}, Lo/MessageMask;->onPostMessage(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 731
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_b

    int-to-long v14, v14

    .line 732
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 734
    :cond_b
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 735
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto/16 :goto_2

    .line 719
    :pswitch_1e
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 720
    invoke-static {v5}, Lo/MessageMask;->ICustomTabsCallback(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 722
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_c

    int-to-long v14, v14

    .line 723
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 725
    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 726
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto :goto_2

    .line 710
    :pswitch_1f
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 711
    invoke-static {v5}, Lo/MessageMask;->extraCallback(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 713
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_d

    int-to-long v14, v14

    .line 714
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 716
    :cond_d
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 717
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto :goto_2

    .line 701
    :pswitch_20
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 702
    invoke-static {v5}, Lo/MessageMask;->onTransact(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 704
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_e

    int-to-long v14, v14

    .line 705
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 707
    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 708
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    goto :goto_2

    .line 692
    :pswitch_21
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 693
    invoke-static {v5}, Lo/MessageMask;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_11

    .line 695
    iget-boolean v6, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v6, :cond_f

    int-to-long v14, v14

    .line 696
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 698
    :cond_f
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v3

    .line 699
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v6

    :goto_2
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3

    .line 689
    :pswitch_22
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 685
    :pswitch_23
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 686
    invoke-static {v3, v5, v11}, Lo/MessageMask;->ICustomTabsCallback$Stub(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 682
    :pswitch_24
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->asInterface(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 680
    :pswitch_25
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->onTransact(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 677
    :pswitch_26
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 678
    invoke-static {v3, v5, v11}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3

    .line 673
    :pswitch_27
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 674
    invoke-static {v3, v5, v11}, Lo/MessageMask;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 669
    :pswitch_28
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 670
    invoke-static {v3, v5}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 665
    :pswitch_29
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v6

    .line 666
    invoke-static {v3, v5, v6}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setReplacementStr;)I

    move-result v3

    goto :goto_3

    .line 662
    :pswitch_2a
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;)I

    move-result v3

    goto :goto_3

    .line 660
    :pswitch_2b
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->asBinder(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 658
    :pswitch_2c
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->onTransact(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 656
    :pswitch_2d
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->asInterface(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 653
    :pswitch_2e
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 654
    invoke-static {v3, v5, v11}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 650
    :pswitch_2f
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->extraCallback(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 647
    :pswitch_30
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 644
    :pswitch_31
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->onTransact(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3

    .line 642
    :pswitch_32
    invoke-static {v1, v5, v6}, Lo/access$902;->onPostMessage(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lo/MessageMask;->asInterface(ILjava/util/List;Z)I

    move-result v3

    :goto_3
    add-int/2addr v13, v3

    goto/16 :goto_4

    .line 637
    :pswitch_33
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 639
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/access$502;

    .line 640
    invoke-direct {v0, v12}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v6

    .line 641
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(ILo/access$502;Lo/setReplacementStr;)I

    move-result v3

    goto :goto_3

    .line 634
    :pswitch_34
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 636
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(IJ)I

    move-result v3

    goto :goto_3

    .line 632
    :pswitch_35
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 633
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(II)I

    move-result v3

    goto :goto_3

    .line 630
    :pswitch_36
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 631
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(IJ)I

    move-result v3

    goto :goto_3

    .line 628
    :pswitch_37
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 629
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onTransact(II)I

    move-result v3

    goto :goto_3

    .line 626
    :pswitch_38
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 627
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->getInterfaceDescriptor(II)I

    move-result v3

    goto :goto_3

    .line 624
    :pswitch_39
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 625
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(II)I

    move-result v3

    goto :goto_3

    .line 620
    :pswitch_3a
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 621
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/setMandatory;

    .line 622
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/setMandatory;)I

    move-result v3

    goto :goto_3

    .line 616
    :pswitch_3b
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 617
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 618
    invoke-direct {v0, v12}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lo/MessageMask;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)I

    move-result v3

    goto/16 :goto_3

    .line 610
    :pswitch_3c
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 611
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 612
    instance-of v6, v5, Lo/setMandatory;

    if-eqz v6, :cond_10

    .line 613
    check-cast v5, Lo/setMandatory;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/setMandatory;)I

    move-result v3

    goto/16 :goto_3

    .line 614
    :cond_10
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3

    .line 608
    :pswitch_3d
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 609
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IZ)I

    move-result v3

    goto/16 :goto_3

    .line 606
    :pswitch_3e
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 607
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(II)I

    move-result v3

    goto/16 :goto_3

    .line 604
    :pswitch_3f
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 605
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onTransact(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 602
    :pswitch_40
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 603
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asBinder(II)I

    move-result v3

    goto/16 :goto_3

    .line 599
    :pswitch_41
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 601
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 597
    :pswitch_42
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 598
    invoke-static {v1, v5, v6}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IJ)I

    move-result v3

    goto/16 :goto_3

    .line 595
    :pswitch_43
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 596
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IF)I

    move-result v3

    goto/16 :goto_3

    .line 593
    :pswitch_44
    invoke-direct {v0, v1, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-wide/16 v5, 0x0

    .line 594
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(ID)I

    move-result v3

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_0

    .line 873
    :cond_12
    iget-object v2, v0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-static {v2, v1}, Lo/access$902;->onMessageChannelReady(Lo/getContentType;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 876
    :cond_13
    sget-object v2, Lo/access$902;->extraCallback:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v12, 0x0

    .line 879
    :goto_5
    iget-object v13, v0, Lo/access$902;->onNavigationEvent:[I

    array-length v13, v13

    if-ge v3, v13, :cond_2a

    .line 880
    invoke-direct {v0, v3}, Lo/access$902;->onNavigationEvent(I)I

    move-result v13

    .line 882
    iget-object v14, v0, Lo/access$902;->onNavigationEvent:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_15

    add-int/lit8 v11, v3, 0x2

    .line 890
    aget v11, v14, v11

    and-int v14, v11, v8

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v7, v18

    if-eq v14, v6, :cond_14

    int-to-long v9, v14

    .line 895
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v6, v14

    :cond_14
    move v9, v11

    goto :goto_7

    .line 896
    :cond_15
    iget-boolean v9, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v9, :cond_16

    sget-object v9, Lo/getDirection;->onPostMessage:Lo/getDirection;

    .line 897
    invoke-virtual {v9}, Lo/getDirection;->onNavigationEvent()I

    move-result v9

    if-lt v4, v9, :cond_16

    sget-object v9, Lo/getDirection;->ICustomTabsCallback:Lo/getDirection;

    .line 898
    invoke-virtual {v9}, Lo/getDirection;->onNavigationEvent()I

    move-result v9

    if-gt v4, v9, :cond_16

    .line 899
    iget-object v9, v0, Lo/access$902;->onNavigationEvent:[I

    add-int/lit8 v10, v3, 0x2

    aget v9, v9, v10

    and-int/2addr v9, v8

    goto :goto_6

    :cond_16
    const/4 v9, 0x0

    :goto_6
    const/16 v18, 0x0

    :goto_7
    and-int v10, v13, v8

    int-to-long v10, v10

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_a

    .line 1195
    :pswitch_45
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1197
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/access$502;

    .line 1198
    invoke-direct {v0, v3}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v9

    .line 1199
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(ILo/access$502;Lo/setReplacementStr;)I

    move-result v4

    goto/16 :goto_9

    .line 1193
    :pswitch_46
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1194
    invoke-static {v1, v10, v11}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1191
    :pswitch_47
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1192
    invoke-static {v1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(II)I

    move-result v4

    goto/16 :goto_9

    .line 1189
    :pswitch_48
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 1190
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1187
    :pswitch_49
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1188
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onTransact(II)I

    move-result v9

    goto/16 :goto_c

    .line 1185
    :pswitch_4a
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1186
    invoke-static {v1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->getInterfaceDescriptor(II)I

    move-result v4

    goto/16 :goto_9

    .line 1183
    :pswitch_4b
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1184
    invoke-static {v1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(II)I

    move-result v4

    goto/16 :goto_9

    .line 1179
    :pswitch_4c
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1181
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setMandatory;

    .line 1182
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/setMandatory;)I

    move-result v4

    goto/16 :goto_9

    .line 1175
    :pswitch_4d
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1176
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1177
    invoke-direct {v0, v3}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lo/MessageMask;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)I

    move-result v4

    goto/16 :goto_9

    .line 1169
    :pswitch_4e
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1170
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1171
    instance-of v9, v4, Lo/setMandatory;

    if-eqz v9, :cond_17

    .line 1172
    check-cast v4, Lo/setMandatory;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/setMandatory;)I

    move-result v4

    goto/16 :goto_9

    .line 1173
    :cond_17
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_9

    .line 1167
    :pswitch_4f
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1168
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IZ)I

    move-result v4

    goto/16 :goto_9

    .line 1165
    :pswitch_50
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1166
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(II)I

    move-result v9

    goto/16 :goto_c

    .line 1163
    :pswitch_51
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 1164
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onTransact(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1161
    :pswitch_52
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1162
    invoke-static {v1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asBinder(II)I

    move-result v4

    goto/16 :goto_9

    .line 1159
    :pswitch_53
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1160
    invoke-static {v1, v10, v11}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1157
    :pswitch_54
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1158
    invoke-static {v1, v10, v11}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IJ)I

    move-result v4

    goto/16 :goto_9

    .line 1155
    :pswitch_55
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 1156
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IF)I

    move-result v9

    goto/16 :goto_c

    .line 1153
    :pswitch_56
    invoke-direct {v0, v1, v15, v3}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 1154
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(ID)I

    move-result v4

    goto/16 :goto_9

    .line 1149
    :pswitch_57
    iget-object v4, v0, Lo/access$902;->requestPostMessageChannel:Lo/getMessageFragments;

    .line 1150
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v3}, Lo/access$902;->extraCallback(I)Ljava/lang/Object;

    move-result-object v10

    .line 1151
    invoke-interface {v4, v15, v9, v10}, Lo/getMessageFragments;->onMessageChannelReady(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_9

    .line 1145
    :pswitch_58
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1146
    invoke-direct {v0, v3}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v9

    .line 1147
    invoke-static {v15, v4, v9}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Lo/setReplacementStr;)I

    move-result v4

    goto/16 :goto_9

    .line 1136
    :pswitch_59
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1137
    invoke-static {v4}, Lo/MessageMask;->onNavigationEvent(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1139
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_18

    int-to-long v9, v9

    .line 1140
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1142
    :cond_18
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1143
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1127
    :pswitch_5a
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1128
    invoke-static {v4}, Lo/MessageMask;->asInterface(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1130
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_19

    int-to-long v9, v9

    .line 1131
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1133
    :cond_19
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1134
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1118
    :pswitch_5b
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1119
    invoke-static {v4}, Lo/MessageMask;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1121
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_1a

    int-to-long v9, v9

    .line 1122
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1124
    :cond_1a
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1125
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1109
    :pswitch_5c
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1110
    invoke-static {v4}, Lo/MessageMask;->onTransact(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1112
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_1b

    int-to-long v9, v9

    .line 1113
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1115
    :cond_1b
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1116
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1100
    :pswitch_5d
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1101
    invoke-static {v4}, Lo/MessageMask;->onMessageChannelReady(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1103
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_1c

    int-to-long v9, v9

    .line 1104
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1106
    :cond_1c
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1107
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1091
    :pswitch_5e
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1092
    invoke-static {v4}, Lo/MessageMask;->asBinder(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1094
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_1d

    int-to-long v9, v9

    .line 1095
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1097
    :cond_1d
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1098
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1082
    :pswitch_5f
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1083
    invoke-static {v4}, Lo/MessageMask;->onRelationshipValidationResult(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1085
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_1e

    int-to-long v9, v9

    .line 1086
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1088
    :cond_1e
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1089
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1073
    :pswitch_60
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1074
    invoke-static {v4}, Lo/MessageMask;->onTransact(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1076
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_1f

    int-to-long v9, v9

    .line 1077
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1079
    :cond_1f
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1080
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1064
    :pswitch_61
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1065
    invoke-static {v4}, Lo/MessageMask;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1067
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_20

    int-to-long v9, v9

    .line 1068
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1070
    :cond_20
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1071
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1055
    :pswitch_62
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1056
    invoke-static {v4}, Lo/MessageMask;->onPostMessage(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1058
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_21

    int-to-long v9, v9

    .line 1059
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1061
    :cond_21
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1062
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto/16 :goto_8

    .line 1046
    :pswitch_63
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1047
    invoke-static {v4}, Lo/MessageMask;->ICustomTabsCallback(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1049
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_22

    int-to-long v9, v9

    .line 1050
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1052
    :cond_22
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1053
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto :goto_8

    .line 1037
    :pswitch_64
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1038
    invoke-static {v4}, Lo/MessageMask;->extraCallback(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1040
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_23

    int-to-long v9, v9

    .line 1041
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1043
    :cond_23
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1044
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto :goto_8

    .line 1028
    :pswitch_65
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1029
    invoke-static {v4}, Lo/MessageMask;->onTransact(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1031
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_24

    int-to-long v9, v9

    .line 1032
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1034
    :cond_24
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1035
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    goto :goto_8

    .line 1019
    :pswitch_66
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1020
    invoke-static {v4}, Lo/MessageMask;->ICustomTabsCallback$Stub(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_26

    .line 1022
    iget-boolean v10, v0, Lo/access$902;->ICustomTabsService:Z

    if-eqz v10, :cond_25

    int-to-long v9, v9

    .line 1023
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 1025
    :cond_25
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(I)I

    move-result v9

    .line 1026
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(I)I

    move-result v10

    :goto_8
    add-int/2addr v9, v10

    add-int/2addr v9, v4

    goto/16 :goto_c

    .line 1015
    :pswitch_67
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v9, 0x0

    .line 1016
    invoke-static {v15, v4, v9}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_68
    const/4 v9, 0x0

    .line 1011
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1012
    invoke-static {v15, v4, v9}, Lo/MessageMask;->ICustomTabsCallback$Stub(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_69
    const/4 v9, 0x0

    .line 1007
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1008
    invoke-static {v15, v4, v9}, Lo/MessageMask;->asInterface(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6a
    const/4 v9, 0x0

    .line 1003
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1004
    invoke-static {v15, v4, v9}, Lo/MessageMask;->onTransact(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6b
    const/4 v9, 0x0

    .line 999
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1000
    invoke-static {v15, v4, v9}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    :pswitch_6c
    const/4 v9, 0x0

    .line 995
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 996
    invoke-static {v15, v4, v9}, Lo/MessageMask;->onRelationshipValidationResult(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_9

    .line 991
    :pswitch_6d
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 992
    invoke-static {v15, v4}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_9

    .line 987
    :pswitch_6e
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v9

    .line 988
    invoke-static {v15, v4, v9}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setReplacementStr;)I

    move-result v4

    goto :goto_9

    .line 984
    :pswitch_6f
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;)I

    move-result v4

    goto :goto_9

    .line 980
    :pswitch_70
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v9, 0x0

    .line 981
    invoke-static {v15, v4, v9}, Lo/MessageMask;->asBinder(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_71
    const/4 v9, 0x0

    .line 976
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 977
    invoke-static {v15, v4, v9}, Lo/MessageMask;->onTransact(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_72
    const/4 v9, 0x0

    .line 972
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 973
    invoke-static {v15, v4, v9}, Lo/MessageMask;->asInterface(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_73
    const/4 v9, 0x0

    .line 968
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 969
    invoke-static {v15, v4, v9}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_74
    const/4 v9, 0x0

    .line 964
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 965
    invoke-static {v15, v4, v9}, Lo/MessageMask;->extraCallback(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_75
    const/4 v9, 0x0

    .line 960
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 961
    invoke-static {v15, v4, v9}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_76
    const/4 v9, 0x0

    .line 956
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 957
    invoke-static {v15, v4, v9}, Lo/MessageMask;->onTransact(ILjava/util/List;Z)I

    move-result v4

    goto :goto_9

    :pswitch_77
    const/4 v9, 0x0

    .line 952
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 953
    invoke-static {v15, v4, v9}, Lo/MessageMask;->asInterface(ILjava/util/List;Z)I

    move-result v4

    :goto_9
    add-int/2addr v5, v4

    :cond_26
    :goto_a
    const/4 v4, 0x0

    :goto_b
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_f

    :pswitch_78
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 948
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/access$502;

    .line 949
    invoke-direct {v0, v3}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v9

    .line 950
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->extraCallback(ILo/access$502;Lo/setReplacementStr;)I

    move-result v4

    goto :goto_9

    :pswitch_79
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 945
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(IJ)I

    move-result v4

    goto :goto_9

    :pswitch_7a
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 943
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(II)I

    move-result v4

    goto :goto_9

    :pswitch_7b
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const-wide/16 v9, 0x0

    .line 941
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback$Stub(IJ)I

    move-result v4

    goto :goto_9

    :pswitch_7c
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 939
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onTransact(II)I

    move-result v9

    :goto_c
    add-int/2addr v5, v9

    goto :goto_a

    :pswitch_7d
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 937
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->getInterfaceDescriptor(II)I

    move-result v4

    goto :goto_9

    :pswitch_7e
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 935
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asInterface(II)I

    move-result v4

    goto :goto_9

    :pswitch_7f
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 931
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/setMandatory;

    .line 932
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/setMandatory;)I

    move-result v4

    goto :goto_9

    :pswitch_80
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 927
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 928
    invoke-direct {v0, v3}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lo/MessageMask;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)I

    move-result v4

    goto/16 :goto_9

    :pswitch_81
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 921
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 922
    instance-of v9, v4, Lo/setMandatory;

    if-eqz v9, :cond_27

    .line 923
    check-cast v4, Lo/setMandatory;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILo/setMandatory;)I

    move-result v4

    goto/16 :goto_9

    .line 924
    :cond_27
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_9

    :pswitch_82
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    .line 919
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IZ)I

    move-result v4

    goto/16 :goto_9

    :pswitch_83
    and-int v4, v12, v18

    if-eqz v4, :cond_26

    const/4 v4, 0x0

    .line 917
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onRelationshipValidationResult(II)I

    move-result v9

    add-int/2addr v5, v9

    goto/16 :goto_b

    :pswitch_84
    const/4 v4, 0x0

    and-int v9, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v9, :cond_28

    .line 915
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onTransact(IJ)I

    move-result v9

    goto :goto_d

    :pswitch_85
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_28

    .line 913
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->asBinder(II)I

    move-result v9

    goto :goto_d

    :pswitch_86
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_28

    .line 911
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(IJ)I

    move-result v9

    goto :goto_d

    :pswitch_87
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_28

    .line 909
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IJ)I

    move-result v9

    :goto_d
    add-int/2addr v5, v9

    :cond_28
    const/4 v9, 0x0

    goto :goto_e

    :pswitch_88
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_28

    const/4 v9, 0x0

    .line 907
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->ICustomTabsCallback(IF)I

    move-result v10

    add-int/2addr v5, v10

    :cond_29
    :goto_e
    const-wide/16 v10, 0x0

    goto :goto_f

    :pswitch_89
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_29

    const-wide/16 v10, 0x0

    .line 905
    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhq;->onPostMessage(ID)I

    move-result v15

    add-int/2addr v5, v15

    :goto_f
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_5

    :cond_2a
    const/4 v4, 0x0

    .line 1201
    iget-object v2, v0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-static {v2, v1}, Lo/access$902;->onMessageChannelReady(Lo/getContentType;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 1202
    iget-boolean v2, v0, Lo/access$902;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_2d

    .line 1203
    iget-object v2, v0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v2, v1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object v1

    const/4 v11, 0x0

    .line 1205
    :goto_10
    iget-object v2, v1, Lo/setDisplayCode;->ICustomTabsCallback:Lo/getReplacementStr;

    invoke-virtual {v2}, Lo/getReplacementStr;->onPostMessage()I

    move-result v2

    if-ge v11, v2, :cond_2b

    .line 1206
    iget-object v2, v1, Lo/setDisplayCode;->ICustomTabsCallback:Lo/getReplacementStr;

    invoke-virtual {v2, v11}, Lo/getReplacementStr;->ICustomTabsCallback(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 1207
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setDisplayName;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo/setDisplayCode;->onMessageChannelReady(Lo/setDisplayName;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 1209
    :cond_2b
    iget-object v1, v1, Lo/setDisplayCode;->ICustomTabsCallback:Lo/getReplacementStr;

    invoke-virtual {v1}, Lo/getReplacementStr;->extraCallback()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1210
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setDisplayName;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lo/setDisplayCode;->onMessageChannelReady(Lo/setDisplayName;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_11

    :cond_2c
    add-int/2addr v5, v4

    :cond_2d
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

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 3041
    iget v0, p0, Lo/access$902;->getInterfaceDescriptor:I

    :goto_0
    iget v1, p0, Lo/access$902;->warmup:I

    if-ge v0, v1, :cond_1

    .line 3042
    iget-object v1, p0, Lo/access$902;->ICustomTabsCallback$Stub$Proxy:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lo/access$902;->onNavigationEvent(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3045
    invoke-static {p1, v1, v2}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3047
    iget-object v4, p0, Lo/access$902;->requestPostMessageChannel:Lo/getMessageFragments;

    invoke-interface {v4, v3}, Lo/getMessageFragments;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3049
    :cond_1
    iget-object v0, p0, Lo/access$902;->ICustomTabsCallback$Stub$Proxy:[I

    array-length v0, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 3051
    iget-object v2, p0, Lo/access$902;->extraCommand:Lo/isUserMessage;

    iget-object v3, p0, Lo/access$902;->ICustomTabsCallback$Stub$Proxy:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lo/isUserMessage;->onPostMessage(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3053
    :cond_2
    iget-object v0, p0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-virtual {v0, p1}, Lo/getContentType;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 3054
    iget-boolean v0, p0, Lo/access$902;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_3

    .line 3055
    iget-object v0, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v0, p1}, Lo/setVariant;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setLaunchDeeplinkFromNotification;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1219
    invoke-interface {p2}, Lo/setLaunchDeeplinkFromNotification;->extraCallback()I

    move-result v0

    sget v1, Lo/MarketingMessageStatus$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_7

    .line 1221
    iget-object v0, p0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-static {v0, p1, p2}, Lo/access$902;->onPostMessage(Lo/getContentType;Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    .line 1224
    iget-boolean v0, p0, Lo/access$902;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v0, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object v0

    .line 1227
    iget-object v1, v0, Lo/setDisplayCode;->ICustomTabsCallback:Lo/getReplacementStr;

    invoke-virtual {v1}, Lo/getReplacementStr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    invoke-virtual {v0}, Lo/setDisplayCode;->onPostMessage()Ljava/util/Iterator;

    move-result-object v0

    .line 1230
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    move-object v0, v3

    move-object v1, v0

    .line 1231
    :goto_0
    iget-object v7, p0, Lo/access$902;->onNavigationEvent:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_1
    if-ltz v7, :cond_4

    .line 1232
    invoke-direct {p0, v7}, Lo/access$902;->onNavigationEvent(I)I

    move-result v8

    .line 1234
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    :goto_2
    if-eqz v1, :cond_2

    .line 1236
    iget-object v10, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v10, v1}, Lo/setVariant;->onPostMessage(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_2

    .line 1237
    iget-object v10, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v10, p2, v1}, Lo/setVariant;->ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;Ljava/util/Map$Entry;)V

    .line 1238
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

    .line 1680
    :pswitch_0
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1683
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1684
    invoke-direct {p0, v7}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v10

    .line 1685
    invoke-interface {p2, v9, v8, v10}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_3

    .line 1676
    :pswitch_1
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1679
    invoke-static {p1, v10, v11}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IJ)V

    goto/16 :goto_3

    .line 1672
    :pswitch_2
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1675
    invoke-static {p1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->asInterface(II)V

    goto/16 :goto_3

    .line 1668
    :pswitch_3
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1671
    invoke-static {p1, v10, v11}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(IJ)V

    goto/16 :goto_3

    .line 1664
    :pswitch_4
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1667
    invoke-static {p1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(II)V

    goto/16 :goto_3

    .line 1660
    :pswitch_5
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1663
    invoke-static {p1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(II)V

    goto/16 :goto_3

    .line 1656
    :pswitch_6
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1659
    invoke-static {p1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(II)V

    goto/16 :goto_3

    .line 1651
    :pswitch_7
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1654
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/setMandatory;

    .line 1655
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(ILo/setMandatory;)V

    goto/16 :goto_3

    .line 1645
    :pswitch_8
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1648
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1649
    invoke-direct {p0, v7}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_3

    .line 1641
    :pswitch_9
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1644
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lo/access$902;->onPostMessage(ILjava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_3

    .line 1637
    :pswitch_a
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1640
    invoke-static {p1, v10, v11}, Lo/access$902;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IZ)V

    goto/16 :goto_3

    .line 1633
    :pswitch_b
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1636
    invoke-static {p1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(II)V

    goto/16 :goto_3

    .line 1629
    :pswitch_c
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1632
    invoke-static {p1, v10, v11}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(IJ)V

    goto/16 :goto_3

    .line 1625
    :pswitch_d
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1628
    invoke-static {p1, v10, v11}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(II)V

    goto/16 :goto_3

    .line 1621
    :pswitch_e
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1624
    invoke-static {p1, v10, v11}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(IJ)V

    goto/16 :goto_3

    .line 1617
    :pswitch_f
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1620
    invoke-static {p1, v10, v11}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IJ)V

    goto/16 :goto_3

    .line 1613
    :pswitch_10
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1616
    invoke-static {p1, v10, v11}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IF)V

    goto/16 :goto_3

    .line 1609
    :pswitch_11
    invoke-direct {p0, p1, v9, v7}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1612
    invoke-static {p1, v10, v11}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(ID)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1607
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lo/access$902;->ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;ILjava/lang/Object;I)V

    goto/16 :goto_3

    .line 1598
    :pswitch_13
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1601
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1602
    invoke-direct {p0, v7}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v10

    .line 1603
    invoke-static {v9, v8, p2, v10}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Lo/setReplacementStr;)V

    goto/16 :goto_3

    .line 1590
    :pswitch_14
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1593
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1594
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1582
    :pswitch_15
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1585
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1586
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1574
    :pswitch_16
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1577
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1578
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->asBinder(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1566
    :pswitch_17
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1569
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1570
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->newSession(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1558
    :pswitch_18
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1561
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1562
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->getInterfaceDescriptor(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1550
    :pswitch_19
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1553
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1554
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->onTransact(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1542
    :pswitch_1a
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1545
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1546
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1534
    :pswitch_1b
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1537
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1538
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->ICustomTabsService(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1526
    :pswitch_1c
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1529
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1530
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->onRelationshipValidationResult(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1518
    :pswitch_1d
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1521
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1522
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->asInterface(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1510
    :pswitch_1e
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1513
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1514
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1502
    :pswitch_1f
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1505
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1506
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1494
    :pswitch_20
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1497
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1498
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1486
    :pswitch_21
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1489
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1490
    invoke-static {v9, v8, p2, v4}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1478
    :pswitch_22
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1481
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1482
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1470
    :pswitch_23
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1473
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1474
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1462
    :pswitch_24
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1465
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1466
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->asBinder(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1454
    :pswitch_25
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1457
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1458
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->newSession(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1446
    :pswitch_26
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1449
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1450
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->getInterfaceDescriptor(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1438
    :pswitch_27
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1441
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1442
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->onTransact(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1430
    :pswitch_28
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1433
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1434
    invoke-static {v9, v8, p2}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_3

    .line 1421
    :pswitch_29
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1424
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1425
    invoke-direct {p0, v7}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v10

    .line 1426
    invoke-static {v9, v8, p2, v10}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Lo/setReplacementStr;)V

    goto/16 :goto_3

    .line 1413
    :pswitch_2a
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1416
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1417
    invoke-static {v9, v8, p2}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_3

    .line 1405
    :pswitch_2b
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1408
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1409
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1397
    :pswitch_2c
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1400
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1401
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->ICustomTabsService(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1389
    :pswitch_2d
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1392
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1393
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->onRelationshipValidationResult(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1381
    :pswitch_2e
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1384
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1385
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->asInterface(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1373
    :pswitch_2f
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1376
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1377
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1365
    :pswitch_30
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1368
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1369
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1357
    :pswitch_31
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1360
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1361
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1349
    :pswitch_32
    iget-object v9, p0, Lo/access$902;->onNavigationEvent:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1352
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1353
    invoke-static {v9, v8, p2, v5}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_3

    .line 1341
    :pswitch_33
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1344
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1345
    invoke-direct {p0, v7}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v10

    .line 1346
    invoke-interface {p2, v9, v8, v10}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_3

    .line 1335
    :pswitch_34
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1339
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1340
    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IJ)V

    goto/16 :goto_3

    .line 1329
    :pswitch_35
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1333
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v8

    .line 1334
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->asInterface(II)V

    goto/16 :goto_3

    .line 1323
    :pswitch_36
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1327
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1328
    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(IJ)V

    goto/16 :goto_3

    .line 1317
    :pswitch_37
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1321
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v8

    .line 1322
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(II)V

    goto/16 :goto_3

    .line 1311
    :pswitch_38
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1315
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v8

    .line 1316
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(II)V

    goto/16 :goto_3

    .line 1305
    :pswitch_39
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1309
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v8

    .line 1310
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(II)V

    goto/16 :goto_3

    .line 1300
    :pswitch_3a
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1303
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/setMandatory;

    .line 1304
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(ILo/setMandatory;)V

    goto/16 :goto_3

    .line 1294
    :pswitch_3b
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1297
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 1298
    invoke-direct {p0, v7}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_3

    .line 1290
    :pswitch_3c
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1293
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lo/access$902;->onPostMessage(ILjava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_3

    .line 1284
    :pswitch_3d
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1288
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->extraCallback(Ljava/lang/Object;J)Z

    move-result v8

    .line 1289
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IZ)V

    goto/16 :goto_3

    .line 1278
    :pswitch_3e
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1282
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v8

    .line 1283
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(II)V

    goto :goto_3

    .line 1272
    :pswitch_3f
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1276
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1277
    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(IJ)V

    goto :goto_3

    .line 1266
    :pswitch_40
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1270
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v8

    .line 1271
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(II)V

    goto :goto_3

    .line 1260
    :pswitch_41
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1264
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1265
    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(IJ)V

    goto :goto_3

    .line 1254
    :pswitch_42
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1258
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 1259
    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IJ)V

    goto :goto_3

    .line 1248
    :pswitch_43
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1252
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->onPostMessage(Ljava/lang/Object;J)F

    move-result v8

    .line 1253
    invoke-interface {p2, v9, v8}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IF)V

    goto :goto_3

    .line 1242
    :pswitch_44
    invoke-direct {p0, p1, v7}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_3

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 1246
    invoke-static {p1, v10, v11}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 1247
    invoke-interface {p2, v9, v10, v11}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(ID)V

    :cond_3
    :goto_3
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_1

    :cond_4
    :goto_4
    if-eqz v1, :cond_6

    .line 1688
    iget-object p1, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {p1, p2, v1}, Lo/setVariant;->ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;Ljava/util/Map$Entry;)V

    .line 1689
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

    .line 1691
    :cond_7
    iget-boolean v0, p0, Lo/access$902;->onTransact:Z

    if-eqz v0, :cond_f

    .line 1695
    iget-boolean v0, p0, Lo/access$902;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_8

    .line 1696
    iget-object v0, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v0, p1}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object v0

    .line 1698
    iget-object v1, v0, Lo/setDisplayCode;->ICustomTabsCallback:Lo/getReplacementStr;

    invoke-virtual {v1}, Lo/getReplacementStr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1700
    invoke-virtual {v0}, Lo/setDisplayCode;->onMessageChannelReady()Ljava/util/Iterator;

    move-result-object v0

    .line 1701
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_8
    move-object v0, v3

    move-object v1, v0

    .line 1702
    :goto_5
    iget-object v7, p0, Lo/access$902;->onNavigationEvent:[I

    array-length v7, v7

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v7, :cond_c

    .line 1704
    invoke-direct {p0, v8}, Lo/access$902;->onNavigationEvent(I)I

    move-result v9

    .line 1706
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    :goto_7
    if-eqz v1, :cond_a

    .line 1708
    iget-object v11, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v11, v1}, Lo/setVariant;->onPostMessage(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_a

    .line 1709
    iget-object v11, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v11, p2, v1}, Lo/setVariant;->ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;Ljava/util/Map$Entry;)V

    .line 1710
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

    .line 2152
    :pswitch_45
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2155
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2156
    invoke-direct {p0, v8}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v11

    .line 2157
    invoke-interface {p2, v10, v9, v11}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_8

    .line 2148
    :pswitch_46
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2151
    invoke-static {p1, v11, v12}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IJ)V

    goto/16 :goto_8

    .line 2144
    :pswitch_47
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2147
    invoke-static {p1, v11, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->asInterface(II)V

    goto/16 :goto_8

    .line 2140
    :pswitch_48
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2143
    invoke-static {p1, v11, v12}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(IJ)V

    goto/16 :goto_8

    .line 2136
    :pswitch_49
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2139
    invoke-static {p1, v11, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(II)V

    goto/16 :goto_8

    .line 2132
    :pswitch_4a
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2135
    invoke-static {p1, v11, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(II)V

    goto/16 :goto_8

    .line 2128
    :pswitch_4b
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2131
    invoke-static {p1, v11, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(II)V

    goto/16 :goto_8

    .line 2123
    :pswitch_4c
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2126
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/setMandatory;

    .line 2127
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(ILo/setMandatory;)V

    goto/16 :goto_8

    .line 2117
    :pswitch_4d
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2120
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 2121
    invoke-direct {p0, v8}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_8

    .line 2113
    :pswitch_4e
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2116
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lo/access$902;->onPostMessage(ILjava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_8

    .line 2109
    :pswitch_4f
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2112
    invoke-static {p1, v11, v12}, Lo/access$902;->ICustomTabsCallback$Stub(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IZ)V

    goto/16 :goto_8

    .line 2105
    :pswitch_50
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2108
    invoke-static {p1, v11, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(II)V

    goto/16 :goto_8

    .line 2101
    :pswitch_51
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2104
    invoke-static {p1, v11, v12}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(IJ)V

    goto/16 :goto_8

    .line 2097
    :pswitch_52
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2100
    invoke-static {p1, v11, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(II)V

    goto/16 :goto_8

    .line 2093
    :pswitch_53
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2096
    invoke-static {p1, v11, v12}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(IJ)V

    goto/16 :goto_8

    .line 2089
    :pswitch_54
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2092
    invoke-static {p1, v11, v12}, Lo/access$902;->extraCallback(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IJ)V

    goto/16 :goto_8

    .line 2085
    :pswitch_55
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2088
    invoke-static {p1, v11, v12}, Lo/access$902;->onMessageChannelReady(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IF)V

    goto/16 :goto_8

    .line 2081
    :pswitch_56
    invoke-direct {p0, p1, v10, v8}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2084
    invoke-static {p1, v11, v12}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(ID)V

    goto/16 :goto_8

    :pswitch_57
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2079
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lo/access$902;->ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;ILjava/lang/Object;I)V

    goto/16 :goto_8

    .line 2070
    :pswitch_58
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2073
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2074
    invoke-direct {p0, v8}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v11

    .line 2075
    invoke-static {v10, v9, p2, v11}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Lo/setReplacementStr;)V

    goto/16 :goto_8

    .line 2062
    :pswitch_59
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2065
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2066
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 2054
    :pswitch_5a
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2057
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2058
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 2046
    :pswitch_5b
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2049
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2050
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->asBinder(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 2038
    :pswitch_5c
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2041
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2042
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->newSession(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 2030
    :pswitch_5d
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2033
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2034
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->getInterfaceDescriptor(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 2022
    :pswitch_5e
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2025
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2026
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->onTransact(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 2014
    :pswitch_5f
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2017
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2018
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 2006
    :pswitch_60
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2009
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2010
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->ICustomTabsService(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1998
    :pswitch_61
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 2001
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 2002
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->onRelationshipValidationResult(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1990
    :pswitch_62
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1993
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1994
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->asInterface(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1982
    :pswitch_63
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1985
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1986
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1974
    :pswitch_64
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1977
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1978
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1966
    :pswitch_65
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1969
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1970
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1958
    :pswitch_66
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1961
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1962
    invoke-static {v10, v9, p2, v4}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1950
    :pswitch_67
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1953
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1954
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->onNavigationEvent(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1942
    :pswitch_68
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1945
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1946
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->ICustomTabsCallback$Stub(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1934
    :pswitch_69
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1937
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1938
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->asBinder(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1926
    :pswitch_6a
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1929
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1930
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->newSession(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1918
    :pswitch_6b
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1921
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1922
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->getInterfaceDescriptor(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1910
    :pswitch_6c
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1913
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1914
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->onTransact(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1902
    :pswitch_6d
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1905
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1906
    invoke-static {v10, v9, p2}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_8

    .line 1893
    :pswitch_6e
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1896
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1897
    invoke-direct {p0, v8}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v11

    .line 1898
    invoke-static {v10, v9, p2, v11}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Lo/setReplacementStr;)V

    goto/16 :goto_8

    .line 1885
    :pswitch_6f
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1888
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1889
    invoke-static {v10, v9, p2}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_8

    .line 1877
    :pswitch_70
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1880
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1881
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->ICustomTabsCallback$Stub$Proxy(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1869
    :pswitch_71
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1872
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1873
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->ICustomTabsService(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1861
    :pswitch_72
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1864
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1865
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->onRelationshipValidationResult(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1853
    :pswitch_73
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1856
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1857
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->asInterface(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1845
    :pswitch_74
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1848
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1849
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->onMessageChannelReady(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1837
    :pswitch_75
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1840
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1841
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->extraCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1829
    :pswitch_76
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1832
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1833
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->ICustomTabsCallback(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1821
    :pswitch_77
    iget-object v10, p0, Lo/access$902;->onNavigationEvent:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1824
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 1825
    invoke-static {v10, v9, p2, v5}, Lo/MessageMask;->onPostMessage(ILjava/util/List;Lo/setLaunchDeeplinkFromNotification;Z)V

    goto/16 :goto_8

    .line 1813
    :pswitch_78
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1816
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1817
    invoke-direct {p0, v8}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v11

    .line 1818
    invoke-interface {p2, v10, v9, v11}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_8

    .line 1807
    :pswitch_79
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1811
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1812
    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IJ)V

    goto/16 :goto_8

    .line 1801
    :pswitch_7a
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1805
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v9

    .line 1806
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->asInterface(II)V

    goto/16 :goto_8

    .line 1795
    :pswitch_7b
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1799
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1800
    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(IJ)V

    goto/16 :goto_8

    .line 1789
    :pswitch_7c
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1793
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v9

    .line 1794
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(II)V

    goto/16 :goto_8

    .line 1783
    :pswitch_7d
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1787
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v9

    .line 1788
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(II)V

    goto/16 :goto_8

    .line 1777
    :pswitch_7e
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1781
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v9

    .line 1782
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(II)V

    goto/16 :goto_8

    .line 1772
    :pswitch_7f
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1775
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/setMandatory;

    .line 1776
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(ILo/setMandatory;)V

    goto/16 :goto_8

    .line 1766
    :pswitch_80
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1769
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 1770
    invoke-direct {p0, v8}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(ILjava/lang/Object;Lo/setReplacementStr;)V

    goto/16 :goto_8

    .line 1762
    :pswitch_81
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1765
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lo/access$902;->onPostMessage(ILjava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    goto/16 :goto_8

    .line 1756
    :pswitch_82
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1760
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->extraCallback(Ljava/lang/Object;J)Z

    move-result v9

    .line 1761
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IZ)V

    goto/16 :goto_8

    .line 1750
    :pswitch_83
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1754
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v9

    .line 1755
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(II)V

    goto :goto_8

    .line 1744
    :pswitch_84
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1748
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1749
    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->extraCallback(IJ)V

    goto :goto_8

    .line 1738
    :pswitch_85
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1742
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onNavigationEvent(Ljava/lang/Object;J)I

    move-result v9

    .line 1743
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(II)V

    goto :goto_8

    .line 1732
    :pswitch_86
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1736
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1737
    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->ICustomTabsCallback(IJ)V

    goto :goto_8

    .line 1726
    :pswitch_87
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1730
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onMessageChannelReady(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 1731
    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->onMessageChannelReady(IJ)V

    goto :goto_8

    .line 1720
    :pswitch_88
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1724
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->onPostMessage(Ljava/lang/Object;J)F

    move-result v9

    .line 1725
    invoke-interface {p2, v10, v9}, Lo/setLaunchDeeplinkFromNotification;->onPostMessage(IF)V

    goto :goto_8

    .line 1714
    :pswitch_89
    invoke-direct {p0, p1, v8}, Lo/access$902;->onNavigationEvent(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_b

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 1718
    invoke-static {p1, v11, v12}, Lo/getPhoneCountry;->ICustomTabsCallback(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 1719
    invoke-interface {p2, v10, v11, v12}, Lo/setLaunchDeeplinkFromNotification;->onNavigationEvent(ID)V

    :cond_b
    :goto_8
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_6

    :cond_c
    :goto_9
    if-eqz v1, :cond_e

    .line 2160
    iget-object v2, p0, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v2, p2, v1}, Lo/setVariant;->ICustomTabsCallback(Lo/setLaunchDeeplinkFromNotification;Ljava/util/Map$Entry;)V

    .line 2161
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

    .line 2162
    :cond_e
    iget-object v0, p0, Lo/access$902;->mayLaunchUrl:Lo/getContentType;

    invoke-static {v0, p1, p2}, Lo/access$902;->onPostMessage(Lo/getContentType;Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

    return-void

    .line 2164
    :cond_f
    invoke-direct {p0, p1, p2}, Lo/access$902;->extraCallback(Ljava/lang/Object;Lo/setLaunchDeeplinkFromNotification;)V

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

    .line 3094
    :goto_0
    iget v2, v6, Lo/access$902;->getInterfaceDescriptor:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_e

    .line 3095
    iget-object v2, v6, Lo/access$902;->ICustomTabsCallback$Stub$Proxy:[I

    aget v12, v2, v10

    .line 3097
    iget-object v2, v6, Lo/access$902;->onNavigationEvent:[I

    aget v13, v2, v12

    .line 3099
    invoke-direct {v6, v12}, Lo/access$902;->onNavigationEvent(I)I

    move-result v14

    .line 3100
    iget-object v2, v6, Lo/access$902;->onNavigationEvent:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_1

    if-eq v3, v8, :cond_0

    .line 3106
    sget-object v0, Lo/access$902;->extraCallback:Lsun/misc/Unsafe;

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

    .line 3110
    invoke-direct/range {v0 .. v5}, Lo/access$902;->onPostMessage(Ljava/lang/Object;IIII)Z

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

    .line 3136
    :cond_4
    iget-object v0, v6, Lo/access$902;->requestPostMessageChannel:Lo/getMessageFragments;

    and-int v1, v14, v8

    int-to-long v1, v1

    .line 3138
    invoke-static {v7, v1, v2}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/getMessageFragments;->onPostMessage(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 3139
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3140
    invoke-direct {v6, v12}, Lo/access$902;->extraCallback(I)Ljava/lang/Object;

    move-result-object v1

    .line 3141
    iget-object v2, v6, Lo/access$902;->requestPostMessageChannel:Lo/getMessageFragments;

    invoke-interface {v2, v1}, Lo/getMessageFragments;->ICustomTabsCallback(Ljava/lang/Object;)Lo/setMessageFragments;

    move-result-object v1

    .line 3142
    iget-object v1, v1, Lo/setMessageFragments;->onNavigationEvent:Lo/setJwtIdToken;

    invoke-virtual {v1}, Lo/setJwtIdToken;->onMessageChannelReady()Lo/getJwtIdToken;

    move-result-object v1

    sget-object v2, Lo/getJwtIdToken;->asInterface:Lo/getJwtIdToken;

    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    .line 3144
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

    .line 3146
    invoke-static {}, Lo/messageUserType;->onNavigationEvent()Lo/messageUserType;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lo/messageUserType;->extraCallback(Ljava/lang/Class;)Lo/setReplacementStr;

    move-result-object v1

    .line 3147
    :cond_6
    invoke-interface {v1, v2}, Lo/setReplacementStr;->onPostMessage(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v11, 0x0

    :cond_7
    if-nez v11, :cond_d

    return v9

    .line 3132
    :cond_8
    invoke-direct {v6, v7, v13, v12}, Lo/access$902;->ICustomTabsCallback(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3133
    invoke-direct {v6, v12}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lo/access$902;->onPostMessage(Ljava/lang/Object;ILo/setReplacementStr;)Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_9
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 3121
    invoke-static {v7, v0, v1}, Lo/getPhoneCountry;->asBinder(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3123
    invoke-direct {v6, v12}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v1

    const/4 v2, 0x0

    .line 3124
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 3125
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 3126
    invoke-interface {v1, v3}, Lo/setReplacementStr;->onPostMessage(Ljava/lang/Object;)Z

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

    .line 3115
    invoke-direct/range {v0 .. v5}, Lo/access$902;->onPostMessage(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3116
    invoke-direct {v6, v12}, Lo/access$902;->onPostMessage(I)Lo/setReplacementStr;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lo/access$902;->onPostMessage(Ljava/lang/Object;ILo/setReplacementStr;)Z

    move-result v0

    if-nez v0, :cond_d

    return v9

    :cond_d
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_0

    .line 3154
    :cond_e
    iget-boolean v0, v6, Lo/access$902;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_f

    .line 3155
    iget-object v0, v6, Lo/access$902;->updateVisuals:Lo/setVariant;

    invoke-virtual {v0, v7}, Lo/setVariant;->onNavigationEvent(Ljava/lang/Object;)Lo/setDisplayCode;

    move-result-object v0

    invoke-virtual {v0}, Lo/setDisplayCode;->asBinder()Z

    move-result v0

    if-nez v0, :cond_f

    return v9

    :cond_f
    return v11
.end method
