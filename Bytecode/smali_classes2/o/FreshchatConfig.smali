.class final Lo/FreshchatConfig;
.super Lo/identifyUser;


# instance fields
.field private final synthetic onNavigationEvent:Lo/getAppKey;


# direct methods
.method constructor <init>(Lo/getAppKey;)V
    .locals 0

    iput-object p1, p0, Lo/FreshchatConfig;->onNavigationEvent:Lo/getAppKey;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/identifyUser;-><init>(Lo/Event$Property;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lo/FreshchatConfig;->onNavigationEvent:Lo/getAppKey;

    invoke-virtual {v0, p1}, Lo/getAppKey;->onNavigationEvent(Lo/PaymentRequestItem;)V

    return-void
.end method
