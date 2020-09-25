.class public final Lo/getInterface;
.super Lo/removeDependent;


# instance fields
.field private synthetic ICustomTabsCallback:Lo/isSet;


# direct methods
.method public constructor <init>(Lo/isSet;)V
    .locals 0

    iput-object p1, p0, Lo/getInterface;->ICustomTabsCallback:Lo/isSet;

    invoke-direct {p0}, Lo/removeDependent;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 4

    iget-object v0, p0, Lo/getInterface;->ICustomTabsCallback:Lo/isSet;

    .line 1000
    iget-object v0, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/getInterface;->ICustomTabsCallback:Lo/isSet;

    .line 2000
    iget-object v0, v0, Lo/isSet;->extraCallback:Lo/addItemDecoration$onPostMessage;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    invoke-virtual {v0, v3, v2}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lo/getInterface;->ICustomTabsCallback:Lo/isSet;

    .line 3000
    iget-object v0, v0, Lo/isSet;->onNavigationEvent:Landroid/content/Context;

    iget-object v2, p0, Lo/getInterface;->ICustomTabsCallback:Lo/isSet;

    .line 4000
    iget-object v2, v2, Lo/isSet;->ICustomTabsCallback$Stub:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lo/getInterface;->ICustomTabsCallback:Lo/isSet;

    .line 5000
    iput-boolean v1, v0, Lo/isSet;->onPostMessage:Z

    iget-object v0, p0, Lo/getInterface;->ICustomTabsCallback:Lo/isSet;

    const/4 v1, 0x0

    .line 6000
    iput-object v1, v0, Lo/isSet;->newSession:Landroid/os/IInterface;

    iget-object v0, p0, Lo/getInterface;->ICustomTabsCallback:Lo/isSet;

    .line 7000
    iput-object v1, v0, Lo/isSet;->ICustomTabsCallback$Stub:Landroid/content/ServiceConnection;

    :cond_0
    return-void
.end method
