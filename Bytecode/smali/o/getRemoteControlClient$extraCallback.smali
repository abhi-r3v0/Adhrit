.class final Lo/getRemoteControlClient$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final extraCallback:Lo/getCurrentControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/getCallingPackage$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "TD;>;"
        }
    .end annotation
.end field

.field onPostMessage:Z


# direct methods
.method constructor <init>(Lo/getCurrentControllerInfo;Lo/getCallingPackage$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "TD;>;",
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "TD;>;)V"
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lo/getRemoteControlClient$extraCallback;->onPostMessage:Z

    .line 240
    iput-object p1, p0, Lo/getRemoteControlClient$extraCallback;->extraCallback:Lo/getCurrentControllerInfo;

    .line 241
    iput-object p2, p0, Lo/getRemoteControlClient$extraCallback;->onMessageChannelReady:Lo/getCallingPackage$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 246
    sget-boolean v0, Lo/getRemoteControlClient;->onPostMessage:Z

    .line 250
    iget-object v0, p0, Lo/getRemoteControlClient$extraCallback;->onMessageChannelReady:Lo/getCallingPackage$ICustomTabsCallback;

    iget-object v1, p0, Lo/getRemoteControlClient$extraCallback;->extraCallback:Lo/getCurrentControllerInfo;

    invoke-interface {v0, v1, p1}, Lo/getCallingPackage$ICustomTabsCallback;->onLoadFinished(Lo/getCurrentControllerInfo;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 251
    iput-boolean p1, p0, Lo/getRemoteControlClient$extraCallback;->onPostMessage:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lo/getRemoteControlClient$extraCallback;->onMessageChannelReady:Lo/getCallingPackage$ICustomTabsCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
