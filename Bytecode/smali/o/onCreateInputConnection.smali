.class public final Lo/onCreateInputConnection;
.super Lo/dispatchMediaButtonEvent;
.source ""


# direct methods
.method public constructor <init>(Lo/MediaSessionCompat$1$onMessageChannelReady;Lo/setAutoSizeTextTypeWithDefaults;)V
    .locals 0

    .line 10
    invoke-direct {p0, p2}, Lo/dispatchMediaButtonEvent;-><init>(Lo/setAutoSizeTextTypeWithDefaults;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/ActivityChooserView;)Z
    .locals 0

    .line 16
    invoke-super {p0, p1}, Lo/dispatchMediaButtonEvent;->onNavigationEvent(Lo/ActivityChooserView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
