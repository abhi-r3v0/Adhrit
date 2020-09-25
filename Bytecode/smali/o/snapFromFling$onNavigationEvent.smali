.class public final Lo/snapFromFling$onNavigationEvent;
.super Lo/postShow;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/snapFromFling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiViewModel$SetupMpin;",
        "Lcom/cred/pay/repository/models/CredUpiDataItem;",
        "vpa",
        "",
        "accountReferenceId",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getAccountReferenceId",
        "()Ljava/lang/String;",
        "getVpa",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field final onNavigationEvent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "vpa"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountReferenceId"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lo/postShow;-><init>()V

    iput-object p1, p0, Lo/snapFromFling$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/snapFromFling$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method
