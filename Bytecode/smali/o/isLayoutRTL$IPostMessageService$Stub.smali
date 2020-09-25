.class public final Lo/isLayoutRTL$IPostMessageService$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/collectAdjacentPrefetchPositions$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutRTL;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/LifestyleFragment$pageLoaded$1",
        "Lcom/dreamplug/fabrik/ui/lifestyle/cards/LifestyleCardsAdapter$PageLoaded;",
        "onPageLoaded",
        "",
        "extraPageDetails",
        "Lcom/dreamplug/fabrik/ui/lifestyle/ExtraPageDetails;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/isLayoutRTL;


# direct methods
.method constructor <init>(Lo/isLayoutRTL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 529
    iput-object p1, p0, Lo/isLayoutRTL$IPostMessageService$Stub;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/getStackFromEnd;)V
    .locals 4

    const-string v0, "extraPageDetails"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lo/isLayoutRTL$IPostMessageService$Stub;->ICustomTabsCallback:Lo/isLayoutRTL;

    invoke-static {v0}, Lo/isLayoutRTL;->extraCommand(Lo/isLayoutRTL;)Lo/setSmoothScrollbarEnabled;

    move-result-object v0

    .line 1122
    iget v1, p1, Lo/getStackFromEnd;->extraCallback:I

    .line 2122
    iget p1, p1, Lo/getStackFromEnd;->ICustomTabsCallback:I

    .line 2235
    rem-int/lit8 p1, p1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ge p1, v3, :cond_0

    if-le v1, v2, :cond_2

    sub-int/2addr v1, v2

    .line 2239
    invoke-virtual {v0, v1}, Lo/setSmoothScrollbarEnabled;->onPostMessage(I)V

    return-void

    :cond_0
    const/4 v3, 0x2

    if-le p1, v3, :cond_2

    .line 2242
    iget-object p1, v0, Lo/setSmoothScrollbarEnabled;->onRelationshipValidationResult:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    if-eqz p1, :cond_2

    .line 3026
    iget-object p1, p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

    if-eqz p1, :cond_1

    .line 4019
    iget-boolean p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onNavigationEvent:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v2, :cond_2

    add-int/2addr v1, v2

    .line 2243
    invoke-virtual {v0, v1}, Lo/setSmoothScrollbarEnabled;->onPostMessage(I)V

    nop

    :cond_2
    return-void
.end method
