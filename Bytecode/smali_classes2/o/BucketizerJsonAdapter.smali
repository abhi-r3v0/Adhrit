.class final Lo/BucketizerJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/Bucketizer;

.field private final synthetic onMessageChannelReady:Lo/TabConfigResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/Bucketizer;Lo/TabConfigResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    iput-object p2, p0, Lo/BucketizerJsonAdapter;->onMessageChannelReady:Lo/TabConfigResponseJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    invoke-static {v0}, Lo/Bucketizer;->onPostMessage(Lo/Bucketizer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    invoke-static {v1}, Lo/Bucketizer;->onNavigationEvent(Lo/Bucketizer;)I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    iget-object v2, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    invoke-static {v2}, Lo/Bucketizer;->ICustomTabsCallback(Lo/Bucketizer;)Lo/Info;

    move-result-object v2

    invoke-static {v1, v2}, Lo/Bucketizer;->ICustomTabsCallback(Lo/Bucketizer;Lo/Info;)Lo/Info;

    iget-object v1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    invoke-static {v1}, Lo/Bucketizer;->extraCallback(Lo/Bucketizer;)Lo/Info;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lo/Bucketizer;->onNavigationEvent(I)V

    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    invoke-static {v1}, Lo/Bucketizer;->onMessageChannelReady(Lo/Bucketizer;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lo/Bucketizer;->ICustomTabsCallback(Lo/Bucketizer;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    invoke-static {v1}, Lo/Bucketizer;->onTransact(Lo/Bucketizer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring adapter "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as delayed impression is not supported"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    iget-object v1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lo/Bucketizer;->onNavigationEvent(I)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lo/BucketizerJsonAdapter;->onMessageChannelReady:Lo/TabConfigResponseJsonAdapter;

    iget-object v2, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    invoke-virtual {v1, v2}, Lo/TabConfigResponseJsonAdapter;->ICustomTabsCallback(Lo/SyncBankRequestAccount;)V

    iget-object v1, p0, Lo/BucketizerJsonAdapter;->ICustomTabsCallback:Lo/Bucketizer;

    iget-object v2, p0, Lo/BucketizerJsonAdapter;->onMessageChannelReady:Lo/TabConfigResponseJsonAdapter;

    invoke-static {v1, v2}, Lo/Bucketizer;->onPostMessage(Lo/Bucketizer;Lo/TabConfigResponseJsonAdapter;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
