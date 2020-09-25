.class final Lo/setDefaultDragDirs$ICustomTabsService$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setDefaultDragDirs$ICustomTabsService;->run()V
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
.field private synthetic onMessageChannelReady:Lo/setDefaultDragDirs$ICustomTabsService;


# direct methods
.method constructor <init>(Lo/setDefaultDragDirs$ICustomTabsService;)V
    .locals 0

    iput-object p1, p0, Lo/setDefaultDragDirs$ICustomTabsService$1;->onMessageChannelReady:Lo/setDefaultDragDirs$ICustomTabsService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 51
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1097
    iget-object p1, p0, Lo/setDefaultDragDirs$ICustomTabsService$1;->onMessageChannelReady:Lo/setDefaultDragDirs$ICustomTabsService;

    iget-object p1, p1, Lo/setDefaultDragDirs$ICustomTabsService;->onNavigationEvent:Lo/setDefaultDragDirs;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/cachePreLayoutSpanMapping;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/cachePreLayoutSpanMapping;

    if-eqz p1, :cond_1

    .line 2006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string/jumbo v1, "stash_okyc_otp_click_failure"

    invoke-interface {p1, v1, v0}, Lo/cachePreLayoutSpanMapping;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 1098
    :cond_1
    iget-object p1, p0, Lo/setDefaultDragDirs$ICustomTabsService$1;->onMessageChannelReady:Lo/setDefaultDragDirs$ICustomTabsService;

    iget-object p1, p1, Lo/setDefaultDragDirs$ICustomTabsService;->onNavigationEvent:Lo/setDefaultDragDirs;

    .line 2054
    iget-object p1, p1, Lo/setDefaultDragDirs;->onMessageChannelReady:Landroid/widget/EditText;

    const-string v0, "otp"

    if-nez p1, :cond_2

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1098
    :cond_2
    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/isCurrent$onMessageChannelReady;->onMessageChannelReady(Landroid/view/View;)V

    .line 1099
    iget-object p1, p0, Lo/setDefaultDragDirs$ICustomTabsService$1;->onMessageChannelReady:Lo/setDefaultDragDirs$ICustomTabsService;

    iget-object p1, p1, Lo/setDefaultDragDirs$ICustomTabsService;->onNavigationEvent:Lo/setDefaultDragDirs;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v1, Lo/getDragDirs;

    invoke-direct {v1}, Lo/getDragDirs;-><init>()V

    invoke-virtual {v1, p1, v0}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 51
    :cond_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
