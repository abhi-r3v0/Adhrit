.class final Lo/BankAccountSyncRequest;
.super Lo/PromotionalCards;


# instance fields
.field private final synthetic onMessageChannelReady:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lo/BankAccountSyncRequest;->onMessageChannelReady:I

    invoke-direct {p0}, Lo/PromotionalCards;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget v0, p0, Lo/BankAccountSyncRequest;->onMessageChannelReady:I

    return v0
.end method
