.class public final Lo/dispatchAddStarting$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchAddStarting;
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
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J+\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u000eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/dreamplug/upi/UpiFragment$Companion;",
        "",
        "()V",
        "BANK_CODE",
        "",
        "BANK_SELECTION_REQUEST",
        "",
        "REQUEST_SMS_PERMISSION",
        "getInstance",
        "Lcom/dreamplug/upi/UpiFragment;",
        "flowName",
        "dismissOnValidBankAccounts",
        "",
        "source",
        "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lcom/dreamplug/upi/UpiFragment;",
        "cred-upi_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 180
    invoke-direct {p0}, Lo/dispatchAddStarting$onNavigationEvent;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)Lo/dispatchAddStarting;
    .locals 3

    const-string/jumbo v0, "source"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v1, Lo/dispatchAddStarting;

    invoke-direct {v1}, Lo/dispatchAddStarting;-><init>()V

    .line 190
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1034
    iput-object p0, v1, Lo/dispatchAddStarting;->extraCallback:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 1035
    iput-boolean p0, v1, Lo/dispatchAddStarting;->ICustomTabsCallback:Z

    :cond_0
    return-object v1
.end method
