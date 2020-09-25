.class final Lo/getLink;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Flow;


# instance fields
.field private final synthetic onMessageChannelReady:I


# direct methods
.method constructor <init>(Lo/getBorderColor;I)V
    .locals 0

    iput p2, p0, Lo/getLink;->onMessageChannelReady:I

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

    iget-object v0, p1, Lo/FlowJsonAdapter;->asBinder:Lo/CredProtectResponseJsonAdapter;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lo/FlowJsonAdapter;->asBinder:Lo/CredProtectResponseJsonAdapter;

    iget v0, p0, Lo/getLink;->onMessageChannelReady:I

    invoke-interface {p1, v0}, Lo/CredProtectResponseJsonAdapter;->onMessageChannelReady(I)V

    :cond_0
    return-void
.end method
