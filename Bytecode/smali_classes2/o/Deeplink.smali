.class final Lo/Deeplink;
.super Ljava/lang/Object;

# interfaces
.implements Lo/Flow;


# instance fields
.field private final synthetic onPostMessage:Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;


# direct methods
.method constructor <init>(Lo/getBorderColor;Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 0

    iput-object p2, p0, Lo/Deeplink;->onPostMessage:Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;

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

    iget-object v0, p0, Lo/Deeplink;->onPostMessage:Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-interface {p1, v0}, Lo/CredProtectResponseJsonAdapter;->onPostMessage(Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    :cond_0
    return-void
.end method
