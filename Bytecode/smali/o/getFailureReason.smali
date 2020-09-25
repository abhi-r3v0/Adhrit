.class final Lo/getFailureReason;
.super Lo/setCustomAmount$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setCustomAmount$onNavigationEvent<",
        "Lo/Information;",
        "Lo/setUpdatedAt$ICustomTabsCallback;",
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
.method public final synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Ljava/lang/Object;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 7

    .line 2
    move-object v4, p4

    check-cast v4, Lo/setUpdatedAt$ICustomTabsCallback;

    .line 3
    new-instance p4, Lo/Information;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lo/Information;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Lo/setUpdatedAt$ICustomTabsCallback;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    return-object p4
.end method
