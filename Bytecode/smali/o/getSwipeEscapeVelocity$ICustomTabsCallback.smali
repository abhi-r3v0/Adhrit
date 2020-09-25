.class final Lo/getSwipeEscapeVelocity$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSwipeEscapeVelocity;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic onPostMessage:Lo/getSwipeEscapeVelocity;


# direct methods
.method constructor <init>(Lo/getSwipeEscapeVelocity;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/getSwipeEscapeVelocity$ICustomTabsCallback;->onPostMessage:Lo/getSwipeEscapeVelocity;

    iput-object p2, p0, Lo/getSwipeEscapeVelocity$ICustomTabsCallback;->extraCallback:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 p1, 0x4

    new-array v0, p1, [Lo/addWrite;

    .line 63
    iget-object v1, p0, Lo/getSwipeEscapeVelocity$ICustomTabsCallback;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v1, Lo/postDispatchSwipe;

    .line 1030
    iget-boolean v1, v1, Lo/postDispatchSwipe;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_0

    const-string v1, "custom"

    goto :goto_0

    :cond_0
    const-string v1, "default"

    .line 1043
    :goto_0
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "source"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 64
    iget-object v2, p0, Lo/getSwipeEscapeVelocity$ICustomTabsCallback;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lo/postDispatchSwipe;

    .line 2029
    iget-object v2, v2, Lo/postDispatchSwipe;->onMessageChannelReady:Ljava/lang/String;

    .line 2043
    new-instance v3, Lo/addWrite;

    const-string v4, "emi_tenure"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x2

    .line 65
    iget-object v2, p0, Lo/getSwipeEscapeVelocity$ICustomTabsCallback;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lo/postDispatchSwipe;

    .line 3030
    iget-object v2, v2, Lo/postDispatchSwipe;->asBinder:Ljava/lang/Boolean;

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string v4, "is_recommended"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 66
    iget-object v2, p0, Lo/getSwipeEscapeVelocity$ICustomTabsCallback;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lo/postDispatchSwipe;

    .line 4029
    iget-object v2, v2, Lo/postDispatchSwipe;->onNavigationEvent:Ljava/lang/String;

    .line 4043
    new-instance v3, Lo/addWrite;

    const-string v4, "emi_amount"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v1

    const-string v1, "pairs"

    .line 62
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string/jumbo p1, "stash_tenure_screen_select_tenure_card"

    .line 62
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 68
    iget-object p1, p0, Lo/getSwipeEscapeVelocity$ICustomTabsCallback;->onPostMessage:Lo/getSwipeEscapeVelocity;

    const-string/jumbo v0, "tenure_select"

    invoke-virtual {p1, v0}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method
