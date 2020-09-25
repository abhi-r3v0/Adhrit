.class final Lo/WinLuckyNumberCard;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/WinItemJsonAdapter;


# direct methods
.method constructor <init>(Lo/WinItemJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/WinLuckyNumberCard;->onMessageChannelReady:Lo/WinItemJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/WinLuckyNumberCard;->onMessageChannelReady:Lo/WinItemJsonAdapter;

    iget-object v0, v0, Lo/WinItemJsonAdapter;->onNavigationEvent:Lo/WinFarmResponseJsonAdapter;

    invoke-static {v0}, Lo/WinFarmResponseJsonAdapter;->onMessageChannelReady(Lo/WinFarmResponseJsonAdapter;)Lo/PendingUsers;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/WinLuckyNumberCard;->onMessageChannelReady:Lo/WinItemJsonAdapter;

    iget-object v0, v0, Lo/WinItemJsonAdapter;->onNavigationEvent:Lo/WinFarmResponseJsonAdapter;

    invoke-static {v0}, Lo/WinFarmResponseJsonAdapter;->onMessageChannelReady(Lo/WinFarmResponseJsonAdapter;)Lo/PendingUsers;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/PendingUsers;->onNavigationEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdFailedToLoad event."

    invoke-static {v1, v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
