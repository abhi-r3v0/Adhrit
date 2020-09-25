.class final Landroidx/recyclerview/widget/AsyncListUtil$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


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
        "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/AsyncListUtil;)V
    .locals 0

    .line 212
    iput-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    .line 4289
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 237
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {p1, p2}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    return-void

    .line 240
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    .line 5064
    iget-object v0, p1, Landroidx/recyclerview/widget/TileList;->ICustomTabsCallback:Landroid/util/SparseArray;

    iget v2, p2, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 5066
    iget-object p1, p1, Landroidx/recyclerview/widget/TileList;->ICustomTabsCallback:Landroid/util/SparseArray;

    iget v0, p2, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x0

    goto :goto_1

    .line 5069
    :cond_2
    iget-object v2, p1, Landroidx/recyclerview/widget/TileList;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/TileList$Tile;

    .line 5070
    iget-object v3, p1, Landroidx/recyclerview/widget/TileList;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, p2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 5071
    iget-object v0, p1, Landroidx/recyclerview/widget/TileList;->onPostMessage:Landroidx/recyclerview/widget/TileList$Tile;

    if-ne v0, v2, :cond_3

    .line 5072
    iput-object p2, p1, Landroidx/recyclerview/widget/TileList;->onPostMessage:Landroidx/recyclerview/widget/TileList$Tile;

    :cond_3
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "duplicate tile @"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AsyncListUtil"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    .line 249
    :cond_4
    iget p1, p2, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    iget v0, p2, Landroidx/recyclerview/widget/TileList$Tile;->mItemCount:I

    add-int/2addr p1, v0

    .line 251
    :goto_2
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 252
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 253
    iget v2, p2, Landroidx/recyclerview/widget/TileList$Tile;->mStartPosition:I

    if-gt v2, v0, :cond_5

    if-ge v0, p1, :cond_5

    .line 254
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mMissingPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 255
    iget-object v2, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v2, v2, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->onItemLoaded(I)V

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final removeTile(II)V
    .locals 2

    .line 5289
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 267
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    .line 6078
    iget-object v0, p1, Landroidx/recyclerview/widget/TileList;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/TileList$Tile;

    .line 6079
    iget-object v1, p1, Landroidx/recyclerview/widget/TileList;->onPostMessage:Landroidx/recyclerview/widget/TileList$Tile;

    if-ne v1, v0, :cond_2

    const/4 v1, 0x0

    .line 6080
    iput-object v1, p1, Landroidx/recyclerview/widget/TileList;->onPostMessage:Landroidx/recyclerview/widget/TileList$Tile;

    .line 6082
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/TileList;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->delete(I)V

    if-nez v0, :cond_3

    .line 269
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "tile not found @"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AsyncListUtil"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_3
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    return-void
.end method

.method public final updateItemCount(II)V
    .locals 2

    .line 1289
    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    .line 221
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iput p2, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mItemCount:I

    .line 222
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mViewCallback:Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;->onDataRefresh()V

    .line 223
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget p2, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mRequestedGeneration:I

    iput p2, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mDisplayedGeneration:I

    const/4 p1, 0x0

    .line 2282
    :goto_1
    iget-object p2, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p2, p2, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    .line 3052
    iget-object p2, p2, Landroidx/recyclerview/widget/TileList;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 2283
    iget-object p2, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p2, p2, Landroidx/recyclerview/widget/AsyncListUtil;->mBackgroundProxy:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget-object v0, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object v0, v0, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    .line 3060
    iget-object v0, v0, Landroidx/recyclerview/widget/TileList;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/TileList$Tile;

    .line 2283
    invoke-interface {p2, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 2285
    :cond_2
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iget-object p1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mTileList:Landroidx/recyclerview/widget/TileList;

    .line 4056
    iget-object p1, p1, Landroidx/recyclerview/widget/TileList;->ICustomTabsCallback:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 226
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    iput-boolean v1, p1, Landroidx/recyclerview/widget/AsyncListUtil;->mAllowScrollHints:Z

    .line 228
    iget-object p1, p0, Landroidx/recyclerview/widget/AsyncListUtil$1;->onNavigationEvent:Landroidx/recyclerview/widget/AsyncListUtil;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/AsyncListUtil;->updateRange()V

    return-void
.end method
