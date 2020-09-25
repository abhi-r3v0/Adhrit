.class final Lo/forUnauthenticatedAccess$onPostMessage;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/forUnauthenticatedAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field final onNavigationEvent:Lo/forUnauthenticatedAccess;


# direct methods
.method constructor <init>(Lo/forUnauthenticatedAccess;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 550
    iput-object p1, p0, Lo/forUnauthenticatedAccess$onPostMessage;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 573
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "state"

    .line 574
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 577
    :cond_1
    iget-object v0, p0, Lo/forUnauthenticatedAccess$onPostMessage;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1170
    iget-object p2, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object v0, v0, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 578
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "connectivity"

    .line 579
    invoke-static {p1, p2}, Lo/saveUserOverwrite;->extraCallback(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 580
    iget-object p2, p0, Lo/forUnauthenticatedAccess$onPostMessage;->onNavigationEvent:Lo/forUnauthenticatedAccess;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    .line 2166
    iget-object v0, p2, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    iget-object p2, p2, Lo/forUnauthenticatedAccess;->asInterface:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void
.end method
