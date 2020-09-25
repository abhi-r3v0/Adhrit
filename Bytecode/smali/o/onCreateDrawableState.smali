.class public final Lo/onCreateDrawableState;
.super Lo/ThemeUtils;
.source ""

# interfaces
.implements Lo/setTitleTextAppearance$onPostMessage;


# static fields
.field private static final ICustomTabsService$Stub$Proxy:Landroidx/databinding/ViewDataBinding$onMessageChannelReady;

.field private static final cancel:Landroid/util/SparseIntArray;


# instance fields
.field private final INotificationSideChannel:Lo/onChildrenLoaded;

.field private INotificationSideChannel$Default:J

.field private final IPostMessageService$Stub$Proxy:Landroid/view/View$OnClickListener;

.field private final cancelAll:Landroid/widget/TextView;

.field private final notify:Lo/offsetPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;

    invoke-direct {v0}, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;-><init>()V

    .line 16
    sput-object v0, Lo/onCreateDrawableState;->ICustomTabsService$Stub$Proxy:Landroidx/databinding/ViewDataBinding$onMessageChannelReady;

    const-string v1, "layout_fetching_cards"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/16 v4, 0xe

    const/4 v5, 0x0

    aput v4, v3, v5

    new-array v4, v2, [I

    const v6, 0x7f0e020d

    aput v6, v4, v5

    .line 15643
    iget-object v6, v0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->ICustomTabsCallback:[[Ljava/lang/String;

    aput-object v1, v6, v5

    .line 15644
    iget-object v1, v0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->onNavigationEvent:[[I

    aput-object v3, v1, v5

    .line 15645
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->onPostMessage:[[I

    aput-object v4, v0, v5

    .line 20
    sget-object v0, Lo/onCreateDrawableState;->ICustomTabsService$Stub$Proxy:Landroidx/databinding/ViewDataBinding$onMessageChannelReady;

    const-string v1, "layout_cred_protect_multi_card_view"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [I

    const/16 v4, 0xd

    aput v4, v3, v5

    new-array v2, v2, [I

    const v4, 0x7f0e0200

    aput v4, v2, v5

    .line 16643
    iget-object v4, v0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->ICustomTabsCallback:[[Ljava/lang/String;

    const/4 v5, 0x4

    aput-object v1, v4, v5

    .line 16644
    iget-object v1, v0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->onNavigationEvent:[[I

    aput-object v3, v1, v5

    .line 16645
    iget-object v0, v0, Landroidx/databinding/ViewDataBinding$onMessageChannelReady;->onPostMessage:[[I

    aput-object v2, v0, v5

    .line 24
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 25
    sput-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b00aa

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0111

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b010f

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b010d

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b022a

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b08b8

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b08ed

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b019d

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0224

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0545

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b066a

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0119

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0118

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b0273

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b06bd

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b06bc

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b02b7

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b050a

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b047b

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b047c

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const v1, 0x7f0b01ff

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Lo/rateWithExtras;Landroid/view/View;)V
    .locals 3

    .line 62
    sget-object v0, Lo/onCreateDrawableState;->ICustomTabsService$Stub$Proxy:Landroidx/databinding/ViewDataBinding$onMessageChannelReady;

    sget-object v1, Lo/onCreateDrawableState;->cancel:Landroid/util/SparseIntArray;

    const/16 v2, 0x24

    invoke-static {p1, p2, v2, v0, v1}, Lo/onCreateDrawableState;->ICustomTabsCallback(Lo/rateWithExtras;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$onMessageChannelReady;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo/onCreateDrawableState;-><init>(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0xf

    .line 65
    aget-object v3, p3, v3

    check-cast v3, Landroid/widget/FrameLayout;

    const/16 v4, 0x1b

    aget-object v4, p3, v4

    check-cast v4, Lo/onChildrenLoaded;

    const/16 v5, 0x12

    aget-object v5, p3, v5

    check-cast v5, Lo/createFullSpanItemFromEnd;

    const/16 v6, 0x10

    aget-object v6, p3, v6

    check-cast v6, Lo/onChildrenLoaded;

    const/4 v7, 0x4

    aget-object v7, p3, v7

    check-cast v7, Landroid/widget/FrameLayout;

    const/16 v8, 0x17

    aget-object v8, p3, v8

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v9, 0x13

    aget-object v9, p3, v9

    check-cast v9, Lo/onChildrenLoaded;

    const/16 v10, 0x1c

    aget-object v10, p3, v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v11, 0x7

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/TextView;

    const/16 v13, 0xe

    aget-object v13, p3, v13

    check-cast v13, Lo/TintTypedArray;

    const/16 v14, 0x20

    aget-object v14, p3, v14

    check-cast v14, Lo/onDestroyView;

    const/16 v16, 0xc

    aget-object v16, p3, v16

    check-cast v16, Landroidx/cardview/widget/CardView;

    move-object/from16 v15, v16

    const/16 v16, 0x18

    aget-object v16, p3, v16

    check-cast v16, Lo/onChildrenLoaded;

    const/16 v17, 0xd

    aget-object v17, p3, v17

    check-cast v17, Lo/getTheme;

    const/16 v18, 0x5

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/ImageView;

    const/16 v19, 0x3

    aget-object v19, p3, v19

    check-cast v19, Lo/getNextSpan;

    const/16 v20, 0xa

    aget-object v20, p3, v20

    check-cast v20, Landroidx/cardview/widget/CardView;

    const/16 v21, 0x1e

    aget-object v21, p3, v21

    check-cast v21, Lo/setSpeed;

    const/16 v22, 0x9

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/TextView;

    const/16 v23, 0x6

    aget-object v23, p3, v23

    check-cast v23, Landroid/widget/TextView;

    const/16 v24, 0x2

    aget-object v24, p3, v24

    check-cast v24, Lo/getNextSpan;

    invoke-direct/range {v0 .. v24}, Lo/ThemeUtils;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/widget/FrameLayout;Lo/onChildrenLoaded;Lo/createFullSpanItemFromEnd;Lo/onChildrenLoaded;Landroid/widget/FrameLayout;Lcom/airbnb/lottie/LottieAnimationView;Lo/onChildrenLoaded;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lo/TintTypedArray;Lo/onDestroyView;Landroidx/cardview/widget/CardView;Lo/onChildrenLoaded;Lo/getTheme;Landroid/widget/ImageView;Lo/getNextSpan;Landroidx/cardview/widget/CardView;Lo/setSpeed;Landroid/widget/TextView;Landroid/widget/TextView;Lo/getNextSpan;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 605
    iput-wide v0, v2, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 100
    iget-object v0, v2, Lo/ThemeUtils;->ICustomTabsCallback$Stub:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 101
    iget-object v0, v2, Lo/ThemeUtils;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    iget-object v0, v2, Lo/ThemeUtils;->ICustomTabsService:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    iget-object v0, v2, Lo/ThemeUtils;->warmup:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 104
    aget-object v0, p3, v0

    check-cast v0, Lo/onChildrenLoaded;

    iput-object v0, v2, Lo/onCreateDrawableState;->INotificationSideChannel:Lo/onChildrenLoaded;

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 106
    aget-object v0, p3, v0

    check-cast v0, Lo/offsetPosition;

    iput-object v0, v2, Lo/onCreateDrawableState;->notify:Lo/offsetPosition;

    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 v0, 0xb

    .line 108
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lo/onCreateDrawableState;->cancelAll:Landroid/widget/TextView;

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v0, v2, Lo/ThemeUtils;->extraCommand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 111
    iget-object v0, v2, Lo/ThemeUtils;->mayLaunchUrl:Lo/getNextSpan;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 112
    iget-object v0, v2, Lo/ThemeUtils;->updateVisuals:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v0, v2, Lo/ThemeUtils;->ICustomTabsService$Stub:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v0, v2, Lo/ThemeUtils;->validateRelationship:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v0, v2, Lo/ThemeUtils;->IPostMessageService$Stub:Lo/getNextSpan;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2324
    sget v0, Lo/getSessionToken2Bundle$onMessageChannelReady;->dataBinding:I

    move-object/from16 v1, p2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    new-instance v0, Lo/setTitleTextAppearance;

    invoke-direct {v0, v2}, Lo/setTitleTextAppearance;-><init>(Lo/setTitleTextAppearance$onPostMessage;)V

    iput-object v0, v2, Lo/onCreateDrawableState;->IPostMessageService$Stub$Proxy:Landroid/view/View$OnClickListener;

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroidx/databinding/ViewDataBinding;->onNavigationEvent()V

    return-void
.end method

.method private ICustomTabsCallback(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 248
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private ICustomTabsCallback$Stub(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 275
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private ICustomTabsService(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x1000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 320
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private asBinder(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 266
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private asInterface(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 284
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private extraCallback(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 219
    monitor-enter p0

    .line 220
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 221
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getInterfaceDescriptor(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 311
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onMessageChannelReady(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 239
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onNavigationEvent(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 230
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onPostMessage(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onRelationshipValidationResult(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 257
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onTransact(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 291
    monitor-enter p0

    .line 292
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 293
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private warmup(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 302
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 4

    .line 152
    check-cast p1, Lo/setStateAfterAnimating;

    .line 3161
    iput-object p1, p0, Lo/ThemeUtils;->IPostMessageService:Lo/setStateAfterAnimating;

    .line 3162
    monitor-enter p0

    .line 3163
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 3164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3165
    invoke-virtual {p0}, Lo/rewind;->ICustomTabsCallback()V

    .line 3166
    invoke-super {p0}, Lo/ThemeUtils;->asBinder()V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 3164
    monitor-exit p0

    throw p1
.end method

.method public final newSession()V
    .locals 2

    .line 593
    iget-object v0, p0, Lo/ThemeUtils;->IPostMessageService:Lo/setStateAfterAnimating;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 15255
    iget-object v0, v0, Lo/setStateAfterAnimating;->ICustomTabsService$Stub$Proxy:Lo/setActive;

    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 42

    move-object/from16 v1, p0

    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    iget-wide v2, v1, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v4, 0x0

    .line 331
    iput-wide v4, v1, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 332
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    iget-object v0, v1, Lo/ThemeUtils;->IPostMessageService:Lo/setStateAfterAnimating;

    const-wide/16 v6, 0x7aff

    and-long/2addr v6, v2

    const-wide/16 v10, 0x6200

    const-wide/16 v14, 0x6020

    const-wide/16 v16, 0x6010

    const-wide/16 v18, 0x6040

    const-wide/16 v20, 0x6008

    const-wide/16 v22, 0x6080

    const-wide/16 v24, 0x6002

    const-wide/16 v26, 0x6004

    const-wide/16 v28, 0x6001

    const/4 v8, 0x0

    cmp-long v32, v6, v4

    if-eqz v32, :cond_16

    and-long v6, v2, v28

    cmp-long v32, v6, v4

    if-eqz v32, :cond_1

    if-eqz v0, :cond_0

    .line 4063
    iget-object v6, v0, Lo/setStateAfterAnimating;->extraCommand:Lo/IMediaSession$Stub;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 366
    :goto_0
    invoke-virtual {v1, v8, v6}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v6, :cond_1

    .line 4078
    iget v6, v6, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v32, v2, v24

    cmp-long v7, v32, v4

    if-eqz v7, :cond_3

    if-eqz v0, :cond_2

    .line 5062
    iget-object v7, v0, Lo/setStateAfterAnimating;->requestPostMessageChannel:Lo/IMediaSession$Stub;

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x1

    .line 380
    invoke-virtual {v1, v8, v7}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v7, :cond_3

    .line 5078
    iget v7, v7, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-long v33, v2, v26

    cmp-long v8, v33, v4

    if-eqz v8, :cond_5

    if-eqz v0, :cond_4

    .line 6047
    iget-object v8, v0, Lo/setStateAfterAnimating;->asInterface:Lo/getMediaController;

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x2

    .line 394
    invoke-virtual {v1, v9, v8}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v8, :cond_5

    .line 6081
    iget-object v8, v8, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 399
    check-cast v8, Ljava/lang/String;

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    and-long v34, v2, v20

    cmp-long v9, v34, v4

    if-eqz v9, :cond_7

    if-eqz v0, :cond_6

    .line 7066
    iget-object v9, v0, Lo/setStateAfterAnimating;->mayLaunchUrl:Lo/getMediaController;

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    const/4 v12, 0x3

    .line 408
    invoke-virtual {v1, v12, v9}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v9, :cond_7

    .line 7081
    iget-object v9, v9, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 413
    check-cast v9, Landroid/graphics/drawable/Drawable;

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    and-long v12, v2, v16

    cmp-long v36, v12, v4

    if-eqz v36, :cond_9

    if-eqz v0, :cond_8

    .line 8046
    iget-object v12, v0, Lo/setStateAfterAnimating;->asBinder:Lo/getMediaController;

    goto :goto_8

    :cond_8
    const/4 v12, 0x0

    :goto_8
    const/4 v13, 0x4

    .line 422
    invoke-virtual {v1, v13, v12}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v12, :cond_9

    .line 8081
    iget-object v12, v12, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 427
    check-cast v12, Ljava/lang/String;

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_9
    and-long v36, v2, v14

    cmp-long v13, v36, v4

    if-eqz v13, :cond_b

    if-eqz v0, :cond_a

    .line 9043
    iget-object v13, v0, Lo/setStateAfterAnimating;->onNavigationEvent:Lo/IMediaSession$Stub$Proxy;

    goto :goto_a

    :cond_a
    const/4 v13, 0x0

    :goto_a
    const/4 v14, 0x5

    .line 436
    invoke-virtual {v1, v14, v13}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v13, :cond_b

    .line 9077
    iget-boolean v13, v13, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    goto :goto_b

    :cond_b
    const/4 v13, 0x0

    :goto_b
    and-long v14, v2, v18

    cmp-long v38, v14, v4

    if-eqz v38, :cond_d

    if-eqz v0, :cond_c

    .line 10042
    iget-object v14, v0, Lo/setStateAfterAnimating;->extraCallback:Lo/IMediaSession$Stub$Proxy;

    goto :goto_c

    :cond_c
    const/4 v14, 0x0

    :goto_c
    const/4 v15, 0x6

    .line 450
    invoke-virtual {v1, v15, v14}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v14, :cond_d

    .line 10077
    iget-boolean v14, v14, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    goto :goto_d

    :cond_d
    const/4 v14, 0x0

    :goto_d
    and-long v38, v2, v22

    cmp-long v15, v38, v4

    if-eqz v15, :cond_f

    if-eqz v0, :cond_e

    .line 11044
    iget-object v15, v0, Lo/setStateAfterAnimating;->ICustomTabsCallback:Lo/IMediaSession$Stub$Proxy;

    goto :goto_e

    :cond_e
    const/4 v15, 0x0

    :goto_e
    const/4 v4, 0x7

    .line 464
    invoke-virtual {v1, v4, v15}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v15, :cond_f

    .line 11077
    iget-boolean v4, v15, Lo/IMediaSession$Stub$Proxy;->extraCallback:Z

    move/from16 v32, v4

    goto :goto_f

    :cond_f
    const/16 v32, 0x0

    :goto_f
    and-long v4, v2, v10

    const-wide/16 v38, 0x0

    cmp-long v15, v4, v38

    if-eqz v15, :cond_11

    if-eqz v0, :cond_10

    .line 12053
    iget-object v4, v0, Lo/setStateAfterAnimating;->onTransact:Lo/getMediaController;

    goto :goto_10

    :cond_10
    const/4 v4, 0x0

    :goto_10
    const/16 v5, 0x9

    .line 478
    invoke-virtual {v1, v5, v4}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v4, :cond_11

    .line 12081
    iget-object v4, v4, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 483
    check-cast v4, Ljava/lang/String;

    goto :goto_11

    :cond_11
    const/4 v4, 0x0

    :goto_11
    const-wide/16 v34, 0x6800

    and-long v40, v2, v34

    const-wide/16 v38, 0x0

    cmp-long v5, v40, v38

    if-eqz v5, :cond_13

    if-eqz v0, :cond_12

    .line 12092
    iget-object v5, v0, Lo/setStateAfterAnimating;->getDefaultImpl:Lo/getMediaController;

    goto :goto_12

    :cond_12
    const/4 v5, 0x0

    :goto_12
    const/16 v15, 0xb

    .line 492
    invoke-virtual {v1, v15, v5}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v5, :cond_13

    .line 13081
    iget-object v5, v5, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 497
    check-cast v5, Landroid/graphics/drawable/Drawable;

    goto :goto_13

    :cond_13
    const/4 v5, 0x0

    :goto_13
    const-wide/16 v30, 0x7000

    and-long v40, v2, v30

    const-wide/16 v38, 0x0

    cmp-long v15, v40, v38

    if-eqz v15, :cond_15

    if-eqz v0, :cond_14

    .line 14051
    iget-object v15, v0, Lo/setStateAfterAnimating;->onRelationshipValidationResult:Lo/getMediaController;

    goto :goto_14

    :cond_14
    const/4 v15, 0x0

    :goto_14
    const/16 v10, 0xc

    .line 506
    invoke-virtual {v1, v10, v15}, Lo/onCreateDrawableState;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v15, :cond_15

    .line 14081
    iget-object v10, v15, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 511
    check-cast v10, Landroid/text/SpannableStringBuilder;

    move-object v11, v9

    goto :goto_15

    :cond_15
    move-object v11, v9

    const/4 v10, 0x0

    :goto_15
    move-object v9, v8

    move v8, v6

    move-object v6, v4

    move/from16 v4, v32

    goto :goto_16

    :cond_16
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_16
    and-long v28, v2, v28

    const-wide/16 v32, 0x0

    cmp-long v15, v28, v32

    if-eqz v15, :cond_17

    .line 519
    iget-object v15, v1, Lo/ThemeUtils;->onRelationshipValidationResult:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_17
    and-long v26, v2, v26

    cmp-long v8, v26, v32

    if-eqz v8, :cond_18

    .line 524
    iget-object v8, v1, Lo/ThemeUtils;->ICustomTabsService:Landroid/widget/TextView;

    invoke-static {v8, v9}, Lo/getTransportControls;->extraCallback(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_18
    and-long v8, v2, v22

    cmp-long v15, v8, v32

    if-eqz v15, :cond_19

    .line 529
    iget-object v8, v1, Lo/ThemeUtils;->ICustomTabsService:Landroid/widget/TextView;

    invoke-static {v8, v4}, Lo/extraCallback;->extraCallback(Landroid/view/View;Z)V

    .line 530
    iget-object v8, v1, Lo/ThemeUtils;->ICustomTabsService$Stub:Landroid/widget/TextView;

    invoke-static {v8, v4}, Lo/extraCallback;->extraCallback(Landroid/view/View;Z)V

    :cond_19
    const-wide/16 v8, 0x6000

    and-long/2addr v8, v2

    cmp-long v4, v8, v32

    if-eqz v4, :cond_1a

    .line 535
    iget-object v4, v1, Lo/ThemeUtils;->ICustomTabsCallback$Stub$Proxy:Lo/TintTypedArray;

    invoke-virtual {v4, v0}, Lo/TintTypedArray;->extraCallback(Lo/setStateAfterAnimating;)V

    .line 536
    iget-object v4, v1, Lo/ThemeUtils;->requestPostMessageChannel:Lo/getTheme;

    invoke-virtual {v4, v0}, Lo/getTheme;->extraCallback(Lo/setStateAfterAnimating;)V

    :cond_1a
    and-long v8, v2, v18

    cmp-long v0, v8, v32

    if-eqz v0, :cond_1b

    .line 541
    iget-object v0, v1, Lo/ThemeUtils;->warmup:Landroidx/cardview/widget/CardView;

    invoke-static {v0, v14}, Lo/extraCallback;->extraCallback(Landroid/view/View;Z)V

    :cond_1b
    const-wide/16 v8, 0x4000

    and-long/2addr v8, v2

    cmp-long v0, v8, v32

    if-eqz v0, :cond_1c

    .line 546
    iget-object v0, v1, Lo/onCreateDrawableState;->notify:Lo/offsetPosition;

    iget-object v4, v1, Lo/onCreateDrawableState;->IPostMessageService$Stub$Proxy:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1c
    and-long v8, v2, v16

    cmp-long v0, v8, v32

    if-eqz v0, :cond_1d

    .line 551
    iget-object v0, v1, Lo/onCreateDrawableState;->cancelAll:Landroid/widget/TextView;

    invoke-static {v0, v12}, Lo/getTransportControls;->extraCallback(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1d
    const-wide/16 v8, 0x6020

    and-long/2addr v8, v2

    cmp-long v0, v8, v32

    if-eqz v0, :cond_1e

    .line 556
    iget-object v0, v1, Lo/ThemeUtils;->extraCommand:Landroid/widget/ImageView;

    invoke-static {v0, v13}, Lo/extraCallback;->extraCallback(Landroid/view/View;Z)V

    :cond_1e
    const-wide/16 v8, 0x6800

    and-long/2addr v8, v2

    const/16 v0, 0x10

    cmp-long v4, v8, v32

    if-eqz v4, :cond_20

    .line 561
    iget-object v4, v1, Lo/ThemeUtils;->mayLaunchUrl:Lo/getNextSpan;

    .line 14211
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v0, :cond_1f

    .line 14212
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    .line 14214
    :cond_1f
    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_20
    :goto_17
    and-long v4, v2, v24

    cmp-long v8, v4, v32

    if-eqz v8, :cond_21

    .line 566
    iget-object v4, v1, Lo/ThemeUtils;->updateVisuals:Landroidx/cardview/widget/CardView;

    invoke-virtual {v4, v7}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_21
    const-wide/16 v4, 0x7000

    and-long/2addr v4, v2

    cmp-long v7, v4, v32

    if-eqz v7, :cond_22

    .line 571
    iget-object v4, v1, Lo/ThemeUtils;->ICustomTabsService$Stub:Landroid/widget/TextView;

    invoke-static {v4, v10}, Lo/getTransportControls;->extraCallback(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_22
    const-wide/16 v4, 0x6200

    and-long/2addr v4, v2

    cmp-long v7, v4, v32

    if-eqz v7, :cond_23

    .line 576
    iget-object v4, v1, Lo/ThemeUtils;->validateRelationship:Landroid/widget/TextView;

    invoke-static {v4, v6}, Lo/getTransportControls;->extraCallback(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_23
    and-long v2, v2, v20

    cmp-long v4, v2, v32

    if-eqz v4, :cond_25

    .line 581
    iget-object v2, v1, Lo/ThemeUtils;->IPostMessageService$Stub:Lo/getNextSpan;

    .line 15211
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v0, :cond_24

    .line 15212
    invoke-virtual {v2, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_18

    .line 15214
    :cond_24
    invoke-virtual {v2, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 583
    :cond_25
    :goto_18
    iget-object v0, v1, Lo/ThemeUtils;->requestPostMessageChannel:Lo/getTheme;

    invoke-static {v0}, Lo/onCreateDrawableState;->onMessageChannelReady(Landroidx/databinding/ViewDataBinding;)V

    .line 584
    iget-object v0, v1, Lo/ThemeUtils;->ICustomTabsCallback$Stub$Proxy:Lo/TintTypedArray;

    invoke-static {v0}, Lo/onCreateDrawableState;->onMessageChannelReady(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 332
    monitor-exit p0

    throw v0
.end method

.method public final onMessageChannelReady(II)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 204
    :pswitch_0
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->ICustomTabsService(I)Z

    move-result p1

    return p1

    .line 202
    :pswitch_1
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->getInterfaceDescriptor(I)Z

    move-result p1

    return p1

    .line 200
    :pswitch_2
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->warmup(I)Z

    move-result p1

    return p1

    .line 198
    :pswitch_3
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->onTransact(I)Z

    move-result p1

    return p1

    .line 196
    :pswitch_4
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->asInterface(I)Z

    move-result p1

    return p1

    .line 194
    :pswitch_5
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->ICustomTabsCallback$Stub(I)Z

    move-result p1

    return p1

    .line 192
    :pswitch_6
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->asBinder(I)Z

    move-result p1

    return p1

    .line 190
    :pswitch_7
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->onRelationshipValidationResult(I)Z

    move-result p1

    return p1

    .line 188
    :pswitch_8
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->ICustomTabsCallback(I)Z

    move-result p1

    return p1

    .line 186
    :pswitch_9
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->onMessageChannelReady(I)Z

    move-result p1

    return p1

    .line 184
    :pswitch_a
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->onNavigationEvent(I)Z

    move-result p1

    return p1

    .line 182
    :pswitch_b
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->extraCallback(I)Z

    move-result p1

    return p1

    .line 180
    :pswitch_c
    invoke-direct {p0, p2}, Lo/onCreateDrawableState;->onPostMessage(I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final onNavigationEvent()V
    .locals 2

    .line 124
    monitor-enter p0

    const-wide/16 v0, 0x4000

    .line 125
    :try_start_0
    iput-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v0, p0, Lo/ThemeUtils;->requestPostMessageChannel:Lo/getTheme;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->onNavigationEvent()V

    .line 128
    iget-object v0, p0, Lo/ThemeUtils;->ICustomTabsCallback$Stub$Proxy:Lo/TintTypedArray;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->onNavigationEvent()V

    .line 129
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->asBinder()V

    return-void

    :catchall_0
    move-exception v0

    .line 126
    monitor-exit p0

    throw v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 6

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide v0, p0, Lo/onCreateDrawableState;->INotificationSideChannel$Default:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v4

    .line 138
    :cond_0
    monitor-exit p0

    .line 139
    iget-object v0, p0, Lo/ThemeUtils;->requestPostMessageChannel:Lo/getTheme;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 142
    :cond_1
    iget-object v0, p0, Lo/ThemeUtils;->ICustomTabsCallback$Stub$Proxy:Lo/TintTypedArray;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 138
    monitor-exit p0

    throw v0
.end method
