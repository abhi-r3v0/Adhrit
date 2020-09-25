.class final Lo/RecyclerView$SavedState$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$SavedState;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "TR;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u0001H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "E",
        "it",
        "invoke",
        "(Ljava/lang/Object;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/RecyclerView$SavedState;


# direct methods
.method constructor <init>(Lo/RecyclerView$SavedState;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$SavedState$ICustomTabsCallback;->extraCallback:Lo/RecyclerView$SavedState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_2

    .line 1050
    iget-object v0, p0, Lo/RecyclerView$SavedState$ICustomTabsCallback;->extraCallback:Lo/RecyclerView$SavedState;

    .line 2027
    iget-object v0, v0, Lo/RecyclerView$SavedState;->onPostMessage:Lo/addViewHolderToRecycledViewPool;

    if-nez v0, :cond_0

    .line 1050
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 2119
    :cond_0
    iget-object v0, v0, Lo/addViewHolderToRecycledViewPool;->extraCallback:Lo/fromQueryDefinition;

    invoke-interface {v0}, Lo/fromQueryDefinition;->onNavigationEvent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1051
    iget-object v0, p0, Lo/RecyclerView$SavedState$ICustomTabsCallback;->extraCallback:Lo/RecyclerView$SavedState;

    .line 3027
    iget-object v0, v0, Lo/RecyclerView$SavedState;->onPostMessage:Lo/addViewHolderToRecycledViewPool;

    if-nez v0, :cond_1

    .line 1051
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 3100
    :cond_1
    new-instance v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    invoke-direct {v1, p1}, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;-><init>(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 4010
    iput-boolean p1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->ICustomTabsCallback:Z

    .line 3100
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition;

    invoke-virtual {v0, v1}, Lo/addViewHolderToRecycledViewPool;->onMessageChannelReady(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V

    .line 18
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
