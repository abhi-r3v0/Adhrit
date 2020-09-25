.class final Lo/setDefaultDragDirs$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setDefaultDragDirs;-><init>()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/setDefaultDragDirs;


# direct methods
.method constructor <init>(Lo/setDefaultDragDirs;)V
    .locals 0

    iput-object p1, p0, Lo/setDefaultDragDirs$ICustomTabsService;->onNavigationEvent:Lo/setDefaultDragDirs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lo/setDefaultDragDirs$ICustomTabsService;->onNavigationEvent:Lo/setDefaultDragDirs;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->secondaryButton:I

    invoke-virtual {v0, v1}, Lo/setDefaultDragDirs;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    iget-object v1, p0, Lo/setDefaultDragDirs$ICustomTabsService;->onNavigationEvent:Lo/setDefaultDragDirs;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060096

    invoke-static {v1, v2}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    iget-object v0, p0, Lo/setDefaultDragDirs$ICustomTabsService;->onNavigationEvent:Lo/setDefaultDragDirs;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->secondaryButton:I

    invoke-virtual {v0, v1}, Lo/setDefaultDragDirs;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const v1, 0x7f080134

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    iget-object v0, p0, Lo/setDefaultDragDirs$ICustomTabsService;->onNavigationEvent:Lo/setDefaultDragDirs;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->secondaryButton:I

    invoke-virtual {v0, v1}, Lo/setDefaultDragDirs;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string/jumbo v1, "secondaryButton"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    new-instance v1, Lo/setDefaultDragDirs$ICustomTabsService$1;

    invoke-direct {v1, p0}, Lo/setDefaultDragDirs$ICustomTabsService$1;-><init>(Lo/setDefaultDragDirs$ICustomTabsService;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-static {v0, v1}, Lo/extraCallback;->onNavigationEvent(Landroid/view/View;Lo/onDisconnectSetValue;)V

    return-void
.end method
