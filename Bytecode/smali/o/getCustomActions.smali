.class public final Lo/getCustomActions;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCustomActions$ICustomTabsCallback;,
        Lo/getCustomActions$asBinder;,
        Lo/getCustomActions$extraCallback;,
        Lo/getCustomActions$onMessageChannelReady;,
        Lo/getCustomActions$ICustomTabsCallback$Stub;,
        Lo/getCustomActions$onNavigationEvent;,
        Lo/getCustomActions$getInterfaceDescriptor;,
        Lo/getCustomActions$onTransact;,
        Lo/getCustomActions$onPostMessage;,
        Lo/getCustomActions$onRelationshipValidationResult;,
        Lo/getCustomActions$asInterface;
    }
.end annotation


# static fields
.field private static ICustomTabsService:Z = true


# instance fields
.field ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

.field ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

.field private ICustomTabsCallback$Stub$Proxy:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field public asBinder:Lo/getPosition;

.field asInterface:Z

.field public extraCallback:I

.field private extraCommand:Lo/getBufferedPosition;

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:Landroidx/recyclerview/widget/PagerSnapHelper;

.field private final newSession:Landroid/graphics/Rect;

.field public onMessageChannelReady:Lo/getBufferedPosition;

.field onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

.field onPostMessage:Z

.field onRelationshipValidationResult:Lo/MediaBrowserCompat$ItemCallback$4;

.field onTransact:I

.field private postMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private requestPostMessageChannel:Lo/getState;

.field private updateVisuals:Landroid/os/Parcelable;

.field private validateRelationship:Z

.field private final warmup:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/getCustomActions;->newSession:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/getCustomActions;->warmup:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Lo/getBufferedPosition;

    invoke-direct {v0}, Lo/getBufferedPosition;-><init>()V

    iput-object v0, p0, Lo/getCustomActions;->onMessageChannelReady:Lo/getBufferedPosition;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lo/getCustomActions;->onPostMessage:Z

    .line 132
    new-instance v1, Lo/getCustomActions$4;

    invoke-direct {v1, p0}, Lo/getCustomActions$4;-><init>(Lo/getCustomActions;)V

    iput-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub$Proxy:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Lo/getCustomActions;->postMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 151
    iput-boolean v0, p0, Lo/getCustomActions;->validateRelationship:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lo/getCustomActions;->asInterface:Z

    .line 153
    iput v1, p0, Lo/getCustomActions;->onTransact:I

    .line 158
    invoke-direct {p0, p1, v2}, Lo/getCustomActions;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/getCustomActions;->newSession:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/getCustomActions;->warmup:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Lo/getBufferedPosition;

    invoke-direct {v0}, Lo/getBufferedPosition;-><init>()V

    iput-object v0, p0, Lo/getCustomActions;->onMessageChannelReady:Lo/getBufferedPosition;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lo/getCustomActions;->onPostMessage:Z

    .line 132
    new-instance v1, Lo/getCustomActions$4;

    invoke-direct {v1, p0}, Lo/getCustomActions$4;-><init>(Lo/getCustomActions;)V

    iput-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub$Proxy:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Lo/getCustomActions;->postMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 151
    iput-boolean v0, p0, Lo/getCustomActions;->validateRelationship:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lo/getCustomActions;->asInterface:Z

    .line 153
    iput v1, p0, Lo/getCustomActions;->onTransact:I

    .line 163
    invoke-direct {p0, p1, p2}, Lo/getCustomActions;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lo/getCustomActions;->newSession:Landroid/graphics/Rect;

    .line 125
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lo/getCustomActions;->warmup:Landroid/graphics/Rect;

    .line 127
    new-instance p3, Lo/getBufferedPosition;

    invoke-direct {p3}, Lo/getBufferedPosition;-><init>()V

    iput-object p3, p0, Lo/getCustomActions;->onMessageChannelReady:Lo/getBufferedPosition;

    const/4 p3, 0x0

    .line 131
    iput-boolean p3, p0, Lo/getCustomActions;->onPostMessage:Z

    .line 132
    new-instance v0, Lo/getCustomActions$4;

    invoke-direct {v0, p0}, Lo/getCustomActions$4;-><init>(Lo/getCustomActions;)V

    iput-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub$Proxy:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Lo/getCustomActions;->postMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 151
    iput-boolean p3, p0, Lo/getCustomActions;->validateRelationship:Z

    const/4 p3, 0x1

    .line 152
    iput-boolean p3, p0, Lo/getCustomActions;->asInterface:Z

    .line 153
    iput v0, p0, Lo/getCustomActions;->onTransact:I

    .line 168
    invoke-direct {p0, p1, p2}, Lo/getCustomActions;->onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 4

    .line 340
    iget v0, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 5482
    :cond_0
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Lo/getCustomActions;->updateVisuals:Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 349
    instance-of v3, v0, Lo/getLastPositionUpdateTime;

    if-eqz v3, :cond_2

    .line 350
    move-object v3, v0

    check-cast v3, Lo/getLastPositionUpdateTime;

    invoke-interface {v3, v2}, Lo/getLastPositionUpdateTime;->onMessageChannelReady(Landroid/os/Parcelable;)V

    :cond_2
    const/4 v2, 0x0

    .line 352
    iput-object v2, p0, Lo/getCustomActions;->updateVisuals:Landroid/os/Parcelable;

    :cond_3
    const/4 v2, 0x0

    .line 355
    iget v3, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lo/getCustomActions;->extraCallback:I

    .line 356
    iput v1, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    .line 357
    iget-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 358
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCustomActions$onMessageChannelReady;->onNavigationEvent()V

    return-void
.end method

.method private onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 292
    sget-object v0, Lo/ParcelableVolumeInfo$1$ICustomTabsCallback;->ViewPager2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 294
    sget-object v3, Lo/ParcelableVolumeInfo$1$ICustomTabsCallback;->ViewPager2:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Lo/getCustomActions;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 297
    :cond_0
    :try_start_0
    sget p1, Lo/ParcelableVolumeInfo$1$ICustomTabsCallback;->ViewPager2_android_orientation:I

    const/4 p2, 0x0

    .line 298
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 297
    invoke-virtual {p0, p1}, Lo/getCustomActions;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    throw p1
.end method

.method private onNavigationEvent(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 179
    sget-boolean v0, Lo/getCustomActions;->ICustomTabsService:Z

    if-eqz v0, :cond_0

    new-instance v0, Lo/getCustomActions$asBinder;

    invoke-direct {v0, p0}, Lo/getCustomActions$asBinder;-><init>(Lo/getCustomActions;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lo/getCustomActions$extraCallback;

    invoke-direct {v0, p0}, Lo/getCustomActions$extraCallback;-><init>(Lo/getCustomActions;)V

    :goto_0
    iput-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    .line 183
    new-instance v0, Lo/getCustomActions$onRelationshipValidationResult;

    invoke-direct {v0, p0, p1}, Lo/getCustomActions$onRelationshipValidationResult;-><init>(Lo/getCustomActions;Landroid/content/Context;)V

    iput-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    invoke-static {}, Lo/unregisterCallbackListener;->extraCallback()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 185
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 187
    new-instance v0, Lo/getCustomActions$onPostMessage;

    invoke-direct {v0, p0, p1}, Lo/getCustomActions$onPostMessage;-><init>(Lo/getCustomActions;Landroid/content/Context;)V

    iput-object v0, p0, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 188
    iget-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 189
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 190
    invoke-direct {p0, p1, p2}, Lo/getCustomActions;->onMessageChannelReady(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 1263
    new-instance p2, Lo/getCustomActions$2;

    invoke-direct {p2, p0}, Lo/getCustomActions$2;-><init>(Lo/getCustomActions;)V

    .line 194
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 198
    new-instance p1, Lo/getPosition;

    invoke-direct {p1, p0}, Lo/getPosition;-><init>(Lo/getCustomActions;)V

    iput-object p1, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    .line 200
    new-instance p1, Lo/MediaBrowserCompat$ItemCallback$4;

    iget-object p2, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, p0, p2, v0}, Lo/MediaBrowserCompat$ItemCallback$4;-><init>(Lo/getCustomActions;Lo/getPosition;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lo/getCustomActions;->onRelationshipValidationResult:Lo/MediaBrowserCompat$ItemCallback$4;

    .line 201
    new-instance p1, Lo/getCustomActions$onTransact;

    invoke-direct {p1, p0}, Lo/getCustomActions$onTransact;-><init>(Lo/getCustomActions;)V

    iput-object p1, p0, Lo/getCustomActions;->mayLaunchUrl:Landroidx/recyclerview/widget/PagerSnapHelper;

    .line 202
    iget-object p2, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 205
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 207
    new-instance p1, Lo/getBufferedPosition;

    invoke-direct {p1}, Lo/getBufferedPosition;-><init>()V

    iput-object p1, p0, Lo/getCustomActions;->extraCommand:Lo/getBufferedPosition;

    .line 208
    iget-object p2, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    .line 1356
    iput-object p1, p2, Lo/getPosition;->onMessageChannelReady:Lo/getCustomActions$onNavigationEvent;

    .line 212
    new-instance p1, Lo/getCustomActions$3;

    invoke-direct {p1, p0}, Lo/getCustomActions$3;-><init>(Lo/getCustomActions;)V

    .line 230
    new-instance p2, Lo/getCustomActions$1;

    invoke-direct {p2, p0}, Lo/getCustomActions$1;-><init>(Lo/getCustomActions;)V

    .line 242
    iget-object v0, p0, Lo/getCustomActions;->extraCommand:Lo/getBufferedPosition;

    .line 2042
    iget-object v0, v0, Lo/getBufferedPosition;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object p1, p0, Lo/getCustomActions;->extraCommand:Lo/getBufferedPosition;

    .line 3042
    iget-object p1, p1, Lo/getBufferedPosition;->onPostMessage:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    iget-object p2, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Lo/getCustomActions$onMessageChannelReady;->onPostMessage(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 247
    iget-object p1, p0, Lo/getCustomActions;->extraCommand:Lo/getBufferedPosition;

    iget-object p2, p0, Lo/getCustomActions;->onMessageChannelReady:Lo/getBufferedPosition;

    .line 4042
    iget-object p1, p1, Lo/getBufferedPosition;->onPostMessage:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance p1, Lo/getState;

    iget-object p2, p0, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p2}, Lo/getState;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Lo/getCustomActions;->requestPostMessageChannel:Lo/getState;

    .line 252
    iget-object p2, p0, Lo/getCustomActions;->extraCommand:Lo/getBufferedPosition;

    .line 5042
    iget-object p2, p2, Lo/getBufferedPosition;->onPostMessage:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lo/getCustomActions;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final canScrollHorizontally(I)Z
    .locals 1

    .line 855
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public final canScrollVertically(I)Z
    .locals 1

    .line 860
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 365
    instance-of v1, v0, Lo/getCustomActions$asInterface;

    if-eqz v1, :cond_0

    .line 366
    check-cast v0, Lo/getCustomActions$asInterface;

    iget v0, v0, Lo/getCustomActions$asInterface;->extraCallback:I

    .line 367
    iget-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 368
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 372
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 375
    invoke-direct {p0}, Lo/getCustomActions;->ICustomTabsCallback()V

    return-void
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 285
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCustomActions$onMessageChannelReady;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCustomActions$onMessageChannelReady;->onPostMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 950
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/getCustomActions$onMessageChannelReady;->ICustomTabsCallback(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 3

    .line 516
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 517
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 521
    iget-object v1, p0, Lo/getCustomActions;->newSession:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 522
    iget-object v1, p0, Lo/getCustomActions;->newSession:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    .line 523
    iget-object p2, p0, Lo/getCustomActions;->newSession:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 524
    iget-object p2, p0, Lo/getCustomActions;->newSession:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    .line 526
    iget-object p2, p0, Lo/getCustomActions;->newSession:Landroid/graphics/Rect;

    iget-object p3, p0, Lo/getCustomActions;->warmup:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 527
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lo/getCustomActions;->warmup:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lo/getCustomActions;->warmup:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Lo/getCustomActions;->warmup:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Lo/getCustomActions;->warmup:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    .line 530
    iget-boolean p1, p0, Lo/getCustomActions;->onPostMessage:Z

    if-eqz p1, :cond_0

    .line 531
    invoke-virtual {p0}, Lo/getCustomActions;->onNavigationEvent()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    .line 498
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Lo/getCustomActions;->measureChild(Landroid/view/View;II)V

    .line 499
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 500
    iget-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 501
    iget-object v2, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredState()I

    move-result v2

    .line 503
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 506
    invoke-virtual {p0}, Lo/getCustomActions;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 507
    invoke-virtual {p0}, Lo/getCustomActions;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 509
    invoke-static {v0, p1, v2}, Lo/getCustomActions;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    .line 510
    invoke-static {v1, p2, v0}, Lo/getCustomActions;->resolveSizeAndState(III)I

    move-result p2

    .line 509
    invoke-virtual {p0, p1, p2}, Lo/getCustomActions;->setMeasuredDimension(II)V

    return-void
.end method

.method final onMessageChannelReady()I
    .locals 3

    .line 556
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    .line 8573
    iget-object v1, p0, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1

    .line 559
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    goto :goto_0
.end method

.method final onMessageChannelReady(IZ)V
    .locals 9

    .line 9482
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 617
    iget p2, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 618
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    :cond_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    .line 626
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 627
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 629
    iget v0, p0, Lo/getCustomActions;->extraCallback:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    .line 10367
    iget v0, v0, Lo/getPosition;->onPostMessage:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    return-void

    .line 633
    :cond_4
    iget v0, p0, Lo/getCustomActions;->extraCallback:I

    if-ne p1, v0, :cond_5

    if-eqz p2, :cond_5

    return-void

    .line 641
    :cond_5
    iget v0, p0, Lo/getCustomActions;->extraCallback:I

    int-to-double v3, v0

    .line 642
    iput p1, p0, Lo/getCustomActions;->extraCallback:I

    .line 643
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getCustomActions$onMessageChannelReady;->onMessageChannelReady()V

    .line 645
    iget-object v0, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    .line 11367
    iget v0, v0, Lo/getPosition;->onPostMessage:I

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_7

    .line 647
    iget-object v0, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    .line 11407
    invoke-virtual {v0}, Lo/getPosition;->ICustomTabsCallback()V

    .line 11408
    iget-object v1, v0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget v1, v1, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    int-to-double v1, v1

    iget-object v0, v0, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget v0, v0, Lo/getPosition$onMessageChannelReady;->onNavigationEvent:F

    float-to-double v3, v0

    add-double/2addr v3, v1

    .line 652
    :cond_7
    iget-object v0, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    invoke-virtual {v0, p1, p2}, Lo/getPosition;->ICustomTabsCallback(IZ)V

    if-nez p2, :cond_8

    .line 654
    iget-object p2, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_8
    int-to-double v0, p1

    sub-double v5, v0, v3

    .line 659
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    cmpl-double p2, v5, v7

    if-lez p2, :cond_a

    .line 660
    iget-object p2, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    cmpl-double v2, v0, v3

    if-lez v2, :cond_9

    add-int/lit8 v0, p1, -0x3

    goto :goto_1

    :cond_9
    add-int/lit8 v0, p1, 0x3

    :goto_1
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 662
    iget-object p2, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lo/getCustomActions$getInterfaceDescriptor;

    invoke-direct {v0, p1, p2}, Lo/getCustomActions$getInterfaceDescriptor;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 664
    :cond_a
    iget-object p2, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method final onNavigationEvent()V
    .locals 2

    .line 537
    iget-object v0, p0, Lo/getCustomActions;->mayLaunchUrl:Landroidx/recyclerview/widget/PagerSnapHelper;

    if-eqz v0, :cond_2

    .line 541
    iget-object v1, p0, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    iget-object v1, p0, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 547
    iget v1, p0, Lo/getCustomActions;->extraCallback:I

    if-eq v0, v1, :cond_1

    .line 7687
    iget-object v1, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    .line 8360
    iget v1, v1, Lo/getPosition;->onPostMessage:I

    if-nez v1, :cond_1

    .line 549
    iget-object v1, p0, Lo/getCustomActions;->extraCommand:Lo/getBufferedPosition;

    invoke-virtual {v1, v0}, Lo/getCustomActions$onNavigationEvent;->onMessageChannelReady(I)V

    :cond_1
    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Lo/getCustomActions;->onPostMessage:Z

    return-void

    .line 538
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 328
    instance-of v0, p1, Lo/getCustomActions$asInterface;

    if-nez v0, :cond_0

    .line 329
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 333
    :cond_0
    check-cast p1, Lo/getCustomActions$asInterface;

    .line 334
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 335
    iget v0, p1, Lo/getCustomActions$asInterface;->ICustomTabsCallback:I

    iput v0, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    .line 336
    iget-object p1, p1, Lo/getCustomActions$asInterface;->onNavigationEvent:Landroid/os/Parcelable;

    iput-object p1, p0, Lo/getCustomActions;->updateVisuals:Landroid/os/Parcelable;

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 309
    new-instance v1, Lo/getCustomActions$asInterface;

    invoke-direct {v1, v0}, Lo/getCustomActions$asInterface;-><init>(Landroid/os/Parcelable;)V

    .line 311
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v1, Lo/getCustomActions$asInterface;->extraCallback:I

    .line 312
    iget v0, p0, Lo/getCustomActions;->getInterfaceDescriptor:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/getCustomActions;->extraCallback:I

    :cond_0
    iput v0, v1, Lo/getCustomActions$asInterface;->ICustomTabsCallback:I

    .line 314
    iget-object v0, p0, Lo/getCustomActions;->updateVisuals:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 315
    iput-object v0, v1, Lo/getCustomActions$asInterface;->onNavigationEvent:Landroid/os/Parcelable;

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 318
    instance-of v2, v0, Lo/getLastPositionUpdateTime;

    if-eqz v2, :cond_2

    .line 319
    check-cast v0, Lo/getLastPositionUpdateTime;

    invoke-interface {v0}, Lo/getLastPositionUpdateTime;->onPostMessage()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lo/getCustomActions$asInterface;->onNavigationEvent:Landroid/os/Parcelable;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 488
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not support direct child views"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 956
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/getCustomActions$onMessageChannelReady;->onPostMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object p2, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {p2, p1}, Lo/getCustomActions$onMessageChannelReady;->ICustomTabsCallback(I)Z

    move-result p1

    return p1

    .line 959
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 458
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v1, v0}, Lo/getCustomActions$onMessageChannelReady;->ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz v0, :cond_0

    .line 6476
    iget-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub$Proxy:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    .line 462
    iput v0, p0, Lo/getCustomActions;->extraCallback:I

    .line 463
    invoke-direct {p0}, Lo/getCustomActions;->ICustomTabsCallback()V

    .line 464
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/getCustomActions$onMessageChannelReady;->onPostMessage(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 7470
    iget-object v0, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub$Proxy:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_1
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 591
    invoke-virtual {p0, p1, v0}, Lo/getCustomActions;->setCurrentItem(IZ)V

    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 0

    .line 607
    invoke-virtual {p0, p1, p2}, Lo/getCustomActions;->onMessageChannelReady(IZ)V

    return-void
.end method

.method public final setLayoutDirection(I)V
    .locals 0

    .line 943
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 944
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getCustomActions$onMessageChannelReady;->onTransact()V

    return-void
.end method

.method public final setOffscreenPageLimit(I)V
    .locals 1

    if-gtz p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_1
    :goto_0
    iput p1, p0, Lo/getCustomActions;->onTransact:I

    .line 838
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 1

    .line 568
    iget-object v0, p0, Lo/getCustomActions;->onNavigationEvent:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 569
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getCustomActions$onMessageChannelReady;->ICustomTabsCallback()V

    return-void
.end method

.method public final setPageTransformer(Lo/getCustomActions$ICustomTabsCallback$Stub;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 901
    iget-boolean v1, p0, Lo/getCustomActions;->validateRelationship:Z

    if-nez v1, :cond_0

    .line 902
    iget-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    iput-object v1, p0, Lo/getCustomActions;->postMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x1

    .line 903
    iput-boolean v1, p0, Lo/getCustomActions;->validateRelationship:Z

    .line 905
    :cond_0
    iget-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 907
    :cond_1
    iget-boolean v1, p0, Lo/getCustomActions;->validateRelationship:Z

    if-eqz v1, :cond_2

    .line 908
    iget-object v1, p0, Lo/getCustomActions;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lo/getCustomActions;->postMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 909
    iput-object v0, p0, Lo/getCustomActions;->postMessage:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v0, 0x0

    .line 910
    iput-boolean v0, p0, Lo/getCustomActions;->validateRelationship:Z

    .line 916
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/getCustomActions;->requestPostMessageChannel:Lo/getState;

    .line 12041
    iget-object v0, v0, Lo/getState;->onPostMessage:Lo/getCustomActions$ICustomTabsCallback$Stub;

    if-ne p1, v0, :cond_3

    return-void

    .line 919
    :cond_3
    iget-object v0, p0, Lo/getCustomActions;->requestPostMessageChannel:Lo/getState;

    .line 12053
    iput-object p1, v0, Lo/getState;->onPostMessage:Lo/getCustomActions$ICustomTabsCallback$Stub;

    .line 12930
    iget-object p1, p0, Lo/getCustomActions;->requestPostMessageChannel:Lo/getState;

    .line 13041
    iget-object p1, p1, Lo/getState;->onPostMessage:Lo/getCustomActions$ICustomTabsCallback$Stub;

    if-eqz p1, :cond_4

    .line 12933
    iget-object p1, p0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    .line 13407
    invoke-virtual {p1}, Lo/getPosition;->ICustomTabsCallback()V

    .line 13408
    iget-object v0, p1, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget v0, v0, Lo/getPosition$onMessageChannelReady;->extraCallback:I

    int-to-double v0, v0

    iget-object p1, p1, Lo/getPosition;->extraCallback:Lo/getPosition$onMessageChannelReady;

    iget p1, p1, Lo/getPosition$onMessageChannelReady;->onNavigationEvent:F

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int p1, v0

    int-to-double v2, p1

    sub-double/2addr v0, v2

    double-to-float v0, v0

    .line 12936
    invoke-virtual {p0}, Lo/getCustomActions;->onMessageChannelReady()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 12937
    iget-object v2, p0, Lo/getCustomActions;->requestPostMessageChannel:Lo/getState;

    invoke-virtual {v2, p1, v0, v1}, Lo/getCustomActions$onNavigationEvent;->onPostMessage(IFI)V

    :cond_4
    return-void
.end method

.method public final setUserInputEnabled(Z)V
    .locals 0

    .line 792
    iput-boolean p1, p0, Lo/getCustomActions;->asInterface:Z

    .line 793
    iget-object p1, p0, Lo/getCustomActions;->ICustomTabsCallback$Stub:Lo/getCustomActions$onMessageChannelReady;

    invoke-virtual {p1}, Lo/getCustomActions$onMessageChannelReady;->asBinder()V

    return-void
.end method
