.class public final Lo/ProfileResponse;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field private extraCallback:Landroid/content/Context;

.field private final onNavigationEvent:Lo/getFirstName;


# direct methods
.method public constructor <init>(Lo/getFirstName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lo/ProfileResponse;->onNavigationEvent:Lo/getFirstName;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lo/ProfileResponse;->extraCallback:Landroid/content/Context;

    return-void
.end method

.method public final declared-synchronized onPostMessage()V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lo/ProfileResponse;->extraCallback:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lo/ProfileResponse;->extraCallback:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lo/ProfileResponse;->extraCallback:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "com.google.android.gms"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lo/ProfileResponse;->onNavigationEvent:Lo/getFirstName;

    invoke-virtual {p1}, Lo/getFirstName;->onPostMessage()V

    .line 16
    invoke-virtual {p0}, Lo/ProfileResponse;->onPostMessage()V

    :cond_1
    return-void
.end method
