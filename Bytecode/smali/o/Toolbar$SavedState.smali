.class public final Lo/Toolbar$SavedState;
.super Lo/asBinder;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0012\u0010\u000b\u001a\u00020\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/blocker/maintenance/UnderMaintenanceActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "underMaintenanceFragment",
        "Lcom/dreamplug/androidapp/ui/blocker/maintenance/UnderMaintenanceFragment;",
        "getUnderMaintenanceFragment",
        "()Lcom/dreamplug/androidapp/ui/blocker/maintenance/UnderMaintenanceFragment;",
        "setUnderMaintenanceFragment",
        "(Lcom/dreamplug/androidapp/ui/blocker/maintenance/UnderMaintenanceFragment;)V",
        "onBackPressed",
        "",
        "onCreate",
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
.field private onNavigationEvent:Lo/ToolbarWidgetWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lo/asBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 2

    .line 17
    iget-object v0, p0, Lo/Toolbar$SavedState;->onNavigationEvent:Lo/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    const-string/jumbo v1, "underMaintenanceFragment"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lo/ToolbarWidgetWrapper;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 19
    invoke-super {p0}, Lo/asBinder;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 11
    invoke-super {p0, p1}, Lo/asBinder;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0024

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 13
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const v0, 0x7f0b095a

    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lo/ToolbarWidgetWrapper;

    iput-object p1, p0, Lo/Toolbar$SavedState;->onNavigationEvent:Lo/ToolbarWidgetWrapper;

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.androidapp.ui.blocker.maintenance.UnderMaintenanceFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
