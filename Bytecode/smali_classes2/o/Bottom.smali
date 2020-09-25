.class final Lo/Bottom;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Flow;


# instance fields
.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/Card;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lo/Bottom;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/Bottom;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/FlowJsonAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p1, Lo/FlowJsonAdapter;->extraCallback:Lo/StatisticsItemJsonAdapter;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lo/FlowJsonAdapter;->extraCallback:Lo/StatisticsItemJsonAdapter;

    iget-object v0, p0, Lo/Bottom;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p0, Lo/Bottom;->onPostMessage:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lo/StatisticsItemJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
