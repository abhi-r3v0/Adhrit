.class final Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/onDetach$getDefaultImpl;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SourceExtra;",
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
.field private synthetic ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# direct methods
.method constructor <init>(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1052
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/onDetach$getDefaultImpl;

    return-object v0
.end method
