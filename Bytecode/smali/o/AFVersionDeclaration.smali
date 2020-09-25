.class public Lo/AFVersionDeclaration;
.super Lcom/facebook/imagepipeline/memory/BasePool;
.source ""

# interfaces
.implements Lo/getTranslateY;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/imagepipeline/memory/BasePool<",
        "[B>;",
        "Lo/getTranslateY;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:[I


# direct methods
.method public constructor <init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/memory/BasePool;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;)V

    .line 39
    iget-object p1, p2, Lo/onAppOpenAttributionNative;->onPostMessage:Landroid/util/SparseIntArray;

    .line 40
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lo/AFVersionDeclaration;->ICustomTabsCallback:[I

    const/4 p2, 0x0

    .line 41
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 42
    iget-object p3, p0, Lo/AFVersionDeclaration;->ICustomTabsCallback:[I

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    aput v0, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, [B

    if-eqz p1, :cond_0

    .line 1127
    array-length p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 1215
    throw p1
.end method

.method public final onMessageChannelReady(I)I
    .locals 0

    return p1
.end method

.method public final bridge synthetic onNavigationEvent(I)Ljava/lang/Object;
    .locals 0

    .line 3064
    new-array p1, p1, [B

    return-object p1
.end method

.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 0

    .line 23
    check-cast p1, [B

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2215
    throw p1
.end method

.method public final onPostMessage(I)I
    .locals 4

    if-lez p1, :cond_2

    .line 107
    iget-object v0, p0, Lo/AFVersionDeclaration;->ICustomTabsCallback:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    if-lt v3, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p1

    .line 103
    :cond_2
    new-instance v0, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/imagepipeline/memory/BasePool$InvalidSizeException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
