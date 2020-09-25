.class final Lo/isMeasureWithLargestChildEnabled$4;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isMeasureWithLargestChildEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/isMeasureWithLargestChildEnabled;


# direct methods
.method constructor <init>(Lo/isMeasureWithLargestChildEnabled;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/isMeasureWithLargestChildEnabled$4;->extraCallback:Lo/isMeasureWithLargestChildEnabled;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 34
    iget-object p2, p0, Lo/isMeasureWithLargestChildEnabled$4;->extraCallback:Lo/isMeasureWithLargestChildEnabled;

    iget-boolean p2, p2, Lo/isMeasureWithLargestChildEnabled;->ICustomTabsCallback:Z

    .line 35
    iget-object v0, p0, Lo/isMeasureWithLargestChildEnabled$4;->extraCallback:Lo/isMeasureWithLargestChildEnabled;

    invoke-static {p1}, Lo/isMeasureWithLargestChildEnabled;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, v0, Lo/isMeasureWithLargestChildEnabled;->ICustomTabsCallback:Z

    .line 36
    iget-object p1, p0, Lo/isMeasureWithLargestChildEnabled$4;->extraCallback:Lo/isMeasureWithLargestChildEnabled;

    iget-boolean p1, p1, Lo/isMeasureWithLargestChildEnabled;->ICustomTabsCallback:Z

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    const-string p2, "ConnectivityMonitor"

    .line 37
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "connectivity changed, isConnected: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/isMeasureWithLargestChildEnabled$4;->extraCallback:Lo/isMeasureWithLargestChildEnabled;

    iget-boolean v0, v0, Lo/isMeasureWithLargestChildEnabled;->ICustomTabsCallback:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iget-object p1, p0, Lo/isMeasureWithLargestChildEnabled$4;->extraCallback:Lo/isMeasureWithLargestChildEnabled;

    iget-object p1, p1, Lo/isMeasureWithLargestChildEnabled;->extraCallback:Lo/getBaselineAlignedChildIndex$onMessageChannelReady;

    iget-object p2, p0, Lo/isMeasureWithLargestChildEnabled$4;->extraCallback:Lo/isMeasureWithLargestChildEnabled;

    iget-boolean p2, p2, Lo/isMeasureWithLargestChildEnabled;->ICustomTabsCallback:Z

    invoke-interface {p1, p2}, Lo/getBaselineAlignedChildIndex$onMessageChannelReady;->onMessageChannelReady(Z)V

    :cond_1
    return-void
.end method
