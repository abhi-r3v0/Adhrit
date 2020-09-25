.class final Lo/RecyclerView$ItemAnimator$ItemHolderInfo$2;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$ItemAnimator$ItemHolderInfo;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemHolderInfo;


# direct methods
.method constructor <init>(Lo/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo$2;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 16
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo$2;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 2016
    iget-object p1, p1, Lo/RecyclerView$ItemAnimator$ItemHolderInfo;->onNavigationEvent:Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 1041
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemHolderInfo$2;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v0}, Lo/RecyclerView$ItemAnimator$ItemHolderInfo$onMessageChannelReady;->ICustomTabsCallback(Lo/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 16
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
