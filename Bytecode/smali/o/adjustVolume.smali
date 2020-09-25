.class public final Lo/adjustVolume;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/getPlaybackState;

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:I


# direct methods
.method public constructor <init>(ILo/getPlaybackState;I)V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 56
    iput p1, p0, Lo/adjustVolume;->onMessageChannelReady:I

    .line 57
    iput-object p2, p0, Lo/adjustVolume;->ICustomTabsCallback:Lo/getPlaybackState;

    .line 58
    iput p3, p0, Lo/adjustVolume;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 70
    iget v0, p0, Lo/adjustVolume;->onMessageChannelReady:I

    const-string v1, "ACCESSIBILITY_CLICKABLE_SPAN_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lo/adjustVolume;->ICustomTabsCallback:Lo/getPlaybackState;

    iget v1, p0, Lo/adjustVolume;->onNavigationEvent:I

    invoke-virtual {v0, v1, p1}, Lo/getPlaybackState;->onNavigationEvent(ILandroid/os/Bundle;)Z

    return-void
.end method
