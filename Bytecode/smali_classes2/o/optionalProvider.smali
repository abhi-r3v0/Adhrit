.class public final Lo/optionalProvider;
.super Lo/removeDependent;


# instance fields
.field private synthetic onNavigationEvent:Lo/isSet;

.field private synthetic onPostMessage:Lo/removeDependent;


# direct methods
.method public constructor <init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V
    .locals 0

    iput-object p1, p0, Lo/optionalProvider;->onNavigationEvent:Lo/isSet;

    iput-object p3, p0, Lo/optionalProvider;->onPostMessage:Lo/removeDependent;

    invoke-direct {p0, p2}, Lo/removeDependent;-><init>(Lo/doOnboarding;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 6

    iget-object v0, p0, Lo/optionalProvider;->onNavigationEvent:Lo/isSet;

    iget-object v1, p0, Lo/optionalProvider;->onPostMessage:Lo/removeDependent;

    .line 1000
    iget-object v2, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-boolean v2, v0, Lo/isSet;->onPostMessage:Z

    if-nez v2, :cond_3

    iget-object v2, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Initiate binding to the service."

    invoke-virtual {v2, v5, v4}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lo/isSet;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lo/stopScroll;

    invoke-direct {v1, v0}, Lo/stopScroll;-><init>(Lo/isSet;)V

    iput-object v1, v0, Lo/isSet;->ICustomTabsCallback$Stub:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/isSet;->onPostMessage:Z

    iget-object v2, v0, Lo/isSet;->onNavigationEvent:Landroid/content/Context;

    iget-object v4, v0, Lo/isSet;->onTransact:Landroid/content/Intent;

    iget-object v5, v0, Lo/isSet;->ICustomTabsCallback$Stub:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4, v5, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "Failed to bind to the service."

    invoke-virtual {v1, v4, v2}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v3, v0, Lo/isSet;->onPostMessage:Z

    iget-object v1, v0, Lo/isSet;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/removeDependent;

    .line 2000
    iget-object v4, v4, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    if-eqz v4, :cond_0

    .line 1000
    new-instance v5, Lcom/google/android/play/core/internal/aq;

    invoke-direct {v5}, Lcom/google/android/play/core/internal/aq;-><init>()V

    .line 3000
    iget-object v4, v4, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    invoke-virtual {v4, v5}, Lo/Onboarding;->extraCallback(Ljava/lang/Exception;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v0, v0, Lo/isSet;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void

    :cond_3
    iget-boolean v2, v0, Lo/isSet;->onPostMessage:Z

    if-eqz v2, :cond_4

    iget-object v2, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Waiting to bind to the service."

    invoke-virtual {v2, v4, v3}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lo/isSet;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    invoke-virtual {v1}, Lo/removeDependent;->run()V

    return-void
.end method
