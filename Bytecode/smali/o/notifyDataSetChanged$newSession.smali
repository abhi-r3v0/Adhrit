.class public final Lo/notifyDataSetChanged$newSession;
.super Lo/requestExtraBinder$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
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
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/MainActivity$onCreate$14",
        "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;",
        "onFragmentViewCreated",
        "",
        "fm",
        "Landroidx/fragment/app/FragmentManager;",
        "f",
        "Landroidx/fragment/app/Fragment;",
        "v",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private synthetic onPostMessage:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 346
    iput-object p1, p0, Lo/notifyDataSetChanged$newSession;->onPostMessage:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Lo/requestExtraBinder$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "f"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Lo/requestExtraBinder$onNavigationEvent;->onPostMessage(Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 349
    iget-object p1, p0, Lo/notifyDataSetChanged$newSession;->onPostMessage:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->onRelationshipValidationResult(Lo/notifyDataSetChanged;)Lo/RecyclerView$ChildDrawingOrderCallback;

    move-result-object p1

    .line 1120
    iget-object p2, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    const/4 p3, 0x1

    const p4, 0x800005

    invoke-virtual {p2, p3, p4}, Lo/isSessionReady;->setDrawerLockMode(II)V

    .line 1121
    iget-object p1, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    invoke-virtual {p1}, Lo/isSessionReady;->onNavigationEvent()V

    return-void
.end method
