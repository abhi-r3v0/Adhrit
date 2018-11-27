.class public Landroid/support/v7/widget/helper/ItemTouchHelper;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$SimpleCallback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;,
        Landroid/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field mActionState:I

.field mActivePointerId:I

.field mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field mSelectedStartX:F

.field mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 3

    .line 427
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    const/4 v0, 0x2

    .line 167
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, -0x1

    .line 211
    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, 0x0

    .line 221
    iput v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 247
    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 274
    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 281
    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 288
    iput v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 295
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$2;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 428
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .locals 2

    .line 1249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_1

    .line 1253
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$5;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1271
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    return-void
.end method

.method private checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 8

    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_3

    .line 1197
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x4

    const/16 v3, 0x8

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1198
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1199
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1200
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1199
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1201
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1202
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    cmpl-float v1, v4, v1

    if-lez v1, :cond_1

    move v2, v3

    .line 1204
    :cond_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    and-int v3, v2, p2

    if-eqz v3, :cond_2

    if-ne v0, v2, :cond_2

    .line 1205
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1206
    invoke-virtual {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    .line 1207
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    return v2

    .line 1212
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 1213
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result p1

    mul-float/2addr v1, p1

    and-int p1, p2, v0

    if-eqz p1, :cond_3

    .line 1215
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I
    .locals 8

    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_3

    .line 1224
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1225
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_2

    .line 1226
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget-object v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1227
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1226
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1228
    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1229
    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1

    move v2, v3

    .line 1231
    :cond_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    and-int v3, v2, p2

    if-eqz v3, :cond_2

    if-ne v2, v0, :cond_2

    .line 1232
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1233
    invoke-virtual {v3, v5}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_2

    .line 1234
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    return v2

    .line 1239
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 1240
    invoke-virtual {v2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getSwipeThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result p1

    mul-float/2addr v1, p1

    and-int p1, p2, v0

    if-eqz p1, :cond_3

    .line 1241
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private destroyCallbacks()V
    .locals 4

    .line 475
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 476
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 477
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 479
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 481
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 482
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 485
    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    const/4 v0, -0x1

    .line 486
    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 487
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    return-void
.end method

.method private findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 764
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    if-nez v2, :cond_0

    .line 765
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    goto :goto_0

    .line 768
    :cond_0
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 769
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 771
    :goto_0
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v2

    .line 772
    iget v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 773
    iget v4, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 774
    iget-object v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    const/4 v6, 0x2

    mul-int/2addr v2, v6

    add-int/2addr v5, v2

    .line 775
    iget-object v7, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    add-int/2addr v7, v2

    add-int v2, v3, v5

    .line 776
    div-int/2addr v2, v6

    add-int v8, v4, v7

    .line 777
    div-int/2addr v8, v6

    .line 778
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v9

    .line 779
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v10

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v10, :cond_5

    .line 781
    invoke-virtual {v9, v12}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 782
    iget-object v14, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v13, v14, :cond_1

    goto/16 :goto_3

    .line 785
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v14

    if-lt v14, v4, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    if-gt v14, v7, :cond_4

    .line 786
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v14

    if-lt v14, v3, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v14

    if-le v14, v5, :cond_2

    goto :goto_3

    .line 789
    :cond_2
    iget-object v14, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v14, v13}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 790
    iget-object v15, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v15, v11, v6, v14}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->canDropOver(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 792
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v11

    add-int/2addr v6, v11

    const/4 v11, 0x2

    div-int/2addr v6, v11

    sub-int v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 793
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    add-int/2addr v15, v13

    div-int/2addr v15, v11

    sub-int v13, v8, v15

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    mul-int/2addr v6, v6

    mul-int/2addr v13, v13

    add-int/2addr v6, v13

    .line 797
    iget-object v13, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v13, :cond_3

    .line 799
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v6, v1, :cond_3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    .line 805
    :cond_3
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1, v11, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 806
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v11, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v6, 0x2

    goto/16 :goto_1

    .line 809
    :cond_5
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    return-object v1
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 913
    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    return-object v2

    .line 916
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 917
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v3, v4

    .line 918
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v1, v4

    .line 919
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 920
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 922
    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_1

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    return-object v2

    :cond_1
    cmpl-float v4, v3, v1

    if-lez v4, :cond_2

    .line 925
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v2

    :cond_2
    cmpl-float v1, v1, v3

    if-lez v1, :cond_3

    .line 927
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    .line 930
    :cond_3
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v2

    .line 934
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method private getSelectedDxDy([F)V
    .locals 3

    .line 499
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 500
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 504
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 505
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v2

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_1

    .line 507
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    :goto_1
    return-void
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .locals 1

    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p3, v0

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_0

    cmpl-float p1, p2, p4

    if-ltz p1, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p4, p0

    cmpg-float p0, p2, p4

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initGestureDetector()V
    .locals 3

    .line 491
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    if-eqz v0, :cond_0

    return-void

    .line 494
    :cond_0
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/helper/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-void
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .line 905
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 907
    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setupCallbacks()V
    .locals 2

    .line 466
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    .line 468
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 469
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 470
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 471
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->initGestureDetector()V

    return-void
.end method

.method private swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 5

    .line 1150
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    .line 1153
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1154
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1156
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1154
    invoke-virtual {v2, v0, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v2

    const v3, 0xff00

    and-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    return v1

    :cond_1
    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 1165
    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 1166
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v3

    if-lez v3, :cond_3

    and-int p1, v0, v3

    if-nez p1, :cond_2

    .line 1170
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1171
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    .line 1170
    invoke-static {v3, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result p1

    return p1

    :cond_2
    return v3

    .line 1175
    :cond_3
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result p1

    if-lez p1, :cond_7

    return p1

    .line 1179
    :cond_4
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkVerticalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result v3

    if-lez v3, :cond_5

    return v3

    .line 1182
    :cond_5
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->checkHorizontalSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)I

    move-result p1

    if-lez p1, :cond_7

    and-int/2addr v0, p1

    if-nez v0, :cond_6

    .line 1186
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 1187
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1186
    invoke-static {p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result p1

    return p1

    :cond_6
    return p1

    :cond_7
    return v1
.end method


# virtual methods
.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_0

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    .line 452
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->destroyCallbacks()V

    .line 454
    :cond_1
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 455
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 457
    sget v0, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 458
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 459
    sget v0, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 460
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 461
    invoke-direct {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->setupCallbacks()V

    :cond_2
    return-void
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)Z
    .locals 8

    .line 941
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    if-eq p1, v0, :cond_9

    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 942
    invoke-virtual {p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 945
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    return v1

    .line 948
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_2

    return v1

    .line 952
    :cond_2
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_3

    return v1

    .line 963
    :cond_3
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 964
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    .line 967
    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v4, v5

    .line 968
    iget v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr p3, v5

    .line 971
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 972
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 974
    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v5, v7

    if-gez v7, :cond_4

    iget v7, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSlop:I

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_4

    return v1

    :cond_4
    cmpl-float v5, v5, v6

    const/4 v6, 0x0

    if-lez v5, :cond_6

    cmpg-float p3, v4, v6

    if-gez p3, :cond_5

    and-int/lit8 p3, v3, 0x4

    if-nez p3, :cond_5

    return v1

    :cond_5
    cmpl-float p3, v4, v6

    if-lez p3, :cond_8

    and-int/lit8 p3, v3, 0x8

    if-nez p3, :cond_8

    return v1

    :cond_6
    cmpg-float v4, p3, v6

    if-gez v4, :cond_7

    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_7

    return v1

    :cond_7
    cmpl-float p3, p3, v6

    if-lez p3, :cond_8

    and-int/lit8 p3, v3, 0x2

    if-nez p3, :cond_8

    return v1

    .line 992
    :cond_8
    iput v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 993
    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 994
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return v2

    :cond_9
    :goto_0
    return v1
.end method

.method endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I
    .locals 3

    .line 876
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 878
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 879
    iget-object v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v2, p1, :cond_1

    .line 880
    iget-boolean p1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr p1, p2

    iput-boolean p1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 881
    iget-boolean p1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez p1, :cond_0

    .line 882
    invoke-virtual {v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 884
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 885
    iget p1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method findAnimation(Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
    .locals 4

    .line 1115
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1118
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    .line 1119
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1120
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1121
    iget-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 5

    .line 1000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1002
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v1, :cond_0

    .line 1003
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1004
    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v3, v4

    invoke-static {v1, v0, p1, v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 1008
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1009
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    .line 1010
    iget-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1011
    iget v4, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v3, v0, p1, v4, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1015
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    .line 894
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method hasRunningRecoverAnim()Z
    .locals 4

    .line 688
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 690
    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    iget-boolean v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method moveIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 10

    .line 816
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 819
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    .line 823
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getMoveThreshold(Landroid/support/v7/widget/RecyclerView$ViewHolder;)F

    move-result v0

    .line 824
    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v1, v2

    float-to-int v8, v1

    .line 825
    iget v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v2

    float-to-int v9, v1

    .line 826
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v9, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 827
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 828
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    cmpg-float v0, v1, v2

    if-gez v0, :cond_2

    return-void

    .line 831
    :cond_2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->findSwapTargets(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v0

    .line 832
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 836
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v1, p1, v0, v8, v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->chooseDropTarget(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    if-nez v6, :cond_4

    .line 838
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 839
    iget-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void

    .line 842
    :cond_4
    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v7

    .line 843
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    .line 844
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMove(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 846
    iget-object v2, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onMoved(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILandroid/support/v7/widget/RecyclerView$ViewHolder;III)V

    :cond_5
    return-void
.end method

.method obtainVelocityTracker()V
    .locals 1

    .line 898
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 901
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 857
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 858
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 862
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 863
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 865
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 866
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 867
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    const/4 p3, -0x1

    .line 526
    iput p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 528
    iget-object p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 529
    iget-object p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 530
    iget-object p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v0, 0x0

    aget v0, p3, v0

    .line 531
    iget-object p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget p3, p3, v1

    move v8, p3

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v0

    move v8, v7

    .line 533
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    .line 514
    iget-object p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 515
    iget-object p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, p3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 516
    iget-object p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v0, 0x0

    aget v0, p3, v0

    .line 517
    iget-object p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    const/4 v1, 0x1

    aget p3, p3, v1

    move v8, p3

    move v7, v0

    goto :goto_0

    :cond_0
    move v7, v0

    move v8, v7

    .line 519
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v4, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v5, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v6, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    return-void
.end method

.method postDispatchSwipe(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V
    .locals 2

    .line 666
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/widget/helper/ItemTouchHelper$4;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .locals 1

    .line 1275
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1276
    iput-object p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1278
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mChildDrawingOrderCallback:Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_0

    .line 1279
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/RecyclerView$ChildDrawingOrderCallback;)V

    :cond_0
    return-void
.end method

.method scrollIfNecessary()Z
    .locals 18

    move-object/from16 v0, p0

    .line 701
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v1, :cond_0

    .line 702
    iput-wide v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    return v2

    .line 705
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 706
    iget-wide v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_1

    const-wide/16 v7, 0x0

    goto :goto_0

    :cond_1
    iget-wide v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    sub-long v9, v5, v7

    move-wide v7, v9

    .line 708
    :goto_0
    iget-object v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 709
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v9, :cond_2

    .line 710
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 714
    :cond_2
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 715
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 716
    iget v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    iget v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 717
    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v9, v11

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 718
    iget v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    cmpg-float v12, v12, v10

    if-gez v12, :cond_3

    if-gez v11, :cond_3

    move v14, v11

    goto :goto_1

    .line 720
    :cond_3
    iget v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    cmpl-float v11, v11, v10

    if-lez v11, :cond_4

    .line 721
    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 722
    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v11

    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 723
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v11

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v9, v11

    if-lez v9, :cond_4

    move v14, v9

    goto :goto_1

    :cond_4
    move v14, v2

    .line 729
    :goto_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 730
    iget v1, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    iget v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v9

    float-to-int v1, v1

    .line 731
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v1, v9

    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v9, v11

    .line 732
    iget v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    cmpg-float v11, v11, v10

    if-gez v11, :cond_5

    if-gez v9, :cond_5

    move v1, v9

    goto :goto_2

    .line 734
    :cond_5
    iget v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 735
    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v9

    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 736
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v1, v9

    if-lez v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    if-eqz v14, :cond_7

    .line 743
    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 744
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v13

    iget-object v9, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 745
    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v15

    move-wide/from16 v16, v7

    .line 743
    invoke-virtual/range {v11 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v14

    :cond_7
    move v9, v14

    if-eqz v1, :cond_8

    .line 748
    iget-object v11, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v12, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 749
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v13

    iget-object v10, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 750
    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v15

    move v14, v1

    move-wide/from16 v16, v7

    .line 748
    invoke-virtual/range {v11 .. v17}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Landroid/support/v7/widget/RecyclerView;IIIJ)I

    move-result v1

    :cond_8
    if-nez v9, :cond_a

    if-eqz v1, :cond_9

    goto :goto_3

    .line 759
    :cond_9
    iput-wide v3, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    return v2

    .line 753
    :cond_a
    :goto_3
    iget-wide v7, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v2, v7, v3

    if-nez v2, :cond_b

    .line 754
    iput-wide v5, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 756
    :cond_b
    iget-object v2, v0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v9, v1}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    const/4 v1, 0x1

    return v1
.end method

.method select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    .line 545
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-ne v12, v0, :cond_0

    iget v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    if-ne v13, v0, :cond_0

    return-void

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 548
    iput-wide v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 549
    iget v4, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v14, 0x1

    .line 551
    invoke-virtual {v11, v12, v14}, Landroid/support/v7/widget/helper/ItemTouchHelper;->endRecoverAnimation(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    .line 552
    iput v13, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_1

    .line 557
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 558
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->addChildDrawingOrderCallback()V

    :cond_1
    const/16 v10, 0x8

    mul-int v0, v10, v13

    add-int/2addr v0, v10

    shl-int v0, v14, v0

    add-int/lit8 v16, v0, -0x1

    .line 564
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v9, 0x0

    if-eqz v0, :cond_7

    .line 565
    iget-object v8, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 566
    iget-object v0, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne v4, v15, :cond_2

    move v7, v9

    goto :goto_0

    .line 568
    :cond_2
    invoke-direct {v11, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper;->swipeIfNecessary(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    move v7, v0

    .line 569
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->releaseVelocityTracker()V

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq v7, v0, :cond_3

    if-eq v7, v10, :cond_3

    const/16 v2, 0x10

    if-eq v7, v2, :cond_3

    const/16 v2, 0x20

    if-eq v7, v2, :cond_3

    packed-switch v7, :pswitch_data_0

    move/from16 v17, v1

    move/from16 v18, v17

    goto :goto_1

    .line 584
    :pswitch_0
    iget v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move/from16 v17, v1

    move/from16 v18, v2

    goto :goto_1

    .line 579
    :cond_3
    iget v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iget-object v3, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move/from16 v18, v1

    move/from16 v17, v2

    :goto_1
    if-ne v4, v15, :cond_4

    move v6, v10

    goto :goto_2

    :cond_4
    if-lez v7, :cond_5

    move v6, v15

    goto :goto_2

    :cond_5
    move v6, v0

    .line 597
    :goto_2
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v11, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 598
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v19, v0, v9

    .line 599
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mTmpPosition:[F

    aget v20, v0, v14

    .line 600
    new-instance v5, Landroid/support/v7/widget/helper/ItemTouchHelper$3;

    move-object v0, v5

    move-object v1, v11

    move-object v2, v8

    move v3, v6

    move-object v14, v5

    move/from16 v5, v19

    move v15, v6

    move/from16 v6, v20

    move/from16 v21, v7

    move/from16 v7, v17

    move-object/from16 v22, v8

    move/from16 v8, v18

    move/from16 v9, v21

    move/from16 v21, v10

    move-object/from16 v10, v22

    invoke-direct/range {v0 .. v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$3;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILandroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 629
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    sub-float v2, v17, v19

    sub-float v3, v18, v20

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAnimationDuration(Landroid/support/v7/widget/RecyclerView;IFF)J

    move-result-wide v0

    .line 631
    invoke-virtual {v14, v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 632
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-virtual {v14}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->start()V

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v8

    move/from16 v21, v10

    .line 636
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 637
    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v9, 0x0

    :goto_3
    const/4 v0, 0x0

    .line 639
    iput-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_4

    :cond_7
    move/from16 v21, v10

    const/4 v9, 0x0

    :goto_4
    if-eqz v12, :cond_8

    .line 642
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 643
    invoke-virtual {v0, v1, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    iput v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    .line 645
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartX:F

    .line 646
    iget-object v0, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedStartY:F

    .line 647
    iput-object v12, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x2

    if-ne v13, v0, :cond_8

    .line 650
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    .line 653
    :goto_5
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 655
    iget-object v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_9

    const/4 v1, 0x1

    :cond_9
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    if-nez v9, :cond_b

    .line 658
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 660
    :cond_b
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget v2, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActionState:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->onSelectedChanged(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 661
    iget-object v0, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasDragFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ItemTouchHelper"

    const-string v0, "Start drag has been called but dragging is not enabled"

    .line 1054
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1057
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    const-string p1, "ItemTouchHelper"

    const-string v0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    .line 1058
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1062
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    const/4 v0, 0x0

    .line 1063
    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v0, 0x2

    .line 1064
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public startSwipe(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1100
    iget-object v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->hasSwipeFlag(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ItemTouchHelper"

    const-string v0, "Start swipe has been called but swiping is not enabled"

    .line 1101
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1104
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eq v0, v1, :cond_1

    const-string p1, "ItemTouchHelper"

    const-string v0, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    .line 1105
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1109
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->obtainVelocityTracker()V

    const/4 v0, 0x0

    .line 1110
    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    const/4 v0, 0x1

    .line 1111
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->select(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .locals 1

    .line 1129
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1130
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 1133
    iget p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v0, p3

    iput v0, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    .line 1134
    iget p3, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr p1, p3

    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    and-int/lit8 p1, p2, 0x4

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 1136
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    :cond_0
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_1

    .line 1139
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDx:F

    :cond_1
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_2

    .line 1142
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {p3, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    :cond_2
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_3

    .line 1145
    iget p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/helper/ItemTouchHelper;->mDy:F

    :cond_3
    return-void
.end method
