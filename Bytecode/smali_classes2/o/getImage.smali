.class final Lo/getImage;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Flow;


# direct methods
.method constructor <init>(Lo/getIconUrl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/FlowJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lo/FlowJsonAdapter;->ICustomTabsCallback:Lo/ParentEntity;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lo/FlowJsonAdapter;->ICustomTabsCallback:Lo/ParentEntity;

    invoke-interface {p1}, Lo/ParentEntity;->onNavigationEvent()V

    :cond_0
    return-void
.end method
