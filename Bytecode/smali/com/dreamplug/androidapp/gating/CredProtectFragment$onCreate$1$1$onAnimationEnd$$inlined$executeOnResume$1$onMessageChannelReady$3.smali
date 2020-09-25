.class final Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onMessageChannelReady$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onMessageChannelReady;->extraCallback()V
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
        "com/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$1$1$onAnimationStart$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onMessageChannelReady;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onMessageChannelReady$3;->onNavigationEvent:Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onMessageChannelReady;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onMessageChannelReady$3;->onNavigationEvent:Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onMessageChannelReady;

    iget-object v0, v0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1$onMessageChannelReady;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/gating/CredProtectFragment$onCreate$1$1$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback:Lo/getPositionDescription$ICustomTabsCallback$Stub$2;

    iget-object v0, v0, Lo/getPositionDescription$ICustomTabsCallback$Stub$2;->onMessageChannelReady:Lo/getPositionDescription$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/getPositionDescription$ICustomTabsCallback$Stub;->onNavigationEvent:Lo/getPositionDescription;

    invoke-static {v0}, Lo/getPositionDescription;->onPostMessage(Lo/getPositionDescription;)V

    .line 122
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
