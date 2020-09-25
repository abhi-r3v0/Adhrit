.class public final Lo/isResumed;
.super Lo/hasOptionsMenu;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/hasOptionsMenu<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016R\u000e\u0010\u0005\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/remote/mixpanel/RemoteBooleanVarDelegate;",
        "Lcom/dreamplug/fabrik/helper/remote/mixpanel/RemoteVarDelegate;",
        "",
        "key",
        "",
        "defaultValue",
        "(Ljava/lang/String;Z)V",
        "createTweak",
        "Lcom/mixpanel/android/mpmetrics/Tweak;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Lo/hasOptionsMenu;-><init>()V

    iput-object p1, p0, Lo/isResumed;->extraCallback:Ljava/lang/String;

    iput-boolean p2, p0, Lo/isResumed;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/getJsonObjectFrom;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getJsonObjectFrom<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lo/isResumed;->extraCallback:Ljava/lang/String;

    iget-boolean v1, p0, Lo/isResumed;->onMessageChannelReady:Z

    invoke-static {v0, v1}, Lo/Settings;->ICustomTabsCallback(Ljava/lang/String;Z)Lo/getJsonObjectFrom;

    move-result-object v0

    const-string v1, "MixpanelAPI.booleanTweak(key, defaultValue)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
