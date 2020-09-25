.class public abstract Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$MediaSessionImplApi18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lo/MediaSessionCompat$MediaSessionImplApi18$onNavigationEvent;->ICustomTabsCallback:I

    return-void
.end method


# virtual methods
.method protected abstract ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)V
.end method

.method protected abstract extraCallback(Lo/MediaControllerCompatApi21$Callback;)V
.end method

.method protected abstract onMessageChannelReady(Lo/MediaControllerCompatApi21$Callback;)V
.end method

.method protected onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)Lo/MediaSessionCompat$MediaSessionImplApi18$extraCallback;
    .locals 1

    .line 1230
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "validateMigration is deprecated"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract onPostMessage(Lo/MediaControllerCompatApi21$Callback;)V
.end method

.method protected onTransact(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 0

    return-void
.end method
