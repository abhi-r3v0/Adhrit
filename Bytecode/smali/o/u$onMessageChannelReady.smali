.class Lo/u$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/u;


# direct methods
.method private constructor <init>(Lo/u;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/u;Lo/u$5;)V
    .locals 0

    .line 386
    invoke-direct {p0, p1}, Lo/u$onMessageChannelReady;-><init>(Lo/u;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

    const/4 v0, -0x3

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v4, :cond_0

    .line 408
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unknown focus change type: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 405
    :cond_0
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1, v4}, Lo/u;->onPostMessage(Lo/u;I)I

    goto :goto_0

    .line 392
    :cond_1
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1, v3}, Lo/u;->onPostMessage(Lo/u;I)I

    goto :goto_0

    .line 395
    :cond_2
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1, v2}, Lo/u;->onPostMessage(Lo/u;I)I

    goto :goto_0

    .line 398
    :cond_3
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1}, Lo/u;->ICustomTabsCallback(Lo/u;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 399
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1, v2}, Lo/u;->onPostMessage(Lo/u;I)I

    goto :goto_0

    .line 401
    :cond_4
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1, v1}, Lo/u;->onPostMessage(Lo/u;I)I

    .line 414
    :goto_0
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1}, Lo/u;->onNavigationEvent(Lo/u;)I

    move-result p1

    if-eq p1, v3, :cond_8

    if-eqz p1, :cond_9

    if-eq p1, v4, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_1

    .line 432
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown audio focus state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {v1}, Lo/u;->onNavigationEvent(Lo/u;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_6
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1}, Lo/u;->onMessageChannelReady(Lo/u;)Lo/u$onNavigationEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lo/u$onNavigationEvent;->onNavigationEvent(I)V

    goto :goto_1

    .line 429
    :cond_7
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1}, Lo/u;->onMessageChannelReady(Lo/u;)Lo/u$onNavigationEvent;

    move-result-object p1

    invoke-interface {p1, v4}, Lo/u$onNavigationEvent;->onNavigationEvent(I)V

    goto :goto_1

    .line 419
    :cond_8
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1}, Lo/u;->onMessageChannelReady(Lo/u;)Lo/u$onNavigationEvent;

    move-result-object p1

    invoke-interface {p1, v3}, Lo/u$onNavigationEvent;->onNavigationEvent(I)V

    .line 420
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {p1, v4}, Lo/u;->extraCallback(Lo/u;Z)V

    .line 435
    :cond_9
    :goto_1
    iget-object p1, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    .line 436
    invoke-static {p1}, Lo/u;->onNavigationEvent(Lo/u;)I

    move-result p1

    if-ne p1, v1, :cond_a

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_2

    :cond_a
    const/high16 p1, 0x3f800000    # 1.0f

    .line 439
    :goto_2
    iget-object v0, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {v0}, Lo/u;->onPostMessage(Lo/u;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    .line 440
    iget-object v0, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {v0, p1}, Lo/u;->onNavigationEvent(Lo/u;F)F

    .line 441
    iget-object v0, p0, Lo/u$onMessageChannelReady;->onNavigationEvent:Lo/u;

    invoke-static {v0}, Lo/u;->onMessageChannelReady(Lo/u;)Lo/u$onNavigationEvent;

    move-result-object v0

    invoke-interface {v0, p1}, Lo/u$onNavigationEvent;->extraCallback(F)V

    :cond_b
    return-void
.end method
