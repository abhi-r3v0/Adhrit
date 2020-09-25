.class public final Lo/onSetCaptioningEnabled;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSetCaptioningEnabled$ICustomTabsCallback;,
        Lo/onSetCaptioningEnabled$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lo/onSetCaptioningEnabled;",
            ">;"
        }
    .end annotation
.end field

.field private static onRelationshipValidationResult:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lo/onSetCaptioningEnabled$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ICustomTabsCallback:J

.field private extraCallback:J

.field public onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/onSetCaptioningEnabled$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lo/onSetCaptioningEnabled;->onMessageChannelReady:Ljava/lang/ThreadLocal;

    .line 190
    new-instance v0, Lo/onSetCaptioningEnabled$4;

    invoke-direct {v0}, Lo/onSetCaptioningEnabled$4;-><init>()V

    sput-object v0, Lo/onSetCaptioningEnabled;->onRelationshipValidationResult:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/onSetCaptioningEnabled;->onNavigationEvent:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/onSetCaptioningEnabled;->onPostMessage:Ljava/util/ArrayList;

    return-void
.end method

.method private static ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 1265
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Lo/onRewind;

    .line 2263
    iget-object v0, v0, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {v0}, Lo/onRewind$onNavigationEvent;->onNavigationEvent()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1267
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Lo/onRewind;

    .line 2273
    iget-object v3, v3, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {v3, v2}, Lo/onRewind$onNavigationEvent;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v3

    .line 1268
    invoke-static {v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1270
    iget v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mRecycler:Landroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 287
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 288
    invoke-virtual {v0, p1, v1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 292
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p2

    if-nez p2, :cond_3

    .line 295
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_2

    .line 301
    :cond_3
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    :cond_4
    :goto_2
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 306
    throw p1
.end method


# virtual methods
.method public final extraCallback(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 5

    .line 177
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-wide v0, p0, Lo/onSetCaptioningEnabled;->extraCallback:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 182
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lo/onSetCaptioningEnabled;->extraCallback:J

    .line 183
    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lo/onSetCaptioningEnabled$ICustomTabsCallback;

    .line 1074
    iput p2, p1, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onMessageChannelReady:I

    .line 1075
    iput p3, p1, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->extraCallback:I

    return-void
.end method

.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    const-wide/16 v2, 0x0

    :try_start_0
    const-string v0, "RV Prefetch"

    .line 374
    invoke-static {v0}, Lo/newThumbRating;->onPostMessage(Ljava/lang/String;)V

    .line 376
    iget-object v0, v1, Lo/onSetCaptioningEnabled;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    iput-wide v2, v1, Lo/onSetCaptioningEnabled;->extraCallback:J

    .line 404
    invoke-static {}, Lo/newThumbRating;->onPostMessage()V

    return-void

    .line 383
    :cond_0
    :try_start_1
    iget-object v0, v1, Lo/onSetCaptioningEnabled;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v4, 0x0

    move-wide v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_2

    .line 386
    iget-object v8, v1, Lo/onSetCaptioningEnabled;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView;

    .line 387
    invoke-virtual {v8}, Landroid/view/View;->getWindowVisibility()I

    move-result v9

    if-nez v9, :cond_1

    .line 388
    invoke-virtual {v8}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    cmp-long v0, v6, v2

    if-nez v0, :cond_3

    goto :goto_0

    .line 397
    :cond_3
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    iget-wide v7, v1, Lo/onSetCaptioningEnabled;->ICustomTabsCallback:J

    add-long/2addr v5, v7

    .line 3217
    iget-object v0, v1, Lo/onSetCaptioningEnabled;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v0, :cond_5

    .line 3220
    iget-object v9, v1, Lo/onSetCaptioningEnabled;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView;

    .line 3221
    invoke-virtual {v9}, Landroid/view/View;->getWindowVisibility()I

    move-result v10

    if-nez v10, :cond_4

    .line 3222
    iget-object v10, v9, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lo/onSetCaptioningEnabled$ICustomTabsCallback;

    invoke-virtual {v10, v9, v4}, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 3223
    iget-object v9, v9, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lo/onSetCaptioningEnabled$ICustomTabsCallback;

    iget v9, v9, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    add-int/2addr v8, v9

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 3228
    :cond_5
    iget-object v7, v1, Lo/onSetCaptioningEnabled;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x1

    if-ge v7, v0, :cond_9

    .line 3231
    iget-object v10, v1, Lo/onSetCaptioningEnabled;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 3232
    invoke-virtual {v10}, Landroid/view/View;->getWindowVisibility()I

    move-result v11

    if-nez v11, :cond_8

    .line 3237
    iget-object v11, v10, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lo/onSetCaptioningEnabled$ICustomTabsCallback;

    .line 3238
    iget v12, v11, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onMessageChannelReady:I

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, v11, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->extraCallback:I

    .line 3239
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v12, v13

    const/4 v13, 0x0

    .line 3240
    :goto_4
    iget v14, v11, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    shl-int/2addr v14, v9

    if-ge v13, v14, :cond_8

    .line 3242
    iget-object v14, v1, Lo/onSetCaptioningEnabled;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/AbstractCollection;->size()I

    move-result v14

    if-lt v8, v14, :cond_6

    .line 3243
    new-instance v14, Lo/onSetCaptioningEnabled$onNavigationEvent;

    invoke-direct {v14}, Lo/onSetCaptioningEnabled$onNavigationEvent;-><init>()V

    .line 3244
    iget-object v15, v1, Lo/onSetCaptioningEnabled;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3246
    :cond_6
    iget-object v14, v1, Lo/onSetCaptioningEnabled;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lo/onSetCaptioningEnabled$onNavigationEvent;

    .line 3248
    :goto_5
    iget-object v15, v11, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    add-int/lit8 v16, v13, 0x1

    aget v15, v15, v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-gt v15, v12, :cond_7

    const/4 v2, 0x1

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    .line 3250
    :goto_6
    :try_start_2
    iput-boolean v2, v14, Lo/onSetCaptioningEnabled$onNavigationEvent;->onNavigationEvent:Z

    .line 3251
    iput v12, v14, Lo/onSetCaptioningEnabled$onNavigationEvent;->onMessageChannelReady:I

    .line 3252
    iput v15, v14, Lo/onSetCaptioningEnabled$onNavigationEvent;->ICustomTabsCallback:I

    .line 3253
    iput-object v10, v14, Lo/onSetCaptioningEnabled$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 3254
    iget-object v2, v11, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    aget v2, v2, v13

    iput v2, v14, Lo/onSetCaptioningEnabled$onNavigationEvent;->extraCallback:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v13, v13, 0x2

    const-wide/16 v2, 0x0

    goto :goto_4

    :cond_8
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v2, 0x0

    goto :goto_3

    .line 3261
    :cond_9
    iget-object v0, v1, Lo/onSetCaptioningEnabled;->onPostMessage:Ljava/util/ArrayList;

    sget-object v2, Lo/onSetCaptioningEnabled;->onRelationshipValidationResult:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 3356
    :goto_7
    iget-object v2, v1, Lo/onSetCaptioningEnabled;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 3357
    iget-object v2, v1, Lo/onSetCaptioningEnabled;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onSetCaptioningEnabled$onNavigationEvent;

    .line 3358
    iget-object v3, v2, Lo/onSetCaptioningEnabled$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_e

    .line 4344
    iget-boolean v3, v2, Lo/onSetCaptioningEnabled$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v3, :cond_a

    const-wide v7, 0x7fffffffffffffffL

    goto :goto_8

    :cond_a
    move-wide v7, v5

    .line 4345
    :goto_8
    iget-object v3, v2, Lo/onSetCaptioningEnabled$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    iget v10, v2, Lo/onSetCaptioningEnabled$onNavigationEvent;->extraCallback:I

    invoke-static {v3, v10, v7, v8}, Lo/onSetCaptioningEnabled;->ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 4347
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_d

    .line 4349
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4350
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_d

    .line 4351
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_d

    .line 5316
    iget-boolean v7, v3, Landroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v7, :cond_b

    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->mChildHelper:Lo/onRewind;

    .line 6263
    iget-object v7, v7, Lo/onRewind;->extraCallback:Lo/onRewind$onNavigationEvent;

    invoke-interface {v7}, Lo/onRewind$onNavigationEvent;->onNavigationEvent()I

    move-result v7

    if-eqz v7, :cond_b

    .line 5320
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 5324
    :cond_b
    iget-object v7, v3, Landroidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Lo/onSetCaptioningEnabled$ICustomTabsCallback;

    .line 5325
    invoke-virtual {v7, v3, v9}, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage(Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 5327
    iget v8, v7, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_d

    :try_start_3
    const-string v8, "RV Nested Prefetch"

    .line 5329
    invoke-static {v8}, Lo/newThumbRating;->onPostMessage(Ljava/lang/String;)V

    .line 5330
    iget-object v8, v3, Landroidx/recyclerview/widget/RecyclerView;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    iget-object v10, v3, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v8, v10}, Landroidx/recyclerview/widget/RecyclerView$State;->prepareForNestedPrefetch(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v8, 0x0

    .line 5331
    :goto_9
    iget v10, v7, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onPostMessage:I

    shl-int/2addr v10, v9

    if-ge v8, v10, :cond_c

    .line 5334
    iget-object v10, v7, Lo/onSetCaptioningEnabled$ICustomTabsCallback;->onNavigationEvent:[I

    aget v10, v10, v8

    .line 5335
    invoke-static {v3, v10, v5, v6}, Lo/onSetCaptioningEnabled;->ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView;IJ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v8, v8, 0x2

    goto :goto_9

    .line 5338
    :cond_c
    :try_start_4
    invoke-static {}, Lo/newThumbRating;->onPostMessage()V

    goto :goto_a

    :catchall_0
    move-exception v0

    invoke-static {}, Lo/newThumbRating;->onPostMessage()V

    .line 5339
    throw v0

    .line 7046
    :cond_d
    :goto_a
    iput-boolean v4, v2, Lo/onSetCaptioningEnabled$onNavigationEvent;->onNavigationEvent:Z

    .line 7047
    iput v4, v2, Lo/onSetCaptioningEnabled$onNavigationEvent;->onMessageChannelReady:I

    .line 7048
    iput v4, v2, Lo/onSetCaptioningEnabled$onNavigationEvent;->ICustomTabsCallback:I

    const/4 v3, 0x0

    .line 7049
    iput-object v3, v2, Lo/onSetCaptioningEnabled$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView;

    .line 7050
    iput v4, v2, Lo/onSetCaptioningEnabled$onNavigationEvent;->extraCallback:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_e
    const-wide/16 v2, 0x0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_b

    :catchall_2
    move-exception v0

    .line 403
    :goto_b
    iput-wide v2, v1, Lo/onSetCaptioningEnabled;->extraCallback:J

    .line 404
    invoke-static {}, Lo/newThumbRating;->onPostMessage()V

    .line 405
    throw v0
.end method
