.class final Lo/zzarg;
.super Lo/setCustomAmount$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setCustomAmount$onNavigationEvent<",
        "Lo/ImageFragment;",
        "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/setCustomAmount$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Ljava/lang/Object;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 7

    new-instance p4, Lo/ImageFragment;

    const-string v5, "locationServices"

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lo/ImageFragment;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;Ljava/lang/String;Lo/getMinDue;)V

    return-object p4
.end method
