.class final Lo/onReset$requestPostMessageChannel;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/control/addcard/NewAddCardDialogFragment$selectName$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onReset;

.field private synthetic onMessageChannelReady:Lcom/dreamplug/androidapp/onboarding/PaymentMode;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/onboarding/PaymentMode;Lo/onReset;)V
    .locals 0

    iput-object p1, p0, Lo/onReset$requestPostMessageChannel;->onMessageChannelReady:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iput-object p2, p0, Lo/onReset$requestPostMessageChannel;->extraCallback:Lo/onReset;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1370
    iget-object v0, p0, Lo/onReset$requestPostMessageChannel;->extraCallback:Lo/onReset;

    const-string v1, "card_add_card_name"

    invoke-static {v0, v1}, Lo/onReset;->ICustomTabsCallback(Lo/onReset;Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1371
    iget-object v0, p0, Lo/onReset$requestPostMessageChannel;->extraCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->asInterface(Lo/onReset;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/onReset$requestPostMessageChannel;->onMessageChannelReady:Lcom/dreamplug/androidapp/onboarding/PaymentMode;

    iget-object v0, v0, Lcom/dreamplug/androidapp/onboarding/PaymentMode;->user_name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lo/onReset$requestPostMessageChannel;->extraCallback:Lo/onReset;

    invoke-static {v0}, Lo/onReset;->asInterface(Lo/onReset;)Ljava/lang/String;

    move-result-object v0

    .line 1372
    :goto_2
    new-instance v1, Lo/isStarted;

    invoke-direct {v1}, Lo/isStarted;-><init>()V

    .line 1373
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "name"

    .line 1374
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1376
    iget-object v0, p0, Lo/onReset$requestPostMessageChannel;->extraCallback:Lo/onReset;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1377
    invoke-virtual {v1, v2, v3}, Lo/onAudioInfoChanged;->extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I

    .line 71
    :cond_3
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
