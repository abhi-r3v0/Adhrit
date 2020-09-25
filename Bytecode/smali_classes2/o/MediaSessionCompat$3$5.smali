.class final Lo/MediaSessionCompat$3$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/preference/Preference$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/MediaSessionCompat$3;

.field final synthetic onNavigationEvent:Landroidx/preference/PreferenceGroup;


# direct methods
.method constructor <init>(Lo/MediaSessionCompat$3;Landroidx/preference/PreferenceGroup;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/MediaSessionCompat$3$5;->extraCallback:Lo/MediaSessionCompat$3;

    iput-object p2, p0, Lo/MediaSessionCompat$3$5;->onNavigationEvent:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Z
    .locals 3

    .line 147
    iget-object v0, p0, Lo/MediaSessionCompat$3$5;->onNavigationEvent:Landroidx/preference/PreferenceGroup;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->asInterface(I)V

    .line 148
    iget-object v0, p0, Lo/MediaSessionCompat$3$5;->extraCallback:Lo/MediaSessionCompat$3;

    iget-object v0, v0, Lo/MediaSessionCompat$3;->onPostMessage:Lo/onSkipToQueueItem;

    .line 1282
    iget-object v1, v0, Lo/onSkipToQueueItem;->onMessageChannelReady:Landroid/os/Handler;

    iget-object v2, v0, Lo/onSkipToQueueItem;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1283
    iget-object v1, v0, Lo/onSkipToQueueItem;->onMessageChannelReady:Landroid/os/Handler;

    iget-object v0, v0, Lo/onSkipToQueueItem;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
