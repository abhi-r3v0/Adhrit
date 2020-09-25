.class public final Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaControllerCompat$MediaControllerImplApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field final onMessageChannelReady:Z

.field public final onPostMessage:Lo/requestExtraBinder$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/requestExtraBinder$onNavigationEvent;Z)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;->onPostMessage:Lo/requestExtraBinder$onNavigationEvent;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;->onMessageChannelReady:Z

    return-void
.end method
