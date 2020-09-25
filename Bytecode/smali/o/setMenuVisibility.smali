.class public final Lo/setMenuVisibility;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0010R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/soundprox/SoundProxAudioFocusManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "audioFocusChangeListener",
        "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
        "audioFocusRequest",
        "Landroid/media/AudioFocusRequest;",
        "audioManager",
        "Landroid/media/AudioManager;",
        "getAudioManager",
        "()Landroid/media/AudioManager;",
        "audioManager$delegate",
        "Lkotlin/Lazy;",
        "abandonFocus",
        "",
        "requestFocus",
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
.field private final extraCallback:Lo/isSameListener;

.field private onMessageChannelReady:Landroid/media/AudioFocusRequest;

.field private onNavigationEvent:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lo/setMenuVisibility$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/setMenuVisibility$onMessageChannelReady;-><init>(Landroid/content/Context;)V

    check-cast v0, Lo/getServerTime;

    const-string p1, "initializer"

    invoke-static {v0, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance p1, Lo/fromChildMerge;

    invoke-direct {p1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p1, Lo/isSameListener;

    .line 12
    iput-object p1, p0, Lo/setMenuVisibility;->extraCallback:Lo/isSameListener;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 4

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 37
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 39
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 40
    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    .line 3000
    iget-object v1, p0, Lo/setMenuVisibility;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 43
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    .line 44
    iput-object v0, p0, Lo/setMenuVisibility;->onMessageChannelReady:Landroid/media/AudioFocusRequest;

    return-void

    .line 46
    :cond_0
    sget-object v0, Lo/setMenuVisibility$onPostMessage;->onNavigationEvent:Lo/setMenuVisibility$onPostMessage;

    check-cast v0, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4000
    iget-object v2, p0, Lo/setMenuVisibility;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const/4 v3, 0x3

    .line 47
    invoke-virtual {v2, v0, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 48
    iput-object v0, p0, Lo/setMenuVisibility;->onNavigationEvent:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 23
    iget-object v0, p0, Lo/setMenuVisibility;->onMessageChannelReady:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v2, p0, Lo/setMenuVisibility;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 24
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    .line 25
    iput-object v1, p0, Lo/setMenuVisibility;->onMessageChannelReady:Landroid/media/AudioFocusRequest;

    :cond_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lo/setMenuVisibility;->onNavigationEvent:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2000
    iget-object v2, p0, Lo/setMenuVisibility;->extraCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 29
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 30
    iput-object v1, p0, Lo/setMenuVisibility;->onNavigationEvent:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method
