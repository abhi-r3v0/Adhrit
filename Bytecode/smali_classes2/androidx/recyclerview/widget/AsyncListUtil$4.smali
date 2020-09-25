.class final Landroidx/recyclerview/widget/AsyncListUtil$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroidx/recyclerview/widget/TileList$Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:I

.field private asInterface:I

.field private extraCallback:I

.field private onMessageChannelReady:I

.field final onNavigationEvent:Landroid/util/SparseBooleanArray;

.field final synthetic onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListUtil;)V
    .locals 0

    .line 294
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method private ICustomTabsCallback(IIIZ)V
    .locals 3

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    if-eqz p4, :cond_0

    add-int v1, p2, p1

    sub-int/2addr v1, v0

    goto :goto_1

    :cond_0
    move v1, v0

    .line 360
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v2, v1, p3}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    .line 355
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final loadTile(II)V
    .locals 7

    .line 4401
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5392
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback:Landroidx/recyclerview/widget/TileList$Tile;

    if-eqz v0, :cond_1

    .line 5394
    iget-object v1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mNext:Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback:Landroidx/recyclerview/widget/TileList$Tile;

    goto :goto_0

    .line 5397
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/TileList$Tile;

    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mTClass:Ljava/lang/Class;

    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/TileList$Tile;-><init>(Ljava/lang/Class;I)V

    .line 373
    :goto_0
    iput p1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    .line 374
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onMessageChannelReady:I

    iget v2, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    .line 375
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    iget-object v1, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    iget v2, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    iget v3, v0, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    invoke-virtual {p1, v1, v2, v3}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->fillData([Ljava/lang/Object;II)V

    .line 5421
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->getMaxCachedTiles()I

    move-result p1

    .line 5422
    :goto_1
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, p1, :cond_5

    .line 5423
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 5424
    iget-object v3, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 5425
    iget v4, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->asInterface:I

    sub-int/2addr v4, v1

    .line 5426
    iget v5, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback$Stub:I

    sub-int v5, v3, v5

    if-lez v4, :cond_3

    if-ge v4, v5, :cond_2

    const/4 v6, 0x2

    if-ne p2, v6, :cond_3

    .line 6413
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 6414
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v3, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->extraCallback:I

    invoke-interface {v2, v3, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    :cond_3
    if-lez v5, :cond_5

    if-lt v4, v5, :cond_4

    if-ne p2, v2, :cond_5

    .line 7413
    :cond_4
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 7414
    iget-object v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v1, v1, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->extraCallback:I

    invoke-interface {v1, v2, v3}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    .line 8405
    :cond_5
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    iget p2, v0, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8406
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget p2, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->extraCallback:I

    invoke-interface {p1, p2, v0}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    return-void
.end method

.method public final recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    iget-object v1, p1, Landroidx/recyclerview/widget/TileList$Tile;->mItems:[Ljava/lang/Object;

    iget v2, p1, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->recycleData([Ljava/lang/Object;I)V

    .line 387
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback:Landroidx/recyclerview/widget/TileList$Tile;

    iput-object v0, p1, Landroidx/recyclerview/widget/TileList$Tile;->mNext:Landroidx/recyclerview/widget/TileList$Tile;

    .line 388
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback:Landroidx/recyclerview/widget/TileList$Tile;

    return-void
.end method

.method public final refresh(I)V
    .locals 2

    .line 308
    iput p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->extraCallback:I

    .line 309
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onNavigationEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 310
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mDataCallback:Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/AsyncListUtil$DataCallback;->refreshData()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onMessageChannelReady:I

    .line 311
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mMainThreadProxy:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->extraCallback:I

    iget v1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onMessageChannelReady:I

    invoke-interface {p1, v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    return-void
.end method

.method public final updateRange(IIIII)V
    .locals 1

    if-le p1, p2, :cond_0

    return-void

    .line 1350
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 2350
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    rem-int v0, p2, v0

    sub-int/2addr p2, v0

    .line 3350
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    rem-int v0, p3, v0

    sub-int/2addr p3, v0

    .line 329
    iput p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->asInterface:I

    .line 4350
    iget-object p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget p3, p3, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    rem-int p3, p4, p3

    sub-int/2addr p4, p3

    .line 330
    iput p4, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback$Stub:I

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    .line 339
    iget p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->asInterface:I

    invoke-direct {p0, p1, p2, p5, v0}, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback(IIIZ)V

    .line 340
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    add-int/2addr p2, p1

    iget p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback$Stub:I

    invoke-direct {p0, p2, p1, p5, p3}, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback(IIIZ)V

    return-void

    .line 343
    :cond_1
    invoke-direct {p0, p1, p4, p5, p3}, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback(IIIZ)V

    .line 344
    iget p2, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->asInterface:I

    iget-object p3, p0, Landroidx/recyclerview/widget/AsyncListUtil$4;->onPostMessage:Landroidx/recyclerview/widget/AsyncListUtil;

    iget p3, p3, Landroidx/recyclerview/widget/AsyncListUtil;->mTileSize:I

    sub-int/2addr p1, p3

    invoke-direct {p0, p2, p1, p5, v0}, Landroidx/recyclerview/widget/AsyncListUtil$4;->ICustomTabsCallback(IIIZ)V

    return-void
.end method
