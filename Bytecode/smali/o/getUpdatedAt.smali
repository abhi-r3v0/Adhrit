.class final Lo/getUpdatedAt;
.super Lo/setCustomAmount$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setCustomAmount$onNavigationEvent<",
        "Lo/setCode;",
        "Lo/setCustomAmount$onPostMessage$onMessageChannelReady;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/setCustomAmount$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Ljava/lang/Object;Lo/getIfsc;Lo/TransactionJsonAdapter;)Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 6

    .line 2
    check-cast p4, Lo/setCustomAmount$onPostMessage$onMessageChannelReady;

    .line 3
    new-instance p4, Lo/setCode;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lo/setCode;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Lo/getIfsc;Lo/TransactionJsonAdapter;)V

    return-object p4
.end method
