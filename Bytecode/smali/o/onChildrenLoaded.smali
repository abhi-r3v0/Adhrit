.class public Lo/onChildrenLoaded;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onChildrenLoaded$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/removeSubscription;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsService:I

.field private asBinder:I

.field private asInterface:Z

.field extraCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:I

.field private newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

.field private onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/getCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:I

.field onPostMessage:Lo/addSubscription;

.field private onRelationshipValidationResult:I

.field private onTransact:I

.field private warmup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 570
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 499
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    .line 502
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 507
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 509
    new-instance p1, Lo/addSubscription;

    invoke-direct {p1}, Lo/addSubscription;-><init>()V

    iput-object p1, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    const/4 p1, 0x0

    .line 511
    iput p1, p0, Lo/onChildrenLoaded;->onNavigationEvent:I

    .line 512
    iput p1, p0, Lo/onChildrenLoaded;->onTransact:I

    const p1, 0x7fffffff

    .line 513
    iput p1, p0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    .line 514
    iput p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    const/4 p1, 0x1

    .line 516
    iput-boolean p1, p0, Lo/onChildrenLoaded;->asInterface:Z

    const/4 p1, 0x7

    .line 517
    iput p1, p0, Lo/onChildrenLoaded;->asBinder:I

    const/4 p1, 0x0

    .line 518
    iput-object p1, p0, Lo/onChildrenLoaded;->newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

    const/4 v0, -0x1

    .line 520
    iput v0, p0, Lo/onChildrenLoaded;->warmup:I

    .line 522
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    .line 525
    iput v0, p0, Lo/onChildrenLoaded;->getInterfaceDescriptor:I

    .line 526
    iput v0, p0, Lo/onChildrenLoaded;->ICustomTabsService:I

    .line 571
    invoke-direct {p0, p1}, Lo/onChildrenLoaded;->extraCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 575
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 499
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    .line 502
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 507
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 509
    new-instance p1, Lo/addSubscription;

    invoke-direct {p1}, Lo/addSubscription;-><init>()V

    iput-object p1, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    const/4 p1, 0x0

    .line 511
    iput p1, p0, Lo/onChildrenLoaded;->onNavigationEvent:I

    .line 512
    iput p1, p0, Lo/onChildrenLoaded;->onTransact:I

    const p1, 0x7fffffff

    .line 513
    iput p1, p0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    .line 514
    iput p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    const/4 p1, 0x1

    .line 516
    iput-boolean p1, p0, Lo/onChildrenLoaded;->asInterface:Z

    const/4 p1, 0x7

    .line 517
    iput p1, p0, Lo/onChildrenLoaded;->asBinder:I

    const/4 p1, 0x0

    .line 518
    iput-object p1, p0, Lo/onChildrenLoaded;->newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

    const/4 p1, -0x1

    .line 520
    iput p1, p0, Lo/onChildrenLoaded;->warmup:I

    .line 522
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    .line 525
    iput p1, p0, Lo/onChildrenLoaded;->getInterfaceDescriptor:I

    .line 526
    iput p1, p0, Lo/onChildrenLoaded;->ICustomTabsService:I

    .line 576
    invoke-direct {p0, p2}, Lo/onChildrenLoaded;->extraCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 580
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 499
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    .line 502
    new-instance p1, Ljava/util/ArrayList;

    const/4 p3, 0x4

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 507
    new-instance p1, Ljava/util/ArrayList;

    const/16 p3, 0x64

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback:Ljava/util/ArrayList;

    .line 509
    new-instance p1, Lo/addSubscription;

    invoke-direct {p1}, Lo/addSubscription;-><init>()V

    iput-object p1, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    const/4 p1, 0x0

    .line 511
    iput p1, p0, Lo/onChildrenLoaded;->onNavigationEvent:I

    .line 512
    iput p1, p0, Lo/onChildrenLoaded;->onTransact:I

    const p1, 0x7fffffff

    .line 513
    iput p1, p0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    .line 514
    iput p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    const/4 p1, 0x1

    .line 516
    iput-boolean p1, p0, Lo/onChildrenLoaded;->asInterface:Z

    const/4 p1, 0x7

    .line 517
    iput p1, p0, Lo/onChildrenLoaded;->asBinder:I

    const/4 p1, 0x0

    .line 518
    iput-object p1, p0, Lo/onChildrenLoaded;->newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

    const/4 p1, -0x1

    .line 520
    iput p1, p0, Lo/onChildrenLoaded;->warmup:I

    .line 522
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    .line 525
    iput p1, p0, Lo/onChildrenLoaded;->getInterfaceDescriptor:I

    .line 526
    iput p1, p0, Lo/onChildrenLoaded;->ICustomTabsService:I

    .line 581
    invoke-direct {p0, p2}, Lo/onChildrenLoaded;->extraCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final extraCallback(I)Lo/removeSubscription;
    .locals 1

    if-nez p1, :cond_0

    .line 1132
    iget-object p1, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    return-object p1

    .line 1134
    :cond_0
    iget-object v0, p0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 1136
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 1137
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_1

    .line 1138
    invoke-virtual {p0, v0}, Lo/onChildrenLoaded;->onViewAdded(Landroid/view/View;)V

    :cond_1
    if-ne v0, p0, :cond_2

    .line 1142
    iget-object p1, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 1144
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded$onPostMessage;

    iget-object p1, p1, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    return-object p1
.end method

.method private extraCallback(II)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1283
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    .line 1284
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 1286
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_0
    const/16 v8, 0x8

    const/4 v9, -0x1

    const/4 v10, -0x2

    if-ge v7, v5, :cond_c

    .line 1288
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1289
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v8, :cond_b

    .line 1292
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lo/onChildrenLoaded$onPostMessage;

    .line 1293
    iget-object v13, v8, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 1294
    iget-boolean v14, v8, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    if-nez v14, :cond_b

    iget-boolean v14, v8, Lo/onChildrenLoaded$onPostMessage;->getExtras:Z

    if-nez v14, :cond_b

    .line 1297
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    .line 10634
    iput v14, v13, Lo/removeSubscription;->getExtras:I

    .line 1299
    iget v14, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1300
    iget v15, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v14, :cond_8

    if-nez v15, :cond_0

    goto :goto_3

    :cond_0
    if-ne v14, v10, :cond_1

    const/16 v16, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 1316
    :goto_1
    invoke-static {v1, v4, v14}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v14

    if-ne v15, v10, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 1321
    :goto_2
    invoke-static {v2, v3, v15}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v10

    .line 1323
    invoke-virtual {v12, v14, v10}, Landroid/view/View;->measure(II)V

    .line 1330
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 1331
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1333
    invoke-virtual {v13, v10}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 1334
    invoke-virtual {v13, v14}, Lo/removeSubscription;->onPostMessage(I)V

    if-eqz v16, :cond_3

    .line 11423
    iput v10, v13, Lo/removeSubscription;->AudioAttributesImplApi21Parcelizer:I

    :cond_3
    if-eqz v11, :cond_4

    .line 11432
    iput v14, v13, Lo/removeSubscription;->AudioAttributesImplBaseParcelizer:I

    .line 1343
    :cond_4
    iget-boolean v11, v8, Lo/onChildrenLoaded$onPostMessage;->isConnected:Z

    if-eqz v11, :cond_5

    .line 1344
    invoke-virtual {v12}, Landroid/view/View;->getBaseline()I

    move-result v11

    if-eq v11, v9, :cond_5

    .line 11577
    iput v11, v13, Lo/removeSubscription;->connect:I

    .line 1350
    :cond_5
    iget-boolean v9, v8, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    if-eqz v9, :cond_b

    iget-boolean v8, v8, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    if-eqz v8, :cond_b

    .line 12383
    iget-object v8, v13, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v8, :cond_6

    .line 12384
    new-instance v8, Lo/unregisterCallbackMessenger;

    invoke-direct {v8}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v8, v13, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 12386
    :cond_6
    iget-object v8, v13, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 1351
    invoke-virtual {v8, v10}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    .line 12394
    iget-object v8, v13, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v8, :cond_7

    .line 12395
    new-instance v8, Lo/unregisterCallbackMessenger;

    invoke-direct {v8}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v8, v13, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 12397
    :cond_7
    iget-object v8, v13, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 1352
    invoke-virtual {v8, v14}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    goto :goto_4

    .line 11383
    :cond_8
    :goto_3
    iget-object v8, v13, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v8, :cond_9

    .line 11384
    new-instance v8, Lo/unregisterCallbackMessenger;

    invoke-direct {v8}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v8, v13, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 11386
    :cond_9
    iget-object v8, v13, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 1303
    invoke-virtual {v8}, Lo/extraCallback$onMessageChannelReady;->onNavigationEvent()V

    .line 11394
    iget-object v8, v13, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v8, :cond_a

    .line 11395
    new-instance v8, Lo/unregisterCallbackMessenger;

    invoke-direct {v8}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v8, v13, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 11397
    :cond_a
    iget-object v8, v13, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 1304
    invoke-virtual {v8}, Lo/extraCallback$onMessageChannelReady;->onNavigationEvent()V

    :cond_b
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1357
    :cond_c
    iget-object v7, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v7}, Lo/addSubscription;->IPostMessageService$Stub()V

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v5, :cond_32

    .line 1360
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1361
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v8, :cond_2f

    .line 1364
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lo/onChildrenLoaded$onPostMessage;

    .line 1365
    iget-object v14, v13, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 1366
    iget-boolean v15, v13, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    if-nez v15, :cond_2f

    iget-boolean v15, v13, Lo/onChildrenLoaded$onPostMessage;->getExtras:Z

    if-nez v15, :cond_2f

    .line 1369
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v15

    .line 12634
    iput v15, v14, Lo/removeSubscription;->getExtras:I

    .line 1371
    iget v15, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1372
    iget v6, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v15, :cond_d

    if-nez v6, :cond_2f

    .line 1378
    :cond_d
    sget-object v8, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v14, v8}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v8

    .line 13058
    iget-object v8, v8, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 1379
    sget-object v9, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v14, v9}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v9

    .line 14058
    iget-object v9, v9, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 1380
    sget-object v10, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v14, v10}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v10

    .line 14144
    iget-object v10, v10, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v10, :cond_e

    .line 1380
    sget-object v10, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 1381
    invoke-virtual {v14, v10}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v10

    .line 15144
    iget-object v10, v10, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    .line 1382
    :goto_6
    sget-object v11, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v14, v11}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v11

    .line 16058
    iget-object v11, v11, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    move/from16 v18, v5

    .line 1383
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v14, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v5

    .line 17058
    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    move/from16 v19, v7

    .line 1384
    sget-object v7, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v14, v7}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v7

    .line 17144
    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_f

    .line 1384
    sget-object v7, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 1385
    invoke-virtual {v14, v7}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v7

    .line 18144
    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    :goto_7
    if-nez v15, :cond_10

    if-nez v6, :cond_10

    if-eqz v10, :cond_10

    if-nez v7, :cond_30

    :cond_10
    move-object/from16 v20, v13

    .line 1393
    iget-object v13, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v13}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v13

    move-object/from16 v21, v12

    sget-object v12, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-eq v13, v12, :cond_11

    const/4 v12, 0x1

    goto :goto_8

    :cond_11
    const/4 v12, 0x0

    .line 1394
    :goto_8
    iget-object v13, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v13}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v13

    sget-object v0, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-eq v13, v0, :cond_12

    const/4 v0, 0x1

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    :goto_9
    if-nez v12, :cond_14

    .line 18383
    iget-object v13, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v13, :cond_13

    .line 18384
    new-instance v13, Lo/unregisterCallbackMessenger;

    invoke-direct {v13}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v13, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 18386
    :cond_13
    iget-object v13, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 1400
    invoke-virtual {v13}, Lo/extraCallback$onMessageChannelReady;->onNavigationEvent()V

    :cond_14
    if-nez v0, :cond_16

    .line 18394
    iget-object v13, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v13, :cond_15

    .line 18395
    new-instance v13, Lo/unregisterCallbackMessenger;

    invoke-direct {v13}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v13, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 18397
    :cond_15
    iget-object v13, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 1403
    invoke-virtual {v13}, Lo/extraCallback$onMessageChannelReady;->onNavigationEvent()V

    :cond_16
    if-nez v15, :cond_1b

    if-eqz v12, :cond_1a

    .line 1406
    invoke-virtual {v14}, Lo/removeSubscription;->onPostMessage()Z

    move-result v13

    if-eqz v13, :cond_1a

    if-eqz v10, :cond_1a

    .line 19076
    iget v10, v8, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v13, 0x1

    if-ne v10, v13, :cond_17

    const/16 v17, 0x1

    goto :goto_a

    :cond_17
    const/16 v17, 0x0

    :goto_a
    if-eqz v17, :cond_1a

    .line 20076
    iget v10, v9, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v10, v13, :cond_18

    const/4 v13, 0x1

    goto :goto_b

    :cond_18
    const/4 v13, 0x0

    :goto_b
    if-eqz v13, :cond_1a

    .line 20315
    iget v9, v9, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 21315
    iget v8, v8, Lo/isEmpty;->onRelationshipValidationResult:F

    sub-float/2addr v9, v8

    float-to-int v15, v9

    .line 21383
    iget-object v8, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v8, :cond_19

    .line 21384
    new-instance v8, Lo/unregisterCallbackMessenger;

    invoke-direct {v8}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v8, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 21386
    :cond_19
    iget-object v8, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 1408
    invoke-virtual {v8, v15}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    goto :goto_c

    :cond_1a
    const/4 v8, -0x2

    .line 1412
    invoke-static {v1, v4, v8}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v9

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_e

    :cond_1b
    const/4 v8, -0x2

    const/4 v9, -0x1

    if-ne v15, v9, :cond_1c

    .line 1418
    invoke-static {v1, v4, v9}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v10

    move v9, v10

    const/4 v13, 0x0

    goto :goto_e

    :cond_1c
    if-ne v15, v8, :cond_1d

    const/4 v13, 0x1

    goto :goto_d

    :cond_1d
    :goto_c
    const/4 v13, 0x0

    .line 1424
    :goto_d
    invoke-static {v1, v4, v15}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v9

    :goto_e
    if-nez v6, :cond_23

    if-eqz v0, :cond_21

    .line 1428
    invoke-virtual {v14}, Lo/removeSubscription;->onNavigationEvent()Z

    move-result v6

    if-eqz v6, :cond_21

    if-eqz v7, :cond_21

    .line 22076
    iget v6, v11, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1e

    const/4 v6, 0x1

    goto :goto_f

    :cond_1e
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_22

    .line 23076
    iget v6, v5, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v6, v7, :cond_1f

    const/4 v6, 0x1

    goto :goto_10

    :cond_1f
    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_22

    .line 23315
    iget v5, v5, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 24315
    iget v6, v11, Lo/isEmpty;->onRelationshipValidationResult:F

    sub-float/2addr v5, v6

    float-to-int v6, v5

    .line 24394
    iget-object v5, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v5, :cond_20

    .line 24395
    new-instance v5, Lo/unregisterCallbackMessenger;

    invoke-direct {v5}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v5, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 24397
    :cond_20
    iget-object v5, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 1430
    invoke-virtual {v5, v6}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    const/4 v5, -0x2

    goto :goto_12

    :cond_21
    const/4 v7, 0x1

    :cond_22
    const/4 v5, -0x2

    .line 1434
    invoke-static {v2, v3, v5}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v0

    move-object/from16 v10, v21

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_14

    :cond_23
    const/4 v5, -0x2

    const/4 v7, 0x1

    const/4 v8, -0x1

    if-ne v6, v8, :cond_24

    .line 1440
    invoke-static {v2, v3, v8}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v6

    move-object/from16 v10, v21

    const/4 v8, 0x0

    :goto_11
    move/from16 v22, v6

    move v6, v0

    move/from16 v0, v22

    goto :goto_14

    :cond_24
    if-ne v6, v5, :cond_25

    const/4 v8, 0x1

    goto :goto_13

    :cond_25
    :goto_12
    const/4 v8, 0x0

    .line 1446
    :goto_13
    invoke-static {v2, v3, v6}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v6

    move-object/from16 v10, v21

    goto :goto_11

    .line 1449
    :goto_14
    invoke-virtual {v10, v9, v0}, Landroid/view/View;->measure(II)V

    .line 1456
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1457
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1459
    invoke-virtual {v14, v0}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 1460
    invoke-virtual {v14, v9}, Lo/removeSubscription;->onPostMessage(I)V

    if-eqz v13, :cond_26

    .line 24423
    iput v0, v14, Lo/removeSubscription;->AudioAttributesImplApi21Parcelizer:I

    :cond_26
    if-eqz v8, :cond_27

    .line 24432
    iput v9, v14, Lo/removeSubscription;->AudioAttributesImplBaseParcelizer:I

    :cond_27
    const/4 v8, 0x2

    if-eqz v12, :cond_29

    .line 25383
    iget-object v11, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v11, :cond_28

    .line 25384
    new-instance v11, Lo/unregisterCallbackMessenger;

    invoke-direct {v11}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v11, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 25386
    :cond_28
    iget-object v11, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 1469
    invoke-virtual {v11, v0}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    goto :goto_15

    .line 26383
    :cond_29
    iget-object v0, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v0, :cond_2a

    .line 26384
    new-instance v0, Lo/unregisterCallbackMessenger;

    invoke-direct {v0}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v0, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 26386
    :cond_2a
    iget-object v0, v14, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 27041
    iput v8, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    :goto_15
    if-eqz v6, :cond_2c

    .line 27394
    iget-object v0, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v0, :cond_2b

    .line 27395
    new-instance v0, Lo/unregisterCallbackMessenger;

    invoke-direct {v0}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v0, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 27397
    :cond_2b
    iget-object v0, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 1474
    invoke-virtual {v0, v9}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    goto :goto_16

    .line 28394
    :cond_2c
    iget-object v0, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v0, :cond_2d

    .line 28395
    new-instance v0, Lo/unregisterCallbackMessenger;

    invoke-direct {v0}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v0, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 28397
    :cond_2d
    iget-object v0, v14, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 29041
    iput v8, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    :goto_16
    move-object/from16 v13, v20

    .line 1479
    iget-boolean v0, v13, Lo/onChildrenLoaded$onPostMessage;->isConnected:Z

    if-eqz v0, :cond_2e

    .line 1480
    invoke-virtual {v10}, Landroid/view/View;->getBaseline()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_31

    .line 29577
    iput v0, v14, Lo/removeSubscription;->connect:I

    goto :goto_17

    :cond_2e
    const/4 v6, -0x1

    goto :goto_17

    :cond_2f
    move/from16 v18, v5

    move/from16 v19, v7

    :cond_30
    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    :cond_31
    :goto_17
    add-int/lit8 v0, v19, 0x1

    const/16 v8, 0x8

    const/4 v9, -0x1

    const/4 v10, -0x2

    move v7, v0

    move/from16 v5, v18

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_32
    return-void
.end method

.method private extraCallback(Landroid/util/AttributeSet;)V
    .locals 13

    .line 595
    iget-object v0, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 3587
    iput-object p0, v0, Lo/removeSubscription;->getRoot:Ljava/lang/Object;

    .line 596
    iget-object v0, p0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Lo/onChildrenLoaded;->newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

    if-eqz p1, :cond_b

    .line 599
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 600
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_a

    .line 602
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 603
    sget v5, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 604
    iget v5, p0, Lo/onChildrenLoaded;->onNavigationEvent:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lo/onChildrenLoaded;->onNavigationEvent:I

    goto/16 :goto_4

    .line 605
    :cond_0
    sget v5, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 606
    iget v5, p0, Lo/onChildrenLoaded;->onTransact:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lo/onChildrenLoaded;->onTransact:I

    goto/16 :goto_4

    .line 607
    :cond_1
    sget v5, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 608
    iget v5, p0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    goto/16 :goto_4

    .line 609
    :cond_2
    sget v5, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 610
    iget v5, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    goto/16 :goto_4

    .line 611
    :cond_3
    sget v5, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 612
    iget v5, p0, Lo/onChildrenLoaded;->asBinder:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lo/onChildrenLoaded;->asBinder:I

    goto :goto_4

    .line 613
    :cond_4
    sget v5, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_9

    .line 614
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 616
    :try_start_0
    new-instance v5, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v5}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    iput-object v5, p0, Lo/onChildrenLoaded;->newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

    .line 617
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 4145
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 4146
    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4151
    :try_start_1
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_1
    const/4 v9, 0x1

    if-eq v8, v9, :cond_8

    if-eqz v8, :cond_7

    const/4 v10, 0x2

    if-eq v8, v10, :cond_5

    goto :goto_2

    .line 4159
    :cond_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 4160
    invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v10

    .line 4189
    new-instance v11, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    invoke-direct {v11, v2}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;-><init>(B)V

    .line 4190
    sget-object v12, Lo/MediaDescriptionCompat$ICustomTabsCallback;->ConstraintSet:[I

    invoke-virtual {v6, v10, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 4191
    invoke-static {v11, v10}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;Landroid/content/res/TypedArray;)V

    .line 4192
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    const-string v10, "Guideline"

    .line 4161
    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4162
    iput-boolean v9, v11, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCallback:Z

    .line 4164
    :cond_6
    iget-object v8, v5, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    iget v9, v11, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onMessageChannelReady:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9, v11}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4156
    :cond_7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4153
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v5

    .line 4176
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception v5

    .line 4174
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 619
    :catch_2
    iput-object v0, p0, Lo/onChildrenLoaded;->newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

    .line 621
    :cond_8
    :goto_3
    iput v4, p0, Lo/onChildrenLoaded;->warmup:I

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 624
    :cond_a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    :cond_b
    iget-object p1, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v0, p0, Lo/onChildrenLoaded;->asBinder:I

    .line 5113
    iput v0, p1, Lo/addSubscription;->onResult:I

    return-void
.end method

.method private onMessageChannelReady()V
    .locals 9

    .line 1258
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1260
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1261
    instance-of v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;

    if-eqz v4, :cond_2

    .line 1262
    check-cast v3, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;

    .line 8194
    iget-object v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 8197
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lo/onChildrenLoaded$onPostMessage;

    .line 8198
    iget-object v3, v3, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    .line 8199
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded$onPostMessage;

    .line 8200
    iget-object v5, v3, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 8634
    iput v1, v5, Lo/removeSubscription;->getExtras:I

    .line 8201
    iget-object v5, v4, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    iget-object v6, v3, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 8773
    iget v7, v6, Lo/removeSubscription;->getExtras:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    .line 8776
    :cond_0
    iget v6, v6, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 8201
    :goto_1
    invoke-virtual {v5, v6}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 8202
    iget-object v4, v4, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    iget-object v5, v3, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 8830
    iget v6, v5, Lo/removeSubscription;->getExtras:I

    if-ne v6, v8, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    .line 8833
    :cond_1
    iget v5, v5, Lo/removeSubscription;->INotificationSideChannel:I

    .line 8202
    :goto_2
    invoke-virtual {v4, v5}, Lo/removeSubscription;->onPostMessage(I)V

    .line 8203
    iget-object v3, v3, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 9634
    iput v8, v3, Lo/removeSubscription;->getExtras:I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1266
    :cond_3
    iget-object v0, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_4

    :goto_3
    if-ge v1, v0, :cond_4

    .line 1269
    iget-object v2, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method private onMessageChannelReady(II)V
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p2

    .line 1161
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    .line 1162
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    .line 1164
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_d

    move-object/from16 v7, p0

    .line 1166
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1167
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_c

    .line 1170
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lo/onChildrenLoaded$onPostMessage;

    .line 1171
    iget-object v10, v9, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 1172
    iget-boolean v11, v9, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    if-nez v11, :cond_c

    iget-boolean v11, v9, Lo/onChildrenLoaded$onPostMessage;->getExtras:Z

    if-nez v11, :cond_c

    .line 1175
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    .line 6634
    iput v11, v10, Lo/removeSubscription;->getExtras:I

    .line 1177
    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1178
    iget v12, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1182
    iget-boolean v13, v9, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    const/4 v14, -0x1

    const/4 v15, 0x1

    if-nez v13, :cond_2

    iget-boolean v13, v9, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    if-nez v13, :cond_2

    iget-boolean v13, v9, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    if-nez v13, :cond_0

    iget v13, v9, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    if-eq v13, v15, :cond_2

    :cond_0
    iget v13, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v13, v14, :cond_2

    iget-boolean v13, v9, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    if-nez v13, :cond_1

    iget v13, v9, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    if-eq v13, v15, :cond_2

    iget v13, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v13, v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v13, 0x1

    :goto_2
    if-eqz v13, :cond_9

    const/4 v13, -0x2

    if-nez v11, :cond_3

    .line 1200
    invoke-static {v0, v3, v13}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v11

    const/16 v16, 0x1

    goto :goto_4

    :cond_3
    if-ne v11, v14, :cond_4

    .line 1204
    invoke-static {v0, v3, v14}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v11

    const/16 v16, 0x0

    goto :goto_4

    :cond_4
    if-ne v11, v13, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    .line 1210
    :goto_3
    invoke-static {v0, v3, v11}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v11

    :goto_4
    if-nez v12, :cond_6

    .line 1214
    invoke-static {v1, v2, v13}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v12

    goto :goto_6

    :cond_6
    if-ne v12, v14, :cond_7

    .line 1218
    invoke-static {v1, v2, v14}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v12

    const/4 v15, 0x0

    goto :goto_6

    :cond_7
    if-ne v12, v13, :cond_8

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    .line 1224
    :goto_5
    invoke-static {v1, v2, v12}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v12

    .line 1227
    :goto_6
    invoke-virtual {v8, v11, v12}, Landroid/view/View;->measure(II)V

    .line 1234
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 1235
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    goto :goto_7

    :cond_9
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 1238
    :goto_7
    invoke-virtual {v10, v11}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 1239
    invoke-virtual {v10, v12}, Lo/removeSubscription;->onPostMessage(I)V

    if-eqz v16, :cond_a

    .line 7423
    iput v11, v10, Lo/removeSubscription;->AudioAttributesImplApi21Parcelizer:I

    :cond_a
    if-eqz v15, :cond_b

    .line 7432
    iput v12, v10, Lo/removeSubscription;->AudioAttributesImplBaseParcelizer:I

    .line 1248
    :cond_b
    iget-boolean v9, v9, Lo/onChildrenLoaded$onPostMessage;->isConnected:Z

    if-eqz v9, :cond_c

    .line 1249
    invoke-virtual {v8}, Landroid/view/View;->getBaseline()I

    move-result v8

    if-eq v8, v14, :cond_c

    .line 7577
    iput v8, v10, Lo/removeSubscription;->connect:I

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v7, p0

    return-void
.end method

.method protected static onNavigationEvent()Lo/onChildrenLoaded$onPostMessage;
    .locals 2

    .line 1980
    new-instance v0, Lo/onChildrenLoaded$onPostMessage;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lo/onChildrenLoaded$onPostMessage;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 634
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 635
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0xe

    if-ge p2, p3, :cond_0

    .line 636
    invoke-virtual {p0, p1}, Lo/onChildrenLoaded;->onViewAdded(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1996
    instance-of p1, p1, Lo/onChildrenLoaded$onPostMessage;

    return p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    .line 2023
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2024
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2025
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2026
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 2027
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    move-object/from16 v5, p0

    .line 2031
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2032
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 2035
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2036
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 2037
    check-cast v6, Ljava/lang/String;

    const-string v7, ","

    .line 2038
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2039
    array-length v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_0

    .line 2040
    aget-object v7, v6, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    .line 2041
    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    .line 2042
    aget-object v9, v6, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    .line 2043
    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-float v7, v7

    const/high16 v10, 0x44870000    # 1080.0f

    div-float/2addr v7, v10

    mul-float v7, v7, v1

    float-to-int v7, v7

    int-to-float v8, v8

    const/high16 v11, 0x44f00000    # 1920.0f

    div-float/2addr v8, v11

    mul-float v8, v8, v2

    float-to-int v8, v8

    int-to-float v9, v9

    div-float/2addr v9, v10

    mul-float v9, v9, v1

    float-to-int v9, v9

    int-to-float v6, v6

    div-float/2addr v6, v11

    mul-float v6, v6, v2

    float-to-int v6, v6

    .line 2048
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v10, -0x10000

    .line 2049
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v7

    int-to-float v13, v8

    add-int/2addr v7, v9

    int-to-float v7, v7

    move-object/from16 v10, p1

    move v11, v14

    move v12, v13

    move v9, v13

    move v13, v7

    move/from16 v16, v14

    move v14, v9

    move-object/from16 v17, v15

    .line 2050
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v8, v6

    int-to-float v6, v8

    move v11, v7

    move v12, v9

    move v14, v6

    .line 2051
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move/from16 v13, v16

    .line 2052
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v11, v16

    move v14, v9

    .line 2053
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v8, -0xff0100

    .line 2054
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setColor(I)V

    move v12, v9

    move v13, v7

    move v14, v6

    move-object v8, v15

    .line 2055
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v12, v6

    move v14, v9

    .line 2056
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v5, p0

    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 50860
    new-instance v0, Lo/onChildrenLoaded$onPostMessage;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lo/onChildrenLoaded$onPostMessage;-><init>(II)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 50861
    new-instance v0, Lo/onChildrenLoaded$onPostMessage;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lo/onChildrenLoaded$onPostMessage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1988
    new-instance v0, Lo/onChildrenLoaded$onPostMessage;

    invoke-direct {v0, p1}, Lo/onChildrenLoaded$onPostMessage;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1875
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 1876
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_4

    .line 1878
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 1879
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    .line 1880
    iget-object v1, v0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 1882
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lo/onChildrenLoaded$onPostMessage;->getExtras:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_3

    .line 1887
    :cond_0
    iget-boolean v0, v0, Lo/onChildrenLoaded$onPostMessage;->search:Z

    if-nez v0, :cond_3

    .line 50847
    iget v0, v1, Lo/removeSubscription;->RemoteActionCompatParcelizer:I

    iget v2, v1, Lo/removeSubscription;->AudioAttributesCompatParcelizer:I

    add-int/2addr v0, v2

    .line 50848
    iget v2, v1, Lo/removeSubscription;->IconCompatParcelizer:I

    iget v4, v1, Lo/removeSubscription;->read:I

    add-int/2addr v2, v4

    .line 50849
    iget v4, v1, Lo/removeSubscription;->getExtras:I

    if-ne v4, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 50852
    :cond_1
    iget v4, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_1
    add-int/2addr v4, v0

    .line 50853
    iget v5, v1, Lo/removeSubscription;->getExtras:I

    if-ne v5, v3, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 50856
    :cond_2
    iget v1, v1, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_2
    add-int/2addr v1, v2

    .line 1915
    invoke-virtual {p5, v0, v2, v4, v1}, Landroid/view/View;->layout(IIII)V

    .line 1916
    instance-of v3, p5, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;

    if-eqz v3, :cond_3

    .line 1917
    check-cast p5, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;

    .line 50857
    iget-object p5, p5, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    if-eqz p5, :cond_3

    .line 1920
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1921
    invoke-virtual {p5, v0, v2, v4, v1}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 1925
    :cond_4
    iget-object p1, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-lez p1, :cond_5

    :goto_3
    if-ge p3, p1, :cond_5

    .line 1928
    iget-object p2, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getCallbacks;

    .line 1929
    invoke-virtual {p2}, Lo/getCallbacks;->onNavigationEvent()V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1513
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 1514
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1515
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1516
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1542
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 1543
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    .line 1545
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v9, v7}, Lo/removeSubscription;->onMessageChannelReady(I)V

    .line 1546
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v9, v8}, Lo/removeSubscription;->extraCallback(I)V

    .line 1547
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v10, v0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    .line 30109
    iget-object v9, v9, Lo/removeSubscription;->updateVisuals:[I

    const/4 v11, 0x0

    aput v10, v9, v11

    .line 1548
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v10, v0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    .line 30113
    iget-object v9, v9, Lo/removeSubscription;->updateVisuals:[I

    const/4 v12, 0x1

    aput v10, v9, v12

    .line 1550
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x11

    if-lt v9, v10, :cond_1

    .line 1551
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual/range {p0 .. p0}, Lo/onChildrenLoaded;->getLayoutDirection()I

    move-result v13

    if-ne v13, v12, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 30259
    :goto_0
    iput-boolean v13, v9, Lo/addSubscription;->onMessageChannelReady:Z

    .line 30798
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 30799
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 30800
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 30801
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 30803
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v17

    add-int v16, v16, v17

    .line 30804
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    add-int v17, v17, v18

    .line 30806
    sget-object v18, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    .line 30807
    sget-object v19, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    .line 30811
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    const/high16 v10, -0x80000000

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_4

    if-eqz v9, :cond_3

    if-eq v9, v12, :cond_2

    :goto_1
    move-object/from16 v9, v18

    const/4 v13, 0x0

    goto :goto_3

    .line 30823
    :cond_2
    iget v9, v0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v13, v9, v17

    goto :goto_2

    .line 30819
    :cond_3
    sget-object v18, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    goto :goto_1

    .line 30814
    :cond_4
    sget-object v18, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    :goto_2
    move-object/from16 v9, v18

    :goto_3
    if-eq v14, v10, :cond_7

    if-eqz v14, :cond_6

    if-eq v14, v12, :cond_5

    :goto_4
    move-object/from16 v14, v19

    const/4 v15, 0x0

    goto :goto_6

    .line 30837
    :cond_5
    iget v14, v0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    sub-int v15, v14, v16

    goto :goto_5

    .line 30833
    :cond_6
    sget-object v19, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    goto :goto_4

    .line 30828
    :cond_7
    sget-object v19, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    :goto_5
    move-object/from16 v14, v19

    .line 30841
    :goto_6
    iget-object v12, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v12, v11}, Lo/removeSubscription;->asBinder(I)V

    .line 30842
    iget-object v12, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v12, v11}, Lo/removeSubscription;->ICustomTabsCallback$Stub(I)V

    .line 30843
    iget-object v12, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v12, v9}, Lo/removeSubscription;->ICustomTabsCallback(Lo/removeSubscription$onNavigationEvent;)V

    .line 30844
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v9, v13}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 30845
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v9, v14}, Lo/removeSubscription;->onPostMessage(Lo/removeSubscription$onNavigationEvent;)V

    .line 30846
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v9, v15}, Lo/removeSubscription;->onPostMessage(I)V

    .line 30847
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v12, v0, Lo/onChildrenLoaded;->onNavigationEvent:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v9, v12}, Lo/removeSubscription;->asBinder(I)V

    .line 30848
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v12, v0, Lo/onChildrenLoaded;->onTransact:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v9, v12}, Lo/removeSubscription;->ICustomTabsCallback$Stub(I)V

    .line 1555
    iget-object v9, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 31773
    iget v12, v9, Lo/removeSubscription;->getExtras:I

    const/16 v13, 0x8

    if-ne v12, v13, :cond_8

    const/4 v9, 0x0

    goto :goto_7

    .line 31776
    :cond_8
    iget v9, v9, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 1556
    :goto_7
    iget-object v12, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 31830
    iget v14, v12, Lo/removeSubscription;->getExtras:I

    if-ne v14, v13, :cond_9

    const/4 v12, 0x0

    goto :goto_8

    .line 31833
    :cond_9
    iget v12, v12, Lo/removeSubscription;->INotificationSideChannel:I

    .line 1559
    :goto_8
    iget-boolean v14, v0, Lo/onChildrenLoaded;->asInterface:Z

    if-eqz v14, :cond_48

    .line 1560
    iput-boolean v11, v0, Lo/onChildrenLoaded;->asInterface:Z

    .line 32791
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v14, :cond_b

    .line 32795
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 32796
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->isLayoutRequested()Z

    move-result v18

    if-eqz v18, :cond_a

    const/4 v10, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_b
    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_46

    .line 32802
    iget-object v10, v0, Lo/onChildrenLoaded;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/AbstractCollection;->clear()V

    .line 32808
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v10

    .line 32810
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-eqz v10, :cond_d

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v14, :cond_d

    .line 32816
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 32818
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getId()I

    move-result v11

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v11

    .line 32819
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v11, v15}, Lo/onChildrenLoaded;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x2f

    .line 32820
    invoke-virtual {v11, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v15, -0x1

    if-eq v2, v15, :cond_c

    add-int/lit8 v2, v2, 0x1

    .line 32822
    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 32824
    :cond_c
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {v0, v2}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    .line 33659
    iput-object v11, v2, Lo/removeSubscription;->getSessionToken:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    const/4 v11, 0x0

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v14, :cond_11

    .line 32833
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    if-ne v13, v0, :cond_e

    .line 34155
    iget-object v11, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    goto :goto_d

    :cond_e
    if-nez v13, :cond_f

    const/4 v11, 0x0

    goto :goto_d

    .line 34157
    :cond_f
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lo/onChildrenLoaded$onPostMessage;

    iget-object v11, v11, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    :goto_d
    if-eqz v11, :cond_10

    .line 32838
    invoke-virtual {v11}, Lo/removeSubscription;->ICustomTabsCallback$Stub()V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 32841
    :cond_11
    iget v2, v0, Lo/onChildrenLoaded;->warmup:I

    const/4 v13, -0x1

    if-eq v2, v13, :cond_18

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v14, :cond_18

    .line 32843
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 32844
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v15

    iget v11, v0, Lo/onChildrenLoaded;->warmup:I

    if-ne v15, v11, :cond_17

    instance-of v11, v13, Lo/setSubscription;

    if-eqz v11, :cond_17

    .line 32845
    check-cast v13, Lo/setSubscription;

    .line 35147
    iget-object v11, v13, Lo/setSubscription;->onPostMessage:Lo/MediaBrowserCompat$SubscriptionCallback;

    if-nez v11, :cond_12

    .line 35148
    new-instance v11, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v11}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    iput-object v11, v13, Lo/setSubscription;->onPostMessage:Lo/MediaBrowserCompat$SubscriptionCallback;

    .line 35151
    :cond_12
    iget-object v11, v13, Lo/setSubscription;->onPostMessage:Lo/MediaBrowserCompat$SubscriptionCallback;

    .line 35761
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    .line 35762
    iget-object v1, v11, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->clear()V

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v15, :cond_16

    move/from16 v22, v15

    .line 35764
    invoke-virtual {v13, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 35765
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    move/from16 v24, v7

    move-object/from16 v7, v23

    check-cast v7, Lo/setSubscription$ICustomTabsCallback;

    move/from16 v23, v8

    .line 35767
    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v8

    move/from16 v25, v6

    const/4 v6, -0x1

    if-eq v8, v6, :cond_15

    .line 35771
    iget-object v6, v11, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    move/from16 v26, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 35772
    iget-object v5, v11, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move/from16 v27, v4

    new-instance v4, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move/from16 v28, v3

    const/4 v3, 0x0

    invoke-direct {v4, v3}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;-><init>(B)V

    invoke-virtual {v5, v6, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_13
    move/from16 v28, v3

    move/from16 v27, v4

    .line 35774
    :goto_10
    iget-object v3, v11, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    .line 35775
    instance-of v4, v15, Lo/getCallbacks;

    if-eqz v4, :cond_14

    .line 35776
    check-cast v15, Lo/getCallbacks;

    .line 36526
    invoke-virtual {v3, v8, v7}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCallback(ILo/setSubscription$ICustomTabsCallback;)V

    .line 36527
    instance-of v4, v15, Lo/putCallback;

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    .line 36528
    iput v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionSuspended:I

    .line 36529
    check-cast v15, Lo/putCallback;

    .line 37135
    iget v4, v15, Lo/putCallback;->ICustomTabsCallback:I

    .line 36530
    iput v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->onConnectionFailed:I

    .line 36531
    invoke-virtual {v15}, Lo/getCallbacks;->ICustomTabsCallback()[I

    move-result-object v4

    iput-object v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:[I

    .line 37358
    :cond_14
    invoke-virtual {v3, v8, v7}, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->extraCallback(ILo/setSubscription$ICustomTabsCallback;)V

    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v22

    move/from16 v8, v23

    move/from16 v7, v24

    move/from16 v6, v25

    move/from16 v5, v26

    move/from16 v4, v27

    move/from16 v3, v28

    goto :goto_f

    .line 35769
    :cond_15
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_16
    move/from16 v28, v3

    move/from16 v27, v4

    move/from16 v26, v5

    move/from16 v25, v6

    move/from16 v24, v7

    move/from16 v23, v8

    .line 35152
    iget-object v1, v13, Lo/setSubscription;->onPostMessage:Lo/MediaBrowserCompat$SubscriptionCallback;

    .line 32845
    iput-object v1, v0, Lo/onChildrenLoaded;->newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

    goto :goto_11

    :cond_17
    move/from16 v28, v3

    move/from16 v27, v4

    move/from16 v26, v5

    move/from16 v25, v6

    move/from16 v24, v7

    move/from16 v23, v8

    :goto_11
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, p1

    move/from16 v8, v23

    move/from16 v7, v24

    move/from16 v6, v25

    move/from16 v5, v26

    move/from16 v4, v27

    move/from16 v3, v28

    goto/16 :goto_e

    :cond_18
    move/from16 v28, v3

    move/from16 v27, v4

    move/from16 v26, v5

    move/from16 v25, v6

    move/from16 v24, v7

    move/from16 v23, v8

    .line 32849
    iget-object v1, v0, Lo/onChildrenLoaded;->newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

    if-eqz v1, :cond_19

    .line 32850
    invoke-virtual {v1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(Lo/onChildrenLoaded;)V

    .line 32853
    :cond_19
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v1}, Lo/getCallback;->cancel()V

    .line 32855
    iget-object v1, v0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-lez v1, :cond_1a

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_1a

    .line 32858
    iget-object v3, v0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/getCallbacks;

    .line 32859
    invoke-virtual {v3, v0}, Lo/getCallbacks;->onMessageChannelReady(Lo/onChildrenLoaded;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_1a
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v14, :cond_1d

    .line 32864
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 32865
    instance-of v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;

    if-eqz v3, :cond_1c

    .line 32866
    check-cast v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;

    .line 38147
    iget v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1b

    .line 38148
    invoke-virtual {v2}, Landroid/view/View;->isInEditMode()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 38149
    iget v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onPostMessage:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 38153
    :cond_1b
    iget v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->extraCallback:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    .line 38154
    iget-object v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    if-eqz v3, :cond_1c

    .line 38155
    iget-object v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    .line 38156
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded$onPostMessage;

    const/4 v4, 0x1

    .line 38157
    iput-boolean v4, v3, Lo/onChildrenLoaded$onPostMessage;->search:Z

    .line 38158
    iget-object v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi21;->onNavigationEvent:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38159
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_1d
    const/4 v1, 0x0

    :goto_14
    if-ge v1, v14, :cond_47

    .line 32871
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, v0, :cond_1e

    .line 39155
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    goto :goto_15

    :cond_1e
    if-nez v2, :cond_1f

    const/4 v3, 0x0

    goto :goto_15

    .line 39157
    :cond_1f
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded$onPostMessage;

    iget-object v3, v3, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    :goto_15
    if-eqz v3, :cond_45

    .line 32876
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lo/onChildrenLoaded$onPostMessage;

    .line 32877
    invoke-virtual {v4}, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent()V

    if-eqz v10, :cond_20

    .line 32886
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 32887
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v5, v6}, Lo/onChildrenLoaded;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "id/"

    .line 32888
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 32889
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-direct {v0, v6}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v6

    .line 39659
    iput-object v5, v6, Lo/removeSubscription;->getSessionToken:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_16

    :catch_1
    nop

    .line 32895
    :cond_20
    :goto_16
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 40634
    iput v5, v3, Lo/removeSubscription;->getExtras:I

    .line 32896
    iget-boolean v5, v4, Lo/onChildrenLoaded$onPostMessage;->search:Z

    if-eqz v5, :cond_21

    const/16 v5, 0x8

    .line 41634
    iput v5, v3, Lo/removeSubscription;->getExtras:I

    .line 42587
    :cond_21
    iput-object v2, v3, Lo/removeSubscription;->getRoot:Ljava/lang/Object;

    .line 32900
    iget-object v2, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v2, v3}, Lo/getCallback;->onPostMessage(Lo/removeSubscription;)V

    .line 32902
    iget-boolean v2, v4, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    if-eqz v2, :cond_22

    iget-boolean v2, v4, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    if-nez v2, :cond_23

    .line 32903
    :cond_22
    iget-object v2, v0, Lo/onChildrenLoaded;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 32906
    :cond_23
    iget-boolean v2, v4, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    if-eqz v2, :cond_28

    .line 32907
    check-cast v3, Lo/getMediaItem;

    .line 32908
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->setCallbacksMessenger:I

    .line 32909
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->handleMessage:I

    .line 32910
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->setInternalConnectionCallback:F

    .line 32911
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-ge v7, v8, :cond_24

    .line 32912
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->extraCallback:I

    .line 32913
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->onPostMessage:I

    .line 32914
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback:F

    :cond_24
    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v7, v6, v4

    if-eqz v7, :cond_26

    if-lez v7, :cond_25

    .line 43173
    iput v6, v3, Lo/getMediaItem;->ICustomTabsCallback:F

    const/4 v6, -0x1

    .line 43174
    iput v6, v3, Lo/getMediaItem;->onMessageChannelReady:I

    .line 43175
    iput v6, v3, Lo/getMediaItem;->handleMessage:I

    goto/16 :goto_23

    :cond_25
    const/4 v6, -0x1

    goto/16 :goto_23

    :cond_26
    const/4 v6, -0x1

    if-eq v2, v6, :cond_27

    if-ltz v2, :cond_45

    .line 43181
    iput v4, v3, Lo/getMediaItem;->ICustomTabsCallback:F

    .line 43182
    iput v2, v3, Lo/getMediaItem;->onMessageChannelReady:I

    .line 43183
    iput v6, v3, Lo/getMediaItem;->handleMessage:I

    goto/16 :goto_23

    :cond_27
    if-eq v5, v6, :cond_45

    if-ltz v5, :cond_45

    .line 43189
    iput v4, v3, Lo/getMediaItem;->ICustomTabsCallback:F

    .line 43190
    iput v6, v3, Lo/getMediaItem;->onMessageChannelReady:I

    .line 43191
    iput v5, v3, Lo/getMediaItem;->handleMessage:I

    goto/16 :goto_23

    :cond_28
    const/4 v6, -0x1

    .line 32923
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    if-ne v2, v6, :cond_29

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v6, :cond_29

    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v6, :cond_45

    .line 32943
    :cond_29
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->subscribe:I

    .line 32944
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->sendCustomAction:I

    .line 32945
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->getItem:I

    .line 32946
    iget v7, v4, Lo/onChildrenLoaded$onPostMessage;->unsubscribe:I

    .line 32947
    iget v8, v4, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$ConnectionCallback:I

    .line 32948
    iget v11, v4, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat$CallbackHandler:I

    .line 32949
    iget v13, v4, Lo/onChildrenLoaded$onPostMessage;->getNotifyChildrenChangedOptions:F

    .line 32951
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    move/from16 v22, v2

    const/16 v2, 0x11

    if-ge v15, v2, :cond_2f

    .line 32954
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->onNavigationEvent:I

    .line 32955
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->onMessageChannelReady:I

    .line 32956
    iget v7, v4, Lo/onChildrenLoaded$onPostMessage;->asInterface:I

    .line 32957
    iget v8, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub:I

    .line 32958
    iget v11, v4, Lo/onChildrenLoaded$onPostMessage;->extraCommand:I

    .line 32959
    iget v13, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService$Stub$Proxy:I

    .line 32960
    iget v15, v4, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    const/4 v2, -0x1

    if-ne v5, v2, :cond_2a

    if-ne v6, v2, :cond_2a

    move/from16 v21, v5

    .line 32963
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    if-eq v5, v2, :cond_2b

    .line 32964
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->updateVisuals:I

    :cond_2a
    move/from16 v21, v5

    goto :goto_17

    .line 32965
    :cond_2b
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    if-eq v5, v2, :cond_2c

    .line 32966
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->postMessage:I

    goto :goto_18

    :cond_2c
    :goto_17
    move v5, v6

    :goto_18
    if-ne v7, v2, :cond_2e

    if-ne v8, v2, :cond_2e

    .line 32970
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    if-eq v6, v2, :cond_2d

    .line 32971
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->mayLaunchUrl:I

    move v7, v6

    :goto_19
    move/from16 v32, v11

    move/from16 v36, v13

    move v13, v15

    move v6, v5

    goto :goto_1a

    .line 32972
    :cond_2d
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    if-eq v6, v2, :cond_2e

    .line 32973
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->requestPostMessageChannel:I

    move v8, v6

    goto :goto_19

    :cond_2e
    move v6, v5

    move/from16 v32, v11

    move/from16 v36, v13

    move v13, v15

    :goto_1a
    move/from16 v5, v21

    goto :goto_1b

    :cond_2f
    const/4 v2, -0x1

    move/from16 v32, v8

    move/from16 v36, v11

    move v8, v7

    move v7, v6

    move v6, v5

    move/from16 v5, v22

    .line 32979
    :goto_1b
    iget v11, v4, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    if-eq v11, v2, :cond_30

    .line 32980
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->newSession:I

    invoke-direct {v0, v2}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 32982
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->getInterfaceDescriptor:F

    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->warmup:I

    .line 43605
    sget-object v7, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asInterface:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v8, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asInterface:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 43704
    invoke-virtual {v3, v7}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v29

    .line 43705
    invoke-virtual {v2, v8}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v30

    const/16 v32, 0x0

    .line 43706
    sget-object v33, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v31, v6

    invoke-virtual/range {v29 .. v35}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    .line 43607
    iput v5, v3, Lo/removeSubscription;->mayLaunchUrl:F

    goto/16 :goto_20

    :cond_30
    if-eq v5, v2, :cond_31

    .line 32987
    invoke-direct {v0, v5}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 32989
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 44704
    invoke-virtual {v3, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v29

    .line 44705
    invoke-virtual {v2, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v30

    .line 44706
    sget-object v33, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v31, v11

    invoke-virtual/range {v29 .. v35}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    goto :goto_1c

    :cond_31
    if-eq v6, v2, :cond_33

    .line 32994
    invoke-direct {v0, v6}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 32996
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 45704
    invoke-virtual {v3, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v29

    .line 45705
    invoke-virtual {v2, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v30

    .line 45706
    sget-object v33, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v31, v11

    invoke-virtual/range {v29 .. v35}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    :cond_32
    :goto_1c
    const/4 v2, -0x1

    :cond_33
    if-eq v7, v2, :cond_34

    .line 33004
    invoke-direct {v0, v7}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 33006
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 46704
    invoke-virtual {v3, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v33

    .line 46705
    invoke-virtual {v2, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v34

    .line 46706
    sget-object v37, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v38, 0x0

    const/16 v39, 0x1

    move/from16 v35, v7

    invoke-virtual/range {v33 .. v39}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    goto :goto_1d

    :cond_34
    if-eq v8, v2, :cond_35

    .line 33011
    invoke-direct {v0, v8}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 33013
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 47704
    invoke-virtual {v3, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v33

    .line 47705
    invoke-virtual {v2, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v34

    .line 47706
    sget-object v37, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v38, 0x0

    const/16 v39, 0x1

    move/from16 v35, v7

    invoke-virtual/range {v33 .. v39}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    .line 33020
    :cond_35
    :goto_1d
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_36

    .line 33021
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->asBinder:I

    invoke-direct {v0, v2}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 33023
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v4, Lo/onChildrenLoaded$onPostMessage;->validateRelationship:I

    .line 48704
    invoke-virtual {v3, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v29

    .line 48705
    invoke-virtual {v2, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v30

    .line 48706
    sget-object v33, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v31, v7

    move/from16 v32, v8

    invoke-virtual/range {v29 .. v35}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    goto :goto_1e

    .line 33027
    :cond_36
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_37

    .line 33028
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->onTransact:I

    invoke-direct {v0, v2}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 33030
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v4, Lo/onChildrenLoaded$onPostMessage;->validateRelationship:I

    .line 49704
    invoke-virtual {v3, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v29

    .line 49705
    invoke-virtual {v2, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v30

    .line 49706
    sget-object v33, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v31, v7

    move/from16 v32, v8

    invoke-virtual/range {v29 .. v35}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    .line 33037
    :cond_37
    :goto_1e
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_38

    .line 33038
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->onRelationshipValidationResult:I

    invoke-direct {v0, v2}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 33040
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v8, v4, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService:I

    .line 50704
    invoke-virtual {v3, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v29

    .line 50705
    invoke-virtual {v2, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v30

    .line 50706
    sget-object v33, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v31, v7

    move/from16 v32, v8

    invoke-virtual/range {v29 .. v35}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    goto :goto_1f

    .line 33044
    :cond_38
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_39

    .line 33045
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsCallback$Stub$Proxy:I

    invoke-direct {v0, v2}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 33047
    sget-object v5, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v8, v4, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService:I

    .line 50709
    invoke-virtual {v3, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v29

    .line 50710
    invoke-virtual {v2, v6}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v30

    .line 50711
    sget-object v33, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v34, 0x0

    const/16 v35, 0x1

    move/from16 v31, v7

    move/from16 v32, v8

    invoke-virtual/range {v29 .. v35}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    .line 33054
    :cond_39
    :goto_1f
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_3a

    .line 33055
    iget-object v2, v0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 33056
    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->ICustomTabsService:I

    invoke-direct {v0, v5}, Lo/onChildrenLoaded;->extraCallback(I)Lo/removeSubscription;

    move-result-object v5

    if-eqz v5, :cond_3a

    if-eqz v2, :cond_3a

    .line 33057
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Lo/onChildrenLoaded$onPostMessage;

    if-eqz v6, :cond_3a

    .line 33058
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded$onPostMessage;

    const/4 v6, 0x1

    .line 33059
    iput-boolean v6, v4, Lo/onChildrenLoaded$onPostMessage;->isConnected:Z

    .line 33060
    iput-boolean v6, v2, Lo/onChildrenLoaded$onPostMessage;->isConnected:Z

    .line 33061
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v29

    .line 33062
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 33063
    invoke-virtual {v5, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, -0x1

    .line 33064
    sget-object v33, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/16 v34, 0x0

    const/16 v35, 0x1

    invoke-virtual/range {v29 .. v35}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    .line 33067
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    .line 33068
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback()V

    :cond_3a
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    cmpl-float v6, v13, v5

    if-ltz v6, :cond_3b

    cmpl-float v6, v13, v2

    if-eqz v6, :cond_3b

    .line 50714
    iput v13, v3, Lo/removeSubscription;->getServiceComponent:F

    .line 33075
    :cond_3b
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    cmpl-float v5, v6, v5

    if-ltz v5, :cond_3c

    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_3c

    .line 33076
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel:F

    .line 50716
    iput v2, v3, Lo/removeSubscription;->isConnected:F

    :cond_3c
    :goto_20
    if-eqz v10, :cond_3e

    .line 33080
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3d

    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    if-eq v2, v5, :cond_3e

    .line 33082
    :cond_3d
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->disconnect:I

    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->MediaBrowserCompat:I

    invoke-virtual {v3, v2, v5}, Lo/removeSubscription;->ICustomTabsCallback(II)V

    .line 33086
    :cond_3e
    iget-boolean v2, v4, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    if-nez v2, :cond_40

    .line 33087
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3f

    .line 33088
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->onNavigationEvent:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/removeSubscription$onNavigationEvent;)V

    .line 33089
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v5, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    .line 33090
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v5, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    goto :goto_21

    .line 33092
    :cond_3f
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/removeSubscription$onNavigationEvent;)V

    const/4 v2, 0x0

    .line 33093
    invoke-virtual {v3, v2}, Lo/removeSubscription;->onNavigationEvent(I)V

    goto :goto_21

    .line 33096
    :cond_40
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/removeSubscription$onNavigationEvent;)V

    .line 33097
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v2}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 33099
    :goto_21
    iget-boolean v2, v4, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    if-nez v2, :cond_42

    .line 33100
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_41

    .line 33101
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->onNavigationEvent:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->onPostMessage(Lo/removeSubscription$onNavigationEvent;)V

    .line 33102
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v5, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    .line 33103
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v5, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    goto :goto_22

    .line 33105
    :cond_41
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->onMessageChannelReady:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->onPostMessage(Lo/removeSubscription$onNavigationEvent;)V

    const/4 v2, 0x0

    .line 33106
    invoke-virtual {v3, v2}, Lo/removeSubscription;->onPostMessage(I)V

    goto :goto_22

    .line 33109
    :cond_42
    sget-object v2, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->onPostMessage(Lo/removeSubscription$onNavigationEvent;)V

    .line 33110
    iget v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Lo/removeSubscription;->onPostMessage(I)V

    .line 33113
    :goto_22
    iget-object v2, v4, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    if-eqz v2, :cond_43

    .line 33114
    iget-object v2, v4, Lo/onChildrenLoaded$onPostMessage;->IPostMessageService$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lo/removeSubscription;->onNavigationEvent(Ljava/lang/String;)V

    .line 33116
    :cond_43
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->notify:F

    .line 50718
    iget-object v5, v3, Lo/removeSubscription;->getNotifyChildrenChangedOptions:[F

    const/4 v6, 0x0

    aput v2, v5, v6

    .line 33117
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->cancel:F

    .line 50720
    iget-object v5, v3, Lo/removeSubscription;->getNotifyChildrenChangedOptions:[F

    const/4 v6, 0x1

    aput v2, v5, v6

    .line 33118
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->getDefaultImpl:I

    .line 50722
    iput v2, v3, Lo/removeSubscription;->getItem:I

    .line 33119
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub:I

    .line 50724
    iput v2, v3, Lo/removeSubscription;->subscribe:I

    .line 33120
    iget v2, v4, Lo/onChildrenLoaded$onPostMessage;->setDefaultImpl:I

    iget v5, v4, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Stub$Proxy:I

    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->read:I

    iget v7, v4, Lo/onChildrenLoaded$onPostMessage;->RemoteActionCompatParcelizer:F

    .line 50726
    iput v2, v3, Lo/removeSubscription;->asBinder:I

    .line 50727
    iput v5, v3, Lo/removeSubscription;->asInterface:I

    .line 50728
    iput v6, v3, Lo/removeSubscription;->getInterfaceDescriptor:I

    .line 50729
    iput v7, v3, Lo/removeSubscription;->warmup:F

    const/4 v2, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v7, v5

    if-gez v6, :cond_44

    .line 50730
    iget v6, v3, Lo/removeSubscription;->asBinder:I

    if-nez v6, :cond_44

    .line 50731
    iput v2, v3, Lo/removeSubscription;->asBinder:I

    .line 33123
    :cond_44
    iget v6, v4, Lo/onChildrenLoaded$onPostMessage;->INotificationSideChannel$Default:I

    iget v7, v4, Lo/onChildrenLoaded$onPostMessage;->write:I

    iget v8, v4, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesCompatParcelizer:I

    iget v4, v4, Lo/onChildrenLoaded$onPostMessage;->IconCompatParcelizer:F

    .line 50734
    iput v6, v3, Lo/removeSubscription;->ICustomTabsCallback$Stub:I

    .line 50735
    iput v7, v3, Lo/removeSubscription;->ICustomTabsService:I

    .line 50736
    iput v8, v3, Lo/removeSubscription;->newSession:I

    .line 50737
    iput v4, v3, Lo/removeSubscription;->ICustomTabsCallback$Stub$Proxy:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_45

    .line 50738
    iget v4, v3, Lo/removeSubscription;->ICustomTabsCallback$Stub:I

    if-nez v4, :cond_45

    .line 50739
    iput v2, v3, Lo/removeSubscription;->ICustomTabsCallback$Stub:I

    :cond_45
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_14

    :cond_46
    move/from16 v28, v3

    move/from16 v27, v4

    move/from16 v26, v5

    move/from16 v25, v6

    move/from16 v24, v7

    move/from16 v23, v8

    :cond_47
    const/4 v1, 0x1

    goto :goto_24

    :cond_48
    move/from16 v28, v3

    move/from16 v27, v4

    move/from16 v26, v5

    move/from16 v25, v6

    move/from16 v24, v7

    move/from16 v23, v8

    const/4 v1, 0x0

    .line 1565
    :goto_24
    iget v2, v0, Lo/onChildrenLoaded;->asBinder:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_49

    const/4 v2, 0x1

    goto :goto_25

    :cond_49
    const/4 v2, 0x0

    :goto_25
    if-eqz v2, :cond_4a

    .line 1568
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v3}, Lo/addSubscription;->validateRelationship()V

    .line 1569
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v3, v9, v12}, Lo/addSubscription;->onMessageChannelReady(II)V

    .line 1570
    invoke-direct/range {p0 .. p2}, Lo/onChildrenLoaded;->extraCallback(II)V

    goto :goto_26

    .line 1572
    :cond_4a
    invoke-direct/range {p0 .. p2}, Lo/onChildrenLoaded;->onMessageChannelReady(II)V

    .line 1574
    :goto_26
    invoke-direct/range {p0 .. p0}, Lo/onChildrenLoaded;->onMessageChannelReady()V

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_4b

    if-eqz v1, :cond_4b

    .line 1583
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-static {v1}, Lo/newArray;->ICustomTabsCallback(Lo/addSubscription;)V

    .line 1585
    :cond_4b
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget-boolean v1, v1, Lo/addSubscription;->setInternalConnectionCallback:Z

    if-eqz v1, :cond_52

    .line 1586
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget-boolean v1, v1, Lo/addSubscription;->onConnected:Z

    if-eqz v1, :cond_4e

    move/from16 v1, v28

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_4d

    .line 1587
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v3, v3, Lo/addSubscription;->MediaBrowserCompat$CustomActionCallback:I

    move/from16 v4, v27

    if-ge v3, v4, :cond_4c

    .line 1588
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v5, v3, Lo/addSubscription;->MediaBrowserCompat$CustomActionCallback:I

    invoke-virtual {v3, v5}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 1590
    :cond_4c
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    sget-object v5, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    .line 1591
    invoke-virtual {v3, v5}, Lo/removeSubscription;->ICustomTabsCallback(Lo/removeSubscription$onNavigationEvent;)V

    goto :goto_27

    :cond_4d
    move/from16 v4, v27

    goto :goto_27

    :cond_4e
    move/from16 v4, v27

    move/from16 v1, v28

    .line 1593
    :goto_27
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget-boolean v3, v3, Lo/addSubscription;->onConnectionSuspended:Z

    if-eqz v3, :cond_51

    move/from16 v3, v26

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_50

    .line 1594
    iget-object v5, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v5, v5, Lo/addSubscription;->onProgressUpdate:I

    move/from16 v6, v25

    if-ge v5, v6, :cond_4f

    .line 1595
    iget-object v5, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v7, v5, Lo/addSubscription;->onProgressUpdate:I

    invoke-virtual {v5, v7}, Lo/removeSubscription;->onPostMessage(I)V

    .line 1597
    :cond_4f
    iget-object v5, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    sget-object v7, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    .line 1598
    invoke-virtual {v5, v7}, Lo/removeSubscription;->onPostMessage(Lo/removeSubscription$onNavigationEvent;)V

    goto :goto_28

    :cond_50
    move/from16 v6, v25

    goto :goto_28

    :cond_51
    move/from16 v6, v25

    move/from16 v3, v26

    goto :goto_28

    :cond_52
    move/from16 v6, v25

    move/from16 v3, v26

    move/from16 v4, v27

    move/from16 v1, v28

    .line 1602
    :goto_28
    iget v5, v0, Lo/onChildrenLoaded;->asBinder:I

    const/16 v7, 0x20

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_59

    .line 1603
    iget-object v5, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50742
    iget v7, v5, Lo/removeSubscription;->getExtras:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_53

    const/4 v5, 0x0

    goto :goto_29

    .line 50745
    :cond_53
    iget v5, v5, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 1604
    :goto_29
    iget-object v7, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50746
    iget v10, v7, Lo/removeSubscription;->getExtras:I

    if-ne v10, v8, :cond_54

    const/4 v7, 0x0

    goto :goto_2a

    .line 50749
    :cond_54
    iget v7, v7, Lo/removeSubscription;->INotificationSideChannel:I

    .line 1605
    :goto_2a
    iget v8, v0, Lo/onChildrenLoaded;->getInterfaceDescriptor:I

    if-eq v8, v5, :cond_55

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v1, v8, :cond_56

    .line 1606
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget-object v1, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v1, v10, v5}, Lo/newArray;->ICustomTabsCallback(Ljava/util/List;II)V

    goto :goto_2b

    :cond_55
    const/high16 v8, 0x40000000    # 2.0f

    .line 1608
    :cond_56
    :goto_2b
    iget v1, v0, Lo/onChildrenLoaded;->ICustomTabsService:I

    if-eq v1, v7, :cond_57

    if-ne v3, v8, :cond_57

    .line 1609
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget-object v1, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v1, v3, v7}, Lo/newArray;->ICustomTabsCallback(Ljava/util/List;II)V

    .line 1611
    :cond_57
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget-boolean v1, v1, Lo/addSubscription;->onConnected:Z

    if-eqz v1, :cond_58

    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v1, v1, Lo/addSubscription;->MediaBrowserCompat$CustomActionCallback:I

    if-le v1, v4, :cond_58

    .line 1612
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget-object v1, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v1, v3, v4}, Lo/newArray;->ICustomTabsCallback(Ljava/util/List;II)V

    goto :goto_2c

    :cond_58
    const/4 v3, 0x0

    .line 1614
    :goto_2c
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget-boolean v1, v1, Lo/addSubscription;->onConnectionSuspended:Z

    if-eqz v1, :cond_5a

    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget v1, v1, Lo/addSubscription;->onProgressUpdate:I

    if-le v1, v6, :cond_5a

    .line 1615
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    iget-object v1, v1, Lo/addSubscription;->onConnectionFailed:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v1, v4, v6}, Lo/newArray;->ICustomTabsCallback(Ljava/util/List;II)V

    goto :goto_2d

    :cond_59
    const/4 v3, 0x0

    .line 1620
    :cond_5a
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5b

    .line 50750
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v1}, Lo/getCallback;->ICustomTabsService$Stub$Proxy()V

    .line 1626
    :cond_5b
    iget-object v1, v0, Lo/onChildrenLoaded;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    .line 1628
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int v8, v23, v4

    .line 1629
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int v7, v24, v4

    if-lez v1, :cond_87

    .line 1637
    iget-object v5, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v5}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v5

    sget-object v6, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v5, v6, :cond_5c

    const/4 v5, 0x1

    goto :goto_2e

    :cond_5c
    const/4 v5, 0x0

    .line 1639
    :goto_2e
    iget-object v6, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v6}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v6

    sget-object v10, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v6, v10, :cond_5d

    const/4 v6, 0x1

    goto :goto_2f

    :cond_5d
    const/4 v6, 0x0

    .line 1641
    :goto_2f
    iget-object v10, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50755
    iget v11, v10, Lo/removeSubscription;->getExtras:I

    const/16 v13, 0x8

    if-ne v11, v13, :cond_5e

    const/4 v10, 0x0

    goto :goto_30

    .line 50758
    :cond_5e
    iget v10, v10, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 1641
    :goto_30
    iget v11, v0, Lo/onChildrenLoaded;->onNavigationEvent:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1642
    iget-object v11, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50759
    iget v14, v11, Lo/removeSubscription;->getExtras:I

    if-ne v14, v13, :cond_5f

    const/4 v11, 0x0

    goto :goto_31

    .line 50762
    :cond_5f
    iget v11, v11, Lo/removeSubscription;->INotificationSideChannel:I

    .line 1642
    :goto_31
    iget v13, v0, Lo/onChildrenLoaded;->onTransact:I

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v14, v10

    move v15, v11

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_32
    if-ge v10, v1, :cond_79

    .line 1644
    iget-object v3, v0, Lo/onChildrenLoaded;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/removeSubscription;

    .line 50763
    iget-object v4, v3, Lo/removeSubscription;->getRoot:Ljava/lang/Object;

    .line 1645
    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_77

    .line 1649
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    move/from16 v20, v1

    move-object/from16 v1, v19

    check-cast v1, Lo/onChildrenLoaded$onPostMessage;

    move/from16 v19, v12

    .line 1650
    iget-boolean v12, v1, Lo/onChildrenLoaded$onPostMessage;->getExtras:Z

    if-nez v12, :cond_76

    iget-boolean v12, v1, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    if-nez v12, :cond_76

    .line 1653
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v12

    move/from16 v22, v9

    const/16 v9, 0x8

    if-eq v12, v9, :cond_75

    if-eqz v2, :cond_64

    .line 50764
    iget-object v9, v3, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v9, :cond_60

    .line 50765
    new-instance v9, Lo/unregisterCallbackMessenger;

    invoke-direct {v9}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v9, v3, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 50767
    :cond_60
    iget-object v9, v3, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 50768
    iget v9, v9, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v12, 0x1

    if-ne v9, v12, :cond_61

    const/4 v9, 0x1

    goto :goto_33

    :cond_61
    const/4 v9, 0x0

    :goto_33
    if-eqz v9, :cond_64

    .line 50769
    iget-object v9, v3, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v9, :cond_62

    .line 50770
    new-instance v9, Lo/unregisterCallbackMessenger;

    invoke-direct {v9}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v9, v3, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50772
    :cond_62
    iget-object v9, v3, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50773
    iget v9, v9, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v12, 0x1

    if-ne v9, v12, :cond_63

    const/4 v9, 0x1

    goto :goto_34

    :cond_63
    const/4 v9, 0x0

    :goto_34
    if-nez v9, :cond_75

    goto :goto_35

    :cond_64
    const/4 v12, 0x1

    .line 1664
    :goto_35
    iget v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v12, -0x2

    if-ne v9, v12, :cond_65

    iget-boolean v9, v1, Lo/onChildrenLoaded$onPostMessage;->getRoot:Z

    if-eqz v9, :cond_65

    .line 1665
    iget v9, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v12, p1

    invoke-static {v12, v7, v9}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v9

    goto :goto_37

    :cond_65
    move/from16 v12, p1

    .line 50774
    iget v9, v3, Lo/removeSubscription;->getExtras:I

    const/16 v12, 0x8

    if-ne v9, v12, :cond_66

    const/4 v9, 0x0

    goto :goto_36

    .line 50777
    :cond_66
    iget v9, v3, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_36
    const/high16 v12, 0x40000000    # 2.0f

    .line 1667
    invoke-static {v9, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1669
    :goto_37
    iget v12, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v24, v7

    const/4 v7, -0x2

    if-ne v12, v7, :cond_67

    iget-boolean v7, v1, Lo/onChildrenLoaded$onPostMessage;->getSessionToken:Z

    if-eqz v7, :cond_67

    .line 1670
    iget v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v12, p2

    invoke-static {v12, v8, v7}, Lo/onChildrenLoaded;->getChildMeasureSpec(III)I

    move-result v7

    goto :goto_39

    :cond_67
    move/from16 v12, p2

    .line 50778
    iget v7, v3, Lo/removeSubscription;->getExtras:I

    const/16 v12, 0x8

    if-ne v7, v12, :cond_68

    const/4 v7, 0x0

    goto :goto_38

    .line 50781
    :cond_68
    iget v7, v3, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_38
    const/high16 v12, 0x40000000    # 2.0f

    .line 1672
    invoke-static {v7, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1676
    :goto_39
    invoke-virtual {v4, v9, v7}, Landroid/view/View;->measure(II)V

    .line 1683
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1684
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 50782
    iget v12, v3, Lo/removeSubscription;->getExtras:I

    move/from16 v23, v8

    const/16 v8, 0x8

    if-ne v12, v8, :cond_69

    const/4 v8, 0x0

    goto :goto_3a

    .line 50785
    :cond_69
    iget v8, v3, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_3a
    if-eq v7, v8, :cond_6d

    .line 1687
    invoke-virtual {v3, v7}, Lo/removeSubscription;->onNavigationEvent(I)V

    if-eqz v2, :cond_6b

    .line 50786
    iget-object v8, v3, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    if-nez v8, :cond_6a

    .line 50787
    new-instance v8, Lo/unregisterCallbackMessenger;

    invoke-direct {v8}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v8, v3, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 50789
    :cond_6a
    iget-object v8, v3, Lo/removeSubscription;->onNavigationEvent:Lo/unregisterCallbackMessenger;

    .line 1689
    invoke-virtual {v8, v7}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    :cond_6b
    if-eqz v5, :cond_6c

    .line 1691
    invoke-virtual {v3}, Lo/removeSubscription;->getInterfaceDescriptor()I

    move-result v7

    if-le v7, v14, :cond_6c

    .line 1692
    invoke-virtual {v3}, Lo/removeSubscription;->getInterfaceDescriptor()I

    move-result v7

    sget-object v8, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 1693
    invoke-virtual {v3, v8}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v8

    add-int/2addr v7, v8

    .line 1694
    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_6c
    const/4 v11, 0x1

    .line 50790
    :cond_6d
    iget v7, v3, Lo/removeSubscription;->getExtras:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6e

    const/4 v7, 0x0

    goto :goto_3b

    .line 50793
    :cond_6e
    iget v7, v3, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_3b
    if-eq v9, v7, :cond_72

    .line 1699
    invoke-virtual {v3, v9}, Lo/removeSubscription;->onPostMessage(I)V

    if-eqz v2, :cond_70

    .line 50794
    iget-object v7, v3, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    if-nez v7, :cond_6f

    .line 50795
    new-instance v7, Lo/unregisterCallbackMessenger;

    invoke-direct {v7}, Lo/unregisterCallbackMessenger;-><init>()V

    iput-object v7, v3, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 50797
    :cond_6f
    iget-object v7, v3, Lo/removeSubscription;->onTransact:Lo/unregisterCallbackMessenger;

    .line 1701
    invoke-virtual {v7, v9}, Lo/unregisterCallbackMessenger;->ICustomTabsCallback(I)V

    :cond_70
    if-eqz v6, :cond_71

    .line 1703
    invoke-virtual {v3}, Lo/removeSubscription;->mayLaunchUrl()I

    move-result v7

    if-le v7, v15, :cond_71

    .line 1704
    invoke-virtual {v3}, Lo/removeSubscription;->mayLaunchUrl()I

    move-result v7

    sget-object v8, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 1705
    invoke-virtual {v3, v8}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v8

    invoke-virtual {v8}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v8

    add-int/2addr v7, v8

    .line 1706
    invoke-static {v15, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v15, v7

    :cond_71
    const/4 v11, 0x1

    .line 1710
    :cond_72
    iget-boolean v1, v1, Lo/onChildrenLoaded$onPostMessage;->isConnected:Z

    if-eqz v1, :cond_73

    .line 1711
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_74

    .line 50798
    iget v8, v3, Lo/removeSubscription;->connect:I

    if-eq v1, v8, :cond_74

    .line 50799
    iput v1, v3, Lo/removeSubscription;->connect:I

    const/4 v11, 0x1

    goto :goto_3c

    :cond_73
    const/4 v7, -0x1

    .line 1718
    :cond_74
    :goto_3c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_78

    .line 1719
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v13, v1}, Lo/onChildrenLoaded;->combineMeasuredStates(II)I

    move-result v13

    goto :goto_3e

    :cond_75
    move/from16 v24, v7

    move/from16 v23, v8

    goto :goto_3d

    :cond_76
    move/from16 v24, v7

    move/from16 v23, v8

    move/from16 v22, v9

    goto :goto_3d

    :cond_77
    move/from16 v20, v1

    move/from16 v24, v7

    move/from16 v23, v8

    move/from16 v22, v9

    move/from16 v19, v12

    :goto_3d
    const/4 v7, -0x1

    :cond_78
    :goto_3e
    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v19

    move/from16 v1, v20

    move/from16 v9, v22

    move/from16 v8, v23

    move/from16 v7, v24

    const/4 v3, 0x0

    goto/16 :goto_32

    :cond_79
    move/from16 v20, v1

    move/from16 v24, v7

    move/from16 v23, v8

    move/from16 v22, v9

    move/from16 v19, v12

    if-eqz v11, :cond_7f

    .line 1723
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    move/from16 v9, v22

    invoke-virtual {v1, v9}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 1724
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    move/from16 v11, v19

    invoke-virtual {v1, v11}, Lo/removeSubscription;->onPostMessage(I)V

    if-eqz v2, :cond_7a

    .line 1726
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v1}, Lo/addSubscription;->IPostMessageService$Stub()V

    .line 50801
    :cond_7a
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v1}, Lo/getCallback;->ICustomTabsService$Stub$Proxy()V

    .line 1730
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50806
    iget v2, v1, Lo/removeSubscription;->getExtras:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7b

    const/4 v2, 0x0

    goto :goto_3f

    .line 50809
    :cond_7b
    iget v2, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_3f
    if-ge v2, v14, :cond_7c

    .line 1731
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v1, v14}, Lo/removeSubscription;->onNavigationEvent(I)V

    const/4 v2, 0x1

    goto :goto_40

    :cond_7c
    const/4 v2, 0x0

    .line 1734
    :goto_40
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50810
    iget v4, v1, Lo/removeSubscription;->getExtras:I

    if-ne v4, v3, :cond_7d

    const/4 v1, 0x0

    goto :goto_41

    .line 50813
    :cond_7d
    iget v1, v1, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_41
    if-ge v1, v15, :cond_7e

    .line 1735
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v1, v15}, Lo/removeSubscription;->onPostMessage(I)V

    const/4 v12, 0x1

    goto :goto_42

    :cond_7e
    move v12, v2

    :goto_42
    if-eqz v12, :cond_7f

    .line 50814
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v1}, Lo/getCallback;->ICustomTabsService$Stub$Proxy()V

    :cond_7f
    move/from16 v1, v20

    const/4 v2, 0x0

    :goto_43
    if-ge v2, v1, :cond_86

    .line 1743
    iget-object v3, v0, Lo/onChildrenLoaded;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/removeSubscription;

    .line 50819
    iget-object v4, v3, Lo/removeSubscription;->getRoot:Ljava/lang/Object;

    .line 1744
    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_85

    .line 1748
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 50820
    iget v6, v3, Lo/removeSubscription;->getExtras:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_80

    const/4 v6, 0x0

    goto :goto_44

    .line 50823
    :cond_80
    iget v6, v3, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_44
    if-ne v5, v6, :cond_82

    .line 1748
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 50824
    iget v6, v3, Lo/removeSubscription;->getExtras:I

    if-ne v6, v7, :cond_81

    const/4 v6, 0x0

    goto :goto_45

    .line 50827
    :cond_81
    iget v6, v3, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_45
    if-eq v5, v6, :cond_85

    .line 50828
    :cond_82
    iget v5, v3, Lo/removeSubscription;->getExtras:I

    if-eq v5, v7, :cond_85

    .line 50829
    iget v5, v3, Lo/removeSubscription;->getExtras:I

    if-ne v5, v7, :cond_83

    const/4 v5, 0x0

    goto :goto_46

    .line 50832
    :cond_83
    iget v5, v3, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_46
    const/high16 v6, 0x40000000    # 2.0f

    .line 1750
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 50833
    iget v8, v3, Lo/removeSubscription;->getExtras:I

    if-ne v8, v7, :cond_84

    const/4 v3, 0x0

    goto :goto_47

    .line 50836
    :cond_84
    iget v3, v3, Lo/removeSubscription;->INotificationSideChannel:I

    .line 1751
    :goto_47
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1752
    invoke-virtual {v4, v5, v3}, Landroid/view/View;->measure(II)V

    goto :goto_48

    :cond_85
    const/high16 v6, 0x40000000    # 2.0f

    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_86
    move v2, v13

    goto :goto_49

    :cond_87
    move/from16 v24, v7

    move/from16 v23, v8

    const/4 v2, 0x0

    .line 1762
    :goto_49
    iget-object v1, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50837
    iget v3, v1, Lo/removeSubscription;->getExtras:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_88

    const/4 v1, 0x0

    goto :goto_4a

    .line 50840
    :cond_88
    iget v1, v1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_4a
    add-int v1, v1, v24

    .line 1763
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50841
    iget v5, v3, Lo/removeSubscription;->getExtras:I

    if-ne v5, v4, :cond_89

    const/4 v11, 0x0

    goto :goto_4b

    .line 50844
    :cond_89
    iget v11, v3, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_4b
    add-int v11, v11, v23

    .line 1765
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_8c

    move/from16 v3, p1

    .line 1766
    invoke-static {v1, v3, v2}, Lo/onChildrenLoaded;->resolveSizeAndState(III)I

    move-result v1

    shl-int/lit8 v2, v2, 0x10

    move/from16 v3, p2

    .line 1767
    invoke-static {v11, v3, v2}, Lo/onChildrenLoaded;->resolveSizeAndState(III)I

    move-result v2

    const v3, 0xffffff

    and-int/2addr v1, v3

    and-int/2addr v2, v3

    .line 1771
    iget v3, v0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1772
    iget v3, v0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1773
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50845
    iget-boolean v3, v3, Lo/addSubscription;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:Z

    const/high16 v4, 0x1000000

    if-eqz v3, :cond_8a

    or-int/2addr v1, v4

    .line 1776
    :cond_8a
    iget-object v3, v0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50846
    iget-boolean v3, v3, Lo/addSubscription;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:Z

    if-eqz v3, :cond_8b

    or-int/2addr v2, v4

    .line 1779
    :cond_8b
    invoke-virtual {v0, v1, v2}, Lo/onChildrenLoaded;->setMeasuredDimension(II)V

    .line 1780
    iput v1, v0, Lo/onChildrenLoaded;->getInterfaceDescriptor:I

    .line 1781
    iput v2, v0, Lo/onChildrenLoaded;->ICustomTabsService:I

    return-void

    .line 1783
    :cond_8c
    invoke-virtual {v0, v1, v11}, Lo/onChildrenLoaded;->setMeasuredDimension(II)V

    .line 1784
    iput v1, v0, Lo/onChildrenLoaded;->getInterfaceDescriptor:I

    .line 1785
    iput v11, v0, Lo/onChildrenLoaded;->ICustomTabsService:I

    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 560
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 561
    check-cast p1, Ljava/lang/String;

    .line 562
    iget-object v0, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 657
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    :cond_0
    if-ne p1, p0, :cond_1

    .line 5155
    iget-object v0, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 5157
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    iget-object v0, v0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 660
    :goto_0
    instance-of v1, p1, Lo/applyOptions;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 661
    instance-of v0, v0, Lo/getMediaItem;

    if-nez v0, :cond_3

    .line 662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    .line 663
    new-instance v1, Lo/getMediaItem;

    invoke-direct {v1}, Lo/getMediaItem;-><init>()V

    iput-object v1, v0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 664
    iput-boolean v2, v0, Lo/onChildrenLoaded$onPostMessage;->getServiceComponent:Z

    .line 665
    iget-object v1, v0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    check-cast v1, Lo/getMediaItem;

    iget v0, v0, Lo/onChildrenLoaded$onPostMessage;->AudioAttributesImplBaseParcelizer:I

    invoke-virtual {v1, v0}, Lo/getMediaItem;->onRelationshipValidationResult(I)V

    .line 668
    :cond_3
    instance-of v0, p1, Lo/getCallbacks;

    if-eqz v0, :cond_4

    .line 669
    move-object v0, p1

    check-cast v0, Lo/getCallbacks;

    .line 670
    invoke-virtual {v0}, Lo/getCallbacks;->onMessageChannelReady()V

    .line 671
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded$onPostMessage;

    .line 672
    iput-boolean v2, v1, Lo/onChildrenLoaded$onPostMessage;->getExtras:Z

    .line 673
    iget-object v1, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 674
    iget-object v1, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_4
    iget-object v0, p0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 678
    iput-boolean v2, p0, Lo/onChildrenLoaded;->asInterface:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 686
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 687
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 689
    :cond_0
    iget-object v0, p0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    if-ne p1, p0, :cond_1

    .line 6155
    iget-object v0, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 6157
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    iget-object v0, v0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    .line 691
    :goto_0
    iget-object v1, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    invoke-virtual {v1, v0}, Lo/getCallback;->ICustomTabsCallback(Lo/removeSubscription;)V

    .line 692
    iget-object v1, p0, Lo/onChildrenLoaded;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 693
    iget-object p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 694
    iput-boolean p1, p0, Lo/onChildrenLoaded;->asInterface:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2

    .line 645
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 647
    invoke-virtual {p0, p1}, Lo/onChildrenLoaded;->onViewRemoved(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3172
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    .line 3173
    iput-boolean v0, p0, Lo/onChildrenLoaded;->asInterface:Z

    const/4 v0, -0x1

    .line 3175
    iput v0, p0, Lo/onChildrenLoaded;->getInterfaceDescriptor:I

    .line 3176
    iput v0, p0, Lo/onChildrenLoaded;->ICustomTabsService:I

    return-void
.end method

.method public setConstraintSet(Lo/MediaBrowserCompat$SubscriptionCallback;)V
    .locals 0

    .line 2004
    iput-object p1, p0, Lo/onChildrenLoaded;->newSession:Lo/MediaBrowserCompat$SubscriptionCallback;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 542
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 543
    iget-object p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 544
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    .line 546
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 547
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 549
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 551
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 552
    iget-object p3, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub$Proxy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 589
    iget-object v0, p0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 590
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 591
    iget-object p1, p0, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 762
    iget v0, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    if-ne p1, v0, :cond_0

    return-void

    .line 765
    :cond_0
    iput p1, p0, Lo/onChildrenLoaded;->ICustomTabsCallback$Stub:I

    .line 766
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 749
    iget v0, p0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    if-ne p1, v0, :cond_0

    return-void

    .line 752
    :cond_0
    iput p1, p0, Lo/onChildrenLoaded;->onRelationshipValidationResult:I

    .line 753
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 716
    iget v0, p0, Lo/onChildrenLoaded;->onTransact:I

    if-ne p1, v0, :cond_0

    return-void

    .line 719
    :cond_0
    iput p1, p0, Lo/onChildrenLoaded;->onTransact:I

    .line 720
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 703
    iget v0, p0, Lo/onChildrenLoaded;->onNavigationEvent:I

    if-ne p1, v0, :cond_0

    return-void

    .line 706
    :cond_0
    iput p1, p0, Lo/onChildrenLoaded;->onNavigationEvent:I

    .line 707
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1955
    iget-object v0, p0, Lo/onChildrenLoaded;->onPostMessage:Lo/addSubscription;

    .line 50858
    iput p1, v0, Lo/addSubscription;->onResult:I

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
