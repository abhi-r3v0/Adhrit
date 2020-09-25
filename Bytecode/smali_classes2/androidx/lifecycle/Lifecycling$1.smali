.class public final Landroidx/lifecycle/Lifecycling$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaControllerCompatApi24;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/MediaControllerCompatApi23;


# virtual methods
.method public final extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/lifecycle/Lifecycling$1;->onNavigationEvent:Lo/MediaControllerCompatApi23;

    invoke-interface {v0, p1, p2}, Lo/MediaControllerCompatApi23;->extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    return-void
.end method
