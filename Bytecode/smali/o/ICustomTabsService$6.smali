.class Lo/ICustomTabsService$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ICustomTabsService;->onNavigationEvent(Lo/INotificationSideChannel$ICustomTabsCallback;)Lo/INotificationSideChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/ICustomTabsService;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1282
    iget-object v0, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object v0, v0, Lo/ICustomTabsService;->asInterface:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object v1, v1, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1285
    iget-object v0, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    invoke-virtual {v0}, Lo/ICustomTabsService;->postMessage()V

    .line 1287
    iget-object v0, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    invoke-virtual {v0}, Lo/ICustomTabsService;->extraCommand()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 1288
    iget-object v0, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object v0, v0, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1289
    iget-object v0, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object v2, v0, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v2}, Lo/unregisterCallbackListener;->newSession(Landroid/view/View;)Lo/getLaunchPendingIntent;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/getLaunchPendingIntent;->onNavigationEvent(F)Lo/getLaunchPendingIntent;

    move-result-object v1

    iput-object v1, v0, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    .line 1290
    iget-object v0, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object v0, v0, Lo/ICustomTabsService;->warmup:Lo/getLaunchPendingIntent;

    new-instance v1, Lo/ICustomTabsService$6$1;

    invoke-direct {v1, p0}, Lo/ICustomTabsService$6$1;-><init>(Lo/ICustomTabsService$6;)V

    invoke-virtual {v0, v1}, Lo/getLaunchPendingIntent;->onPostMessage(Lo/setVolumeTo;)Lo/getLaunchPendingIntent;

    return-void

    .line 1304
    :cond_0
    iget-object v0, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object v0, v0, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1305
    iget-object v0, p0, Lo/ICustomTabsService$6;->onPostMessage:Lo/ICustomTabsService;

    iget-object v0, v0, Lo/ICustomTabsService;->ICustomTabsCallback$Stub:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
