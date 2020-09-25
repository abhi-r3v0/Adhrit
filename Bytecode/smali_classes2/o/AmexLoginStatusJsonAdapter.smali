.class final Lo/AmexLoginStatusJsonAdapter;
.super Lo/AuthProvider;


# instance fields
.field private final synthetic extraCallback:Lo/ContactSyncResponse;

.field private final synthetic onPostMessage:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lo/ContactSyncResponse;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lo/AmexLoginStatusJsonAdapter;->extraCallback:Lo/ContactSyncResponse;

    iput-object p2, p0, Lo/AmexLoginStatusJsonAdapter;->onPostMessage:Landroid/os/Bundle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/AuthProvider;-><init>(Lo/ContactSyncResponseJsonAdapter;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage()V
    .locals 3

    iget-object v0, p0, Lo/AmexLoginStatusJsonAdapter;->extraCallback:Lo/ContactSyncResponse;

    invoke-static {v0}, Lo/ContactSyncResponse;->requestPostMessageChannel(Lo/ContactSyncResponse;)Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/AuthProviderJsonAdapter;

    iget-object v2, p0, Lo/AmexLoginStatusJsonAdapter;->onPostMessage:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lo/AuthProviderJsonAdapter;->onNavigationEvent(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
