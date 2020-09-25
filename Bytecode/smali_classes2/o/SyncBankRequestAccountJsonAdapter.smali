.class final Lo/SyncBankRequestAccountJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/PinAccountRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lo/Bucketizer;

.field private final synthetic onPostMessage:Lo/PinAccountRequestJsonAdapter;


# direct methods
.method constructor <init>(Lo/PinAccountRequestJsonAdapter;Lo/Bucketizer;)V
    .locals 0

    iput-object p1, p0, Lo/SyncBankRequestAccountJsonAdapter;->onPostMessage:Lo/PinAccountRequestJsonAdapter;

    iput-object p2, p0, Lo/SyncBankRequestAccountJsonAdapter;->onMessageChannelReady:Lo/Bucketizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final extraCallback()Lo/PinAccountRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lo/SyncBankRequestAccountJsonAdapter;->onPostMessage:Lo/PinAccountRequestJsonAdapter;

    invoke-static {v0}, Lo/PinAccountRequestJsonAdapter;->extraCallback(Lo/PinAccountRequestJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/SyncBankRequestAccountJsonAdapter;->onPostMessage:Lo/PinAccountRequestJsonAdapter;

    invoke-static {v1}, Lo/PinAccountRequestJsonAdapter;->ICustomTabsCallback(Lo/PinAccountRequestJsonAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lo/SyncBankRequestAccountJsonAdapter;->onMessageChannelReady:Lo/Bucketizer;

    iget-object v1, p0, Lo/SyncBankRequestAccountJsonAdapter;->onPostMessage:Lo/PinAccountRequestJsonAdapter;

    invoke-static {v1}, Lo/PinAccountRequestJsonAdapter;->onNavigationEvent(Lo/PinAccountRequestJsonAdapter;)J

    move-result-wide v1

    iget-object v3, p0, Lo/SyncBankRequestAccountJsonAdapter;->onPostMessage:Lo/PinAccountRequestJsonAdapter;

    invoke-static {v3}, Lo/PinAccountRequestJsonAdapter;->onPostMessage(Lo/PinAccountRequestJsonAdapter;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/Bucketizer;->onNavigationEvent(JJ)Lo/PinAccountRequest;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lo/SyncBankRequestAccountJsonAdapter;->extraCallback()Lo/PinAccountRequest;

    move-result-object v0

    return-object v0
.end method
