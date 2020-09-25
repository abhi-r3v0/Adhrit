.class public final Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;
.super Lo/isUPIAvailable;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

.field private final onMessageChannelReady:D

.field private final onNavigationEvent:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .locals 0

    invoke-direct {p0}, Lo/isUPIAvailable;-><init>()V

    iput-object p1, p0, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onNavigationEvent:Landroid/net/Uri;

    iput-wide p3, p0, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onMessageChannelReady:D

    return-void
.end method


# virtual methods
.method public final extraCallback()D
    .locals 2

    iget-wide v0, p0, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onMessageChannelReady:D

    return-wide v0
.end method

.method public final onMessageChannelReady()Lo/getEventName;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->ICustomTabsCallback:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lo/TicketMachineFragment$finalAnim$$inlined$executeOnResume$1;->onNavigationEvent:Landroid/net/Uri;

    return-object v0
.end method
