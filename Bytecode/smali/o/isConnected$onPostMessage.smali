.class Lo/isConnected$onPostMessage;
.super Lo/IMediaControllerCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isConnected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field final extraCallback:Landroid/view/ActionProvider;

.field final synthetic onMessageChannelReady:Lo/isConnected;


# direct methods
.method constructor <init>(Lo/isConnected;Landroid/content/Context;Landroid/view/ActionProvider;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lo/isConnected$onPostMessage;->onMessageChannelReady:Lo/isConnected;

    .line 433
    invoke-direct {p0, p2}, Lo/IMediaControllerCallback;-><init>(Landroid/content/Context;)V

    .line 434
    iput-object p3, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 1

    .line 439
    iget-object v0, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .line 444
    iget-object v0, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 2

    .line 454
    iget-object v0, p0, Lo/isConnected$onPostMessage;->extraCallback:Landroid/view/ActionProvider;

    iget-object v1, p0, Lo/isConnected$onPostMessage;->onMessageChannelReady:Lo/isConnected;

    invoke-virtual {v1, p1}, Lo/compareTo;->onNavigationEvent(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method
