.class final Lo/getChildPosition$IPostMessageService$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildPosition$IPostMessageService;->extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachineFragment$setUiState$6$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getChildPosition$IPostMessageService;

.field private synthetic extraCallback:I


# direct methods
.method constructor <init>(Lo/getChildPosition$IPostMessageService;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$IPostMessageService$1;->ICustomTabsCallback:Lo/getChildPosition$IPostMessageService;

    const p1, 0x147ae14

    iput p1, p0, Lo/getChildPosition$IPostMessageService$1;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 359
    iget-object v0, p0, Lo/getChildPosition$IPostMessageService$1;->ICustomTabsCallback:Lo/getChildPosition$IPostMessageService;

    iget-object v0, v0, Lo/getChildPosition$IPostMessageService;->onNavigationEvent:Lo/getChildPosition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->winnersRecyclerView:I

    invoke-virtual {v0, v1}, Lo/getChildPosition;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/findViewHolderForLayoutPosition;

    iget v1, p0, Lo/getChildPosition$IPostMessageService$1;->extraCallback:I

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v2, Landroid/view/animation/Interpolator;

    iget v3, p0, Lo/getChildPosition$IPostMessageService$1;->extraCallback:I

    mul-int/lit8 v3, v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method
