.class public final Lo/setPriority;
.super Lo/getCreatedAt;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lo/getCreatedAt;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {}, Lo/isFabrikEnabled;->onPostMessage()Lo/isFabrikEnabled$onMessageChannelReady;

    move-result-object v0

    new-instance v1, Lo/setCard_logo_url;

    invoke-direct {v1, p0, p1}, Lo/setCard_logo_url;-><init>(Lo/setPriority;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v1}, Lo/isFabrikEnabled$onMessageChannelReady;->extraCallback(Lo/Transaction$$Parcelable;)Lo/isFabrikEnabled$onMessageChannelReady;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Lo/setAmountRefunded;

    sget-object v1, Lo/getInformation;->onMessageChannelReady:Lo/setAmountRefunded;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 14
    invoke-virtual {p1, v0}, Lo/isFabrikEnabled$onMessageChannelReady;->onNavigationEvent([Lo/setAmountRefunded;)Lo/isFabrikEnabled$onMessageChannelReady;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lo/isFabrikEnabled$onMessageChannelReady;->onPostMessage()Lo/isFabrikEnabled;

    move-result-object p1

    .line 16
    invoke-virtual {p0, p1}, Lo/setPriority;->doWrite(Lo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
