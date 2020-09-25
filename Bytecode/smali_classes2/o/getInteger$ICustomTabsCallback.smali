.class final Lo/getInteger$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getInteger;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/BiometricPrompt$2;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/androidapp/ui/widget/DobBottomSheet;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/getInteger;


# direct methods
.method constructor <init>(Lo/getInteger;)V
    .locals 0

    iput-object p1, p0, Lo/getInteger$ICustomTabsCallback;->extraCallback:Lo/getInteger;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1039
    new-instance v0, Lo/BiometricPrompt$2;

    iget-object v1, p0, Lo/getInteger$ICustomTabsCallback;->extraCallback:Lo/getInteger;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lo/getInteger$ICustomTabsCallback$5;

    invoke-direct {v2, p0}, Lo/getInteger$ICustomTabsCallback$5;-><init>(Lo/getInteger$ICustomTabsCallback;)V

    check-cast v2, Lo/BiometricPrompt$2$onNavigationEvent;

    invoke-direct {v0, v1, v2}, Lo/BiometricPrompt$2;-><init>(Landroid/content/Context;Lo/BiometricPrompt$2$onNavigationEvent;)V

    return-object v0
.end method
