.class final Lo/getRemindersMap;
.super Lo/isFabrikEnabled;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/isFabrikEnabled<",
        "TA;TResultT;>;"
    }
.end annotation


# instance fields
.field private final synthetic onPostMessage:Lo/isFabrikEnabled$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/isFabrikEnabled$onMessageChannelReady;[Lo/setAmountRefunded;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getRemindersMap;->onPostMessage:Lo/isFabrikEnabled$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lo/isFabrikEnabled;-><init>([Lo/setAmountRefunded;ZLo/getCalendarName;)V

    return-void
.end method


# virtual methods
.method protected final onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;Lo/removeBackgroundStateChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Lo/removeBackgroundStateChangeListener<",
            "TResultT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lo/getRemindersMap;->onPostMessage:Lo/isFabrikEnabled$onMessageChannelReady;

    invoke-static {v0}, Lo/isFabrikEnabled$onMessageChannelReady;->ICustomTabsCallback(Lo/isFabrikEnabled$onMessageChannelReady;)Lo/Transaction$$Parcelable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lo/Transaction$$Parcelable;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
