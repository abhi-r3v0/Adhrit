.class final Lo/BottomJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Flow;


# instance fields
.field private final synthetic extraCallback:Lo/setPieAngle;


# direct methods
.method constructor <init>(Lo/CardJsonAdapter;Lo/setPieAngle;)V
    .locals 0

    iput-object p2, p0, Lo/BottomJsonAdapter;->extraCallback:Lo/setPieAngle;

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

    iget-object v0, p1, Lo/FlowJsonAdapter;->onMessageChannelReady:Lo/setStartingAngle;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lo/FlowJsonAdapter;->onMessageChannelReady:Lo/setStartingAngle;

    iget-object v0, p0, Lo/BottomJsonAdapter;->extraCallback:Lo/setPieAngle;

    invoke-interface {p1, v0}, Lo/setStartingAngle;->onNavigationEvent(Lo/setPieAngle;)V

    :cond_0
    return-void
.end method
