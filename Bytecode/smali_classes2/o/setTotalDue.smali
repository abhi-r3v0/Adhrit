.class public abstract Lo/setTotalDue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/Transaction;Landroid/content/Intent;I)Lo/setTotalDue;
    .locals 1

    .line 4
    new-instance v0, Lo/getRewardTemplateType;

    invoke-direct {v0, p1, p0, p2}, Lo/getRewardTemplateType;-><init>(Landroid/content/Intent;Lo/Transaction;I)V

    return-object v0
.end method

.method public static onMessageChannelReady(Landroid/app/Activity;Landroid/content/Intent;I)Lo/setTotalDue;
    .locals 1

    .line 2
    new-instance v0, Lo/getCount;

    invoke-direct {v0, p1, p0, p2}, Lo/getCount;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    return-object v0
.end method

.method public static onNavigationEvent(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Lo/setTotalDue;
    .locals 1

    .line 3
    new-instance v0, Lo/getDisplayRewardsFarm;

    invoke-direct {v0, p1, p0, p2}, Lo/getDisplayRewardsFarm;-><init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method


# virtual methods
.method protected abstract extraCallback()V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 5
    :try_start_0
    invoke-virtual {p0}, Lo/setTotalDue;->extraCallback()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    const-string v0, "DialogRedirect"

    const-string v1, "Failed to start resolution intent"

    .line 9
    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 12
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw p2
.end method
