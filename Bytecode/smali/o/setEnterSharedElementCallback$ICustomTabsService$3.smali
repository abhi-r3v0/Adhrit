.class final Lo/setEnterSharedElementCallback$ICustomTabsService$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setEnterSharedElementCallback$ICustomTabsService;
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
.field private synthetic ICustomTabsCallback:Lo/setEnterSharedElementCallback$ICustomTabsService;

.field private synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;


# direct methods
.method constructor <init>(Lo/setEnterSharedElementCallback$ICustomTabsService;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;)V
    .locals 0

    iput-object p1, p0, Lo/setEnterSharedElementCallback$ICustomTabsService$3;->ICustomTabsCallback:Lo/setEnterSharedElementCallback$ICustomTabsService;

    iput-object p2, p0, Lo/setEnterSharedElementCallback$ICustomTabsService$3;->onPostMessage:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 58
    iget-object v0, p0, Lo/setEnterSharedElementCallback$ICustomTabsService$3;->ICustomTabsCallback:Lo/setEnterSharedElementCallback$ICustomTabsService;

    iget-object v0, v0, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lo/setEnterSharedElementCallback$ICustomTabsService$3;->ICustomTabsCallback:Lo/setEnterSharedElementCallback$ICustomTabsService;

    iget-object v2, v2, Lo/setEnterSharedElementCallback$ICustomTabsService;->onPostMessage:Lo/setEnterSharedElementCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lo/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    new-instance v2, Lo/setPopupClipToScreenEnabled;

    .line 61
    iget-object v3, p0, Lo/setEnterSharedElementCallback$ICustomTabsService$3;->onPostMessage:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->getOrderId()Ljava/lang/String;

    move-result-object v5

    .line 62
    iget-object v3, p0, Lo/setEnterSharedElementCallback$ICustomTabsService$3;->onPostMessage:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->getRedirectUrl()Ljava/lang/String;

    move-result-object v6

    .line 64
    iget-object v3, p0, Lo/setEnterSharedElementCallback$ICustomTabsService$3;->onPostMessage:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;

    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitRegisterResponse;->getEndUrls()Ljava/util/List;

    move-result-object v8

    const-string v7, "1.0"

    const/4 v9, 0x0

    const/16 v10, 0x10

    move-object v4, v2

    .line 60
    invoke-direct/range {v4 .. v10}, Lo/setPopupClipToScreenEnabled;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZI)V

    check-cast v2, Landroid/os/Parcelable;

    const-string v3, "extraInfo"

    .line 59
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v2, 0x9c42

    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
