.class public final Lo/setQueueTitle;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getDrawable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private extraCallback:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1018
    iput-object p1, p0, Lo/setQueueTitle;->extraCallback:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 5

    .line 1044
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lo/setQueueTitle;->onNavigationEvent:I

    iget-object v4, p0, Lo/setQueueTitle;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lo/setQueueTitle;->onPostMessage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget v3, p0, Lo/setQueueTitle;->ICustomTabsCallback:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "reattached items = %d : requested items = %d recycledItems = %d"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fillWithLayouter"

    .line 1043
    invoke-static {v2, v0, v1}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public final extraCallback()V
    .locals 1

    .line 1050
    iget-object v0, p0, Lo/setQueueTitle;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Lo/setQueueTitle;->onMessageChannelReady:I

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 1033
    iget v0, p0, Lo/setQueueTitle;->onPostMessage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/setQueueTitle;->onPostMessage:I

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 3

    const/4 v0, 0x0

    .line 1023
    iput v0, p0, Lo/setQueueTitle;->onPostMessage:I

    .line 1024
    iput v0, p0, Lo/setQueueTitle;->ICustomTabsCallback:I

    .line 1025
    iget-object v0, p0, Lo/setQueueTitle;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iput v0, p0, Lo/setQueueTitle;->onNavigationEvent:I

    .line 1027
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "start position = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "fillWithLayouter"

    invoke-static {v1, p1, v0}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1028
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "cached items = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lo/setQueueTitle;->onNavigationEvent:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recycled count = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/setQueueTitle;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fillWithLayouter"

    const/4 v2, 0x3

    invoke-static {v1, v0, v2}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    return-void
.end method

.method public final onNavigationEvent(I)V
    .locals 2

    .line 1055
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " recycle position ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/setQueueTitle;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fillWithLayouter"

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1056
    iget p1, p0, Lo/setQueueTitle;->onMessageChannelReady:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/setQueueTitle;->onMessageChannelReady:I

    return-void
.end method

.method public final onNavigationEvent(Lo/dispatchPopulateAccessibilityEvent;)V
    .locals 4

    .line 2043
    iget-object v0, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "anchorPos "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3035
    iget-object v1, p1, Lo/dispatchPopulateAccessibilityEvent;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 1067
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "fill"

    invoke-static {v2, v0, v1}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "anchorTop "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3043
    iget-object p1, p1, Lo/dispatchPopulateAccessibilityEvent;->onNavigationEvent:Landroid/graphics/Rect;

    .line 1068
    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Lo/setCheckMarkDrawable;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;I)I

    :cond_0
    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 1038
    iget v0, p0, Lo/setQueueTitle;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/setQueueTitle;->ICustomTabsCallback:I

    return-void
.end method
