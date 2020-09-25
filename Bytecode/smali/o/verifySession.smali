.class public abstract Lo/verifySession;
.super Lo/fromQueueItem;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/verifySession$extraCallback;,
        Lo/verifySession$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final asInterface:[Ljava/lang/String;


# instance fields
.field private asBinder:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    .line 81
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/verifySession;->asInterface:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lo/fromQueueItem;-><init>()V

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Lo/verifySession;->asBinder:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 106
    invoke-direct {p0, p1, p2}, Lo/fromQueueItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    .line 98
    iput v0, p0, Lo/verifySession;->asBinder:I

    .line 107
    sget-object v0, Lo/getQueueItem;->extraCallback:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 109
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const/4 v0, 0x0

    const-string/jumbo v1, "transitionVisibilityMode"

    invoke-static {p1, p2, v1, v0, v0}, Lo/getText;->extraCallback(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 112
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_1

    and-int/lit8 p1, p2, -0x4

    if-nez p1, :cond_0

    .line 1129
    iput p2, p0, Lo/verifySession;->asBinder:I

    goto :goto_0

    .line 1127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Lo/verifySession$onNavigationEvent;
    .locals 7

    .line 195
    new-instance v0, Lo/verifySession$onNavigationEvent;

    invoke-direct {v0}, Lo/verifySession$onNavigationEvent;-><init>()V

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, v0, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    .line 197
    iput-boolean v1, v0, Lo/verifySession$onNavigationEvent;->extraCallback:Z

    const-string v2, "android:visibility:parent"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "android:visibility:visibility"

    if-eqz p0, :cond_0

    .line 198
    iget-object v6, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    iget-object v6, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    iput v6, v0, Lo/verifySession$onNavigationEvent;->onMessageChannelReady:I

    .line 200
    iget-object v6, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Lo/verifySession$onNavigationEvent;->onPostMessage:Landroid/view/ViewGroup;

    goto :goto_0

    .line 202
    :cond_0
    iput v4, v0, Lo/verifySession$onNavigationEvent;->onMessageChannelReady:I

    .line 203
    iput-object v3, v0, Lo/verifySession$onNavigationEvent;->onPostMessage:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_1

    .line 205
    iget-object v6, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 206
    iget-object v3, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iput v3, v0, Lo/verifySession$onNavigationEvent;->ICustomTabsCallback:I

    .line 207
    iget-object v3, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v0, Lo/verifySession$onNavigationEvent;->asBinder:Landroid/view/ViewGroup;

    goto :goto_1

    .line 209
    :cond_1
    iput v4, v0, Lo/verifySession$onNavigationEvent;->ICustomTabsCallback:I

    .line 210
    iput-object v3, v0, Lo/verifySession$onNavigationEvent;->asBinder:Landroid/view/ViewGroup;

    :goto_1
    const/4 v2, 0x1

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 213
    iget p0, v0, Lo/verifySession$onNavigationEvent;->onMessageChannelReady:I

    iget p1, v0, Lo/verifySession$onNavigationEvent;->ICustomTabsCallback:I

    if-ne p0, p1, :cond_2

    iget-object p0, v0, Lo/verifySession$onNavigationEvent;->onPostMessage:Landroid/view/ViewGroup;

    iget-object p1, v0, Lo/verifySession$onNavigationEvent;->asBinder:Landroid/view/ViewGroup;

    if-ne p0, p1, :cond_2

    return-object v0

    .line 217
    :cond_2
    iget p0, v0, Lo/verifySession$onNavigationEvent;->onMessageChannelReady:I

    iget p1, v0, Lo/verifySession$onNavigationEvent;->ICustomTabsCallback:I

    if-eq p0, p1, :cond_4

    .line 218
    iget p0, v0, Lo/verifySession$onNavigationEvent;->onMessageChannelReady:I

    if-nez p0, :cond_3

    .line 219
    iput-boolean v1, v0, Lo/verifySession$onNavigationEvent;->extraCallback:Z

    .line 220
    iput-boolean v2, v0, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    goto :goto_2

    .line 221
    :cond_3
    iget p0, v0, Lo/verifySession$onNavigationEvent;->ICustomTabsCallback:I

    if-nez p0, :cond_8

    .line 222
    iput-boolean v2, v0, Lo/verifySession$onNavigationEvent;->extraCallback:Z

    .line 223
    iput-boolean v2, v0, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    goto :goto_2

    .line 227
    :cond_4
    iget-object p0, v0, Lo/verifySession$onNavigationEvent;->asBinder:Landroid/view/ViewGroup;

    if-nez p0, :cond_5

    .line 228
    iput-boolean v1, v0, Lo/verifySession$onNavigationEvent;->extraCallback:Z

    .line 229
    iput-boolean v2, v0, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    goto :goto_2

    .line 230
    :cond_5
    iget-object p0, v0, Lo/verifySession$onNavigationEvent;->onPostMessage:Landroid/view/ViewGroup;

    if-nez p0, :cond_8

    .line 231
    iput-boolean v2, v0, Lo/verifySession$onNavigationEvent;->extraCallback:Z

    .line 232
    iput-boolean v2, v0, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    goto :goto_2

    :cond_6
    if-nez p0, :cond_7

    .line 236
    iget p0, v0, Lo/verifySession$onNavigationEvent;->ICustomTabsCallback:I

    if-nez p0, :cond_7

    .line 237
    iput-boolean v2, v0, Lo/verifySession$onNavigationEvent;->extraCallback:Z

    .line 238
    iput-boolean v2, v0, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    goto :goto_2

    :cond_7
    if-nez p1, :cond_8

    .line 239
    iget p0, v0, Lo/verifySession$onNavigationEvent;->onMessageChannelReady:I

    if-nez p0, :cond_8

    .line 240
    iput-boolean v1, v0, Lo/verifySession$onNavigationEvent;->extraCallback:Z

    .line 241
    iput-boolean v2, v0, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    :cond_8
    :goto_2
    return-object v0
.end method

.method private static onNavigationEvent(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 151
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const-string v2, "android:visibility:parent"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 154
    iget-object v1, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 155
    iget-object p0, p0, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v1, "android:visibility:screenLocation"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 0

    .line 165
    invoke-static {p1}, Lo/verifySession;->onNavigationEvent(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    return-void
.end method

.method public extraCallback(Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public extraCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)V
    .locals 0

    .line 160
    invoke-static {p1}, Lo/verifySession;->onNavigationEvent(Lo/MediaSessionCompat$ResultReceiverWrapper;)V

    return-void
.end method

.method public onMessageChannelReady(Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/view/ViewGroup;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
    .locals 11

    .line 250
    invoke-static {p2, p3}, Lo/verifySession;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Lo/verifySession$onNavigationEvent;

    move-result-object v0

    .line 251
    iget-boolean v1, v0, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    iget-object v1, v0, Lo/verifySession$onNavigationEvent;->onPostMessage:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    iget-object v1, v0, Lo/verifySession$onNavigationEvent;->asBinder:Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    .line 253
    :cond_0
    iget-boolean v1, v0, Lo/verifySession$onNavigationEvent;->extraCallback:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    .line 1283
    iget v0, p0, Lo/verifySession;->asBinder:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 1287
    iget-object v0, p3, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1288
    invoke-virtual {p0, v0, v3}, Lo/verifySession;->ICustomTabsCallback(Landroid/view/View;Z)Lo/MediaSessionCompat$ResultReceiverWrapper;

    move-result-object v1

    .line 1290
    invoke-virtual {p0, v0, v3}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/view/View;Z)Lo/MediaSessionCompat$ResultReceiverWrapper;

    move-result-object v0

    .line 1292
    invoke-static {v1, v0}, Lo/verifySession;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Lo/verifySession$onNavigationEvent;

    move-result-object v0

    .line 1293
    iget-boolean v0, v0, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v0, :cond_2

    return-object v2

    .line 1297
    :cond_2
    iget-object v0, p3, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p3}, Lo/verifySession;->onMessageChannelReady(Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v2

    .line 257
    :cond_4
    iget v0, v0, Lo/verifySession$onNavigationEvent;->ICustomTabsCallback:I

    .line 1340
    iget v1, p0, Lo/verifySession;->asBinder:I

    const/4 v5, 0x2

    and-int/2addr v1, v5

    if-ne v1, v5, :cond_14

    if-eqz p2, :cond_14

    .line 1349
    iget-object v1, p2, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    if-eqz p3, :cond_5

    .line 1350
    iget-object p3, p3, Lo/MediaSessionCompat$ResultReceiverWrapper;->onMessageChannelReady:Landroid/view/View;

    goto :goto_1

    :cond_5
    move-object p3, v2

    .line 1355
    :goto_1
    sget v6, Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;->save_overlay_view:I

    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_6

    move-object p3, v2

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_6
    if-eqz p3, :cond_9

    .line 1365
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    const/4 v6, 0x4

    if-ne v0, v6, :cond_8

    goto :goto_2

    :cond_8
    if-ne v1, p3, :cond_a

    :goto_2
    move-object v6, p3

    move-object p3, v2

    goto :goto_4

    :cond_9
    :goto_3
    if-eqz p3, :cond_a

    move-object v6, v2

    :goto_4
    const/4 v7, 0x0

    goto :goto_5

    :cond_a
    move-object p3, v2

    move-object v6, p3

    const/4 v7, 0x1

    :goto_5
    if-eqz v7, :cond_d

    .line 1390
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_b

    move-object p3, v6

    const/4 v7, 0x0

    move-object v6, v1

    goto :goto_7

    .line 1393
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_d

    .line 1394
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1395
    invoke-virtual {p0, v7, v4}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/view/View;Z)Lo/MediaSessionCompat$ResultReceiverWrapper;

    move-result-object v8

    .line 1396
    invoke-virtual {p0, v7, v4}, Lo/verifySession;->ICustomTabsCallback(Landroid/view/View;Z)Lo/MediaSessionCompat$ResultReceiverWrapper;

    move-result-object v9

    .line 1399
    invoke-static {v8, v9}, Lo/verifySession;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Lo/verifySession$onNavigationEvent;

    move-result-object v8

    .line 1400
    iget-boolean v8, v8, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    if-nez v8, :cond_c

    .line 1401
    invoke-static {p1, v1, v7}, Lo/MediaSessionCompat$QueueItem$1;->ICustomTabsCallback(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object p3

    goto :goto_6

    .line 1404
    :cond_c
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    .line 1405
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_d

    const/4 v7, -0x1

    if-eq v8, v7, :cond_d

    .line 1406
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    :cond_d
    :goto_6
    const/4 v7, 0x0

    move-object v10, v6

    move-object v6, p3

    move-object p3, v10

    :goto_7
    if-eqz v6, :cond_11

    if-nez v7, :cond_e

    .line 1421
    iget-object p3, p2, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v0, "android:visibility:screenLocation"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    .line 1422
    aget v0, p3, v3

    .line 1423
    aget p3, p3, v4

    new-array v2, v5, [I

    .line 1425
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1426
    aget v3, v2, v3

    sub-int/2addr v0, v3

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v6, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1427
    aget v0, v2, v4

    sub-int/2addr p3, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {v6, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1428
    invoke-static {p1}, Lo/getExtraBinder;->onNavigationEvent(Landroid/view/ViewGroup;)Lo/performClick$extraCallback;

    move-result-object p3

    invoke-interface {p3, v6}, Lo/performClick$extraCallback;->onNavigationEvent(Landroid/view/View;)V

    .line 1430
    :cond_e
    invoke-virtual {p0, p1, v6, p2}, Lo/verifySession;->extraCallback(Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;

    move-result-object p2

    if-nez v7, :cond_10

    if-nez p2, :cond_f

    .line 1433
    invoke-static {p1}, Lo/getExtraBinder;->onNavigationEvent(Landroid/view/ViewGroup;)Lo/performClick$extraCallback;

    move-result-object p1

    invoke-interface {p1, v6}, Lo/performClick$extraCallback;->extraCallback(Landroid/view/View;)V

    goto :goto_8

    .line 1435
    :cond_f
    sget p3, Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;->save_overlay_view:I

    invoke-virtual {v1, p3, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1438
    new-instance p3, Lo/verifySession$2;

    invoke-direct {p3, p0, p1, v6, v1}, Lo/verifySession$2;-><init>(Lo/verifySession;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p3}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    :cond_10
    :goto_8
    return-object p2

    :cond_11
    if-eqz p3, :cond_14

    .line 1467
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 1468
    invoke-static {p3, v3}, Lo/equals;->onPostMessage(Landroid/view/View;I)V

    .line 1469
    invoke-virtual {p0, p1, p3, p2}, Lo/verifySession;->extraCallback(Landroid/view/ViewGroup;Landroid/view/View;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1471
    new-instance p2, Lo/verifySession$extraCallback;

    invoke-direct {p2, p3, v0}, Lo/verifySession$extraCallback;-><init>(Landroid/view/View;I)V

    .line 1473
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2031
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p3, v0, :cond_12

    .line 2032
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    .line 1475
    :cond_12
    invoke-virtual {p0, p2}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    goto :goto_9

    .line 1477
    :cond_13
    invoke-static {p3, v1}, Lo/equals;->onPostMessage(Landroid/view/View;I)V

    :goto_9
    return-object p1

    :cond_14
    return-object v2
.end method

.method public final onNavigationEvent(I)V
    .locals 1

    and-int/lit8 v0, p1, -0x4

    if-nez v0, :cond_0

    .line 129
    iput p1, p0, Lo/verifySession;->asBinder:I

    return-void

    .line 127
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only MODE_IN and MODE_OUT flags are allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent()[Ljava/lang/String;
    .locals 1

    .line 146
    sget-object v0, Lo/verifySession;->asInterface:[Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 510
    iget-object v1, p2, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    .line 511
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p1, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    .line 512
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 517
    :cond_1
    invoke-static {p1, p2}, Lo/verifySession;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Lo/verifySession$onNavigationEvent;

    move-result-object p1

    .line 518
    iget-boolean p2, p1, Lo/verifySession$onNavigationEvent;->onNavigationEvent:Z

    if-eqz p2, :cond_3

    iget p2, p1, Lo/verifySession$onNavigationEvent;->onMessageChannelReady:I

    if-eqz p2, :cond_2

    iget p1, p1, Lo/verifySession$onNavigationEvent;->ICustomTabsCallback:I

    if-nez p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final onTransact()I
    .locals 1

    .line 140
    iget v0, p0, Lo/verifySession;->asBinder:I

    return v0
.end method
