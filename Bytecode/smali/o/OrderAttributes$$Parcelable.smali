.class final Lo/OrderAttributes$$Parcelable;
.super Lo/getBin;
.source ""


# instance fields
.field private final synthetic onNavigationEvent:Lo/OrderAttributes;


# direct methods
.method constructor <init>(Lo/OrderAttributes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/OrderAttributes$$Parcelable;->onNavigationEvent:Lo/OrderAttributes;

    invoke-direct {p0}, Lo/getBin;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/OrderAttributes$$Parcelable;->onNavigationEvent:Lo/OrderAttributes;

    invoke-virtual {v0, p1}, Lo/OrderAttributes;->onNavigationEvent(Lo/PaymentRequestItem;)V

    return-void
.end method
