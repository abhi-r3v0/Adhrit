.class final Lo/getDecoratedBottom$ICustomTabsService;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getDecoratedBottom;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/getDecoratedBottom;


# direct methods
.method constructor <init>(Lo/getDecoratedBottom;)V
    .locals 0

    iput-object p1, p0, Lo/getDecoratedBottom$ICustomTabsService;->onNavigationEvent:Lo/getDecoratedBottom;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 48
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1307
    iget-object p1, p0, Lo/getDecoratedBottom$ICustomTabsService;->onNavigationEvent:Lo/getDecoratedBottom;

    invoke-static {p1}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object v0

    .line 2080
    iget-object v0, v0, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v0, :cond_0

    .line 1307
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-static {p1, v0}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "cta_method"

    const-string v1, "click"

    .line 1308
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "reward_tnc_screen_load"

    .line 1307
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1310
    sget-object p1, Lo/computeScrollOffset;->extraCallback:Lo/computeScrollOffset$ICustomTabsCallback;

    iget-object p1, p0, Lo/getDecoratedBottom$ICustomTabsService;->onNavigationEvent:Lo/getDecoratedBottom;

    invoke-static {p1}, Lo/getDecoratedBottom;->extraCallback(Lo/getDecoratedBottom;)Lo/updateLayoutState;

    move-result-object p1

    .line 3080
    iget-object p1, p1, Lo/updateLayoutState;->mayLaunchUrl:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 3111
    new-instance v0, Lo/computeScrollOffset;

    invoke-direct {v0}, Lo/computeScrollOffset;-><init>()V

    .line 4029
    iput-object p1, v0, Lo/computeScrollOffset;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 1311
    iget-object p1, p0, Lo/getDecoratedBottom$ICustomTabsService;->onNavigationEvent:Lo/getDecoratedBottom;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v1, "MachinePullTncDialog"

    invoke-virtual {v0, p1, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 48
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
