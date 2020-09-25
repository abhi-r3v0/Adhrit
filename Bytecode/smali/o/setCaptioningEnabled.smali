.class public final Lo/setCaptioningEnabled;
.super Lo/setMediaController;
.source ""


# direct methods
.method constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lo/setMediaController;-><init>()V

    .line 5
    new-instance v0, Lo/setSwitchTypeface;

    invoke-direct {v0}, Lo/setSwitchTypeface;-><init>()V

    invoke-virtual {p0, v0}, Lo/setMediaController;->onNavigationEvent(Lo/setShuffleMode;)V

    return-void
.end method
