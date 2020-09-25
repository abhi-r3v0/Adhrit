.class public final Lo/onItemHoverExit$asBinder;
.super Lo/onItemHoverExit;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onItemHoverExit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asBinder"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\r\u001a\u00020\u0005H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/cred/pay/ui/PaymentScreen$MoreUpiApps;",
        "Lcom/cred/pay/ui/PaymentScreen;",
        "showCredUpiAppIcon",
        "",
        "context",
        "",
        "showConfirmation",
        "(ZLjava/lang/String;Z)V",
        "getContext",
        "()Ljava/lang/String;",
        "getShowConfirmation",
        "()Z",
        "getShowCredUpiAppIcon",
        "getTag",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Z

.field final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lo/onItemHoverExit;-><init>(B)V

    iput-boolean p1, p0, Lo/onItemHoverExit$asBinder;->ICustomTabsCallback:Z

    iput-object p2, p0, Lo/onItemHoverExit$asBinder;->onNavigationEvent:Ljava/lang/String;

    iput-boolean p3, p0, Lo/onItemHoverExit$asBinder;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "upi_app_list"

    return-object v0
.end method
