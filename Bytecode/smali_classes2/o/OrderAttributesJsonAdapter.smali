.class final Lo/OrderAttributesJsonAdapter;
.super Lo/getBin;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/OrderItem;


# direct methods
.method constructor <init>(Lo/OrderItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/OrderAttributesJsonAdapter;->ICustomTabsCallback:Lo/OrderItem;

    invoke-direct {p0}, Lo/getBin;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/OrderAttributesJsonAdapter;->ICustomTabsCallback:Lo/OrderItem;

    invoke-virtual {v0, p1}, Lo/OrderItem;->onNavigationEvent(Lo/PaymentRequestItem;)V

    return-void
.end method
