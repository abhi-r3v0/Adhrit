.class public final Lo/MediaSessionCompat$1$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field private onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lo/setSessionImpl$ICustomTabsCallback;

    invoke-direct {v0, p1}, Lo/setSessionImpl$ICustomTabsCallback;-><init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V

    iput-object v0, p0, Lo/MediaSessionCompat$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 142
    new-instance v0, Lo/setSessionImpl$ICustomTabsCallback;

    invoke-direct {v0, p1, p2, p3}, Lo/setSessionImpl$ICustomTabsCallback;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lo/MediaSessionCompat$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    return-void

    .line 146
    :cond_0
    new-instance v0, Lo/onCommand$onPostMessage;

    invoke-direct {v0, p1, p2, p3}, Lo/onCommand$onPostMessage;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lo/MediaSessionCompat$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 211
    :cond_0
    instance-of v0, p1, Lo/MediaSessionCompat$1$extraCallback;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 214
    :cond_1
    iget-object v0, p0, Lo/MediaSessionCompat$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    check-cast p1, Lo/MediaSessionCompat$1$extraCallback;

    iget-object p1, p1, Lo/MediaSessionCompat$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 219
    iget-object v0, p0, Lo/MediaSessionCompat$1$extraCallback;->onNavigationEvent:Lo/MediaSessionCompat$1$onMessageChannelReady;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
