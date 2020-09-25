.class final Lo/getOptions;
.super Lo/setCustomAmount$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setCustomAmount$onNavigationEvent<",
        "Lo/readObject;",
        "Lo/LocalTestingException;",
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
    .locals 8

    .line 2
    check-cast p4, Lo/LocalTestingException;

    if-nez p4, :cond_0

    .line 4
    sget-object p4, Lo/LocalTestingException;->extraCallback:Lo/LocalTestingException;

    :cond_0
    move-object v5, p4

    .line 5
    new-instance p4, Lo/readObject;

    const/4 v3, 0x1

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lo/readObject;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLo/getMinDue;Lo/LocalTestingException;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    return-object p4
.end method
