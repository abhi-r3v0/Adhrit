.class public final Lo/requiredProvider;
.super Lo/removeDependent;


# instance fields
.field private synthetic ICustomTabsCallback:Lo/stopScroll;

.field private synthetic onPostMessage:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lo/stopScroll;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lo/requiredProvider;->ICustomTabsCallback:Lo/stopScroll;

    iput-object p2, p0, Lo/requiredProvider;->onPostMessage:Landroid/os/IBinder;

    invoke-direct {p0}, Lo/removeDependent;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 6

    iget-object v0, p0, Lo/requiredProvider;->ICustomTabsCallback:Lo/stopScroll;

    iget-object v0, v0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    .line 1000
    iget-object v1, v0, Lo/isSet;->asInterface:Lo/optional;

    iget-object v2, p0, Lo/requiredProvider;->onPostMessage:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lo/optional;->extraCallback(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IInterface;

    .line 2000
    iput-object v1, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    iget-object v0, p0, Lo/requiredProvider;->ICustomTabsCallback:Lo/stopScroll;

    iget-object v0, v0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    .line 3000
    iget-object v1, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "linkToDeath"

    invoke-virtual {v1, v4, v3}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, v0, Lo/isSet;->onRelationshipValidationResult:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v0, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x6

    const-string v5, "PlayCore"

    .line 4000
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v0, Lo/addItemDecoration$onPostMessage;->extraCallback:Ljava/lang/String;

    const-string v4, "linkToDeath failed"

    invoke-static {v0, v4, v3}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lo/requiredProvider;->ICustomTabsCallback:Lo/stopScroll;

    iget-object v0, v0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    .line 5000
    iput-boolean v2, v0, Lo/isSet;->onPostMessage:Z

    iget-object v0, p0, Lo/requiredProvider;->ICustomTabsCallback:Lo/stopScroll;

    iget-object v0, v0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    .line 6000
    iget-object v0, v0, Lo/isSet;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lo/requiredProvider;->ICustomTabsCallback:Lo/stopScroll;

    iget-object v0, v0, Lo/stopScroll;->onPostMessage:Lo/isSet;

    .line 7000
    iget-object v0, v0, Lo/isSet;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
