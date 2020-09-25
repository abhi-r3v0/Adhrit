.class public Landroidx/savedstate/SavedStateRegistry$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/MediaSessionCompat$MediaSessionImplApi21;->onMessageChannelReady(Lo/MediaControllerCompatApi21$CallbackProxy;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/MediaSessionCompat$MediaSessionImplApi21;


# direct methods
.method public constructor <init>(Lo/MediaSessionCompat$MediaSessionImplApi21;)V
    .locals 0

    .line 197
    iput-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->onMessageChannelReady:Lo/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 0

    .line 200
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, p1, :cond_0

    .line 201
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->onMessageChannelReady:Lo/MediaSessionCompat$MediaSessionImplApi21;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lo/MediaSessionCompat$MediaSessionImplApi21;->onMessageChannelReady:Z

    return-void

    .line 202
    :cond_0
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, p1, :cond_1

    .line 203
    iget-object p1, p0, Landroidx/savedstate/SavedStateRegistry$1;->onMessageChannelReady:Lo/MediaSessionCompat$MediaSessionImplApi21;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lo/MediaSessionCompat$MediaSessionImplApi21;->onMessageChannelReady:Z

    :cond_1
    return-void
.end method
