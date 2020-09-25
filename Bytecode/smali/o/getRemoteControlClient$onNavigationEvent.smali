.class public final Lo/getRemoteControlClient$onNavigationEvent;
.super Lo/setActive;
.source ""

# interfaces
.implements Lo/getCurrentControllerInfo$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setActive<",
        "TD;>;",
        "Lo/getCurrentControllerInfo$onMessageChannelReady<",
        "TD;>;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback$Stub:Landroid/os/Bundle;

.field private ICustomTabsService:Lo/toLegacyStreamType;

.field final asBinder:I

.field asInterface:Lo/getRemoteControlClient$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRemoteControlClient$extraCallback<",
            "TD;>;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:Lo/getCurrentControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation
.end field

.field final onTransact:Lo/getCurrentControllerInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Lo/getCurrentControllerInfo;Lo/getCurrentControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lo/getCurrentControllerInfo<",
            "TD;>;",
            "Lo/getCurrentControllerInfo<",
            "TD;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lo/setActive;-><init>()V

    .line 62
    iput p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->asBinder:I

    .line 63
    iput-object p2, p0, Lo/getRemoteControlClient$onNavigationEvent;->ICustomTabsCallback$Stub:Landroid/os/Bundle;

    .line 64
    iput-object p3, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    .line 65
    iput-object p4, p0, Lo/getRemoteControlClient$onNavigationEvent;->getInterfaceDescriptor:Lo/getCurrentControllerInfo;

    .line 66
    invoke-virtual {p3, p1, p0}, Lo/getCurrentControllerInfo;->registerListener(ILo/getCurrentControllerInfo$onMessageChannelReady;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 189
    invoke-super {p0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 191
    iget-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->getInterfaceDescriptor:Lo/getCurrentControllerInfo;

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1}, Lo/getCurrentControllerInfo;->reset()V

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->getInterfaceDescriptor:Lo/getCurrentControllerInfo;

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/setPlaybackToRemote;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPlaybackToRemote<",
            "-TD;>;)V"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Lo/setActive;->extraCallback(Lo/setPlaybackToRemote;)V

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->ICustomTabsService:Lo/toLegacyStreamType;

    .line 137
    iput-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    return-void
.end method

.method final onMessageChannelReady(Lo/toLegacyStreamType;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/toLegacyStreamType;",
            "Lo/getCallingPackage$ICustomTabsCallback<",
            "TD;>;)",
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lo/getRemoteControlClient$extraCallback;

    iget-object v1, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    invoke-direct {v0, v1, p2}, Lo/getRemoteControlClient$extraCallback;-><init>(Lo/getCurrentControllerInfo;Lo/getCallingPackage$ICustomTabsCallback;)V

    .line 100
    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 102
    iget-object p2, p0, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    if-eqz p2, :cond_0

    .line 1134
    invoke-super {p0, p2}, Lo/setActive;->extraCallback(Lo/setPlaybackToRemote;)V

    const/4 p2, 0x0

    .line 1136
    iput-object p2, p0, Lo/getRemoteControlClient$onNavigationEvent;->ICustomTabsService:Lo/toLegacyStreamType;

    .line 1137
    iput-object p2, p0, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    .line 105
    :cond_0
    iput-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->ICustomTabsService:Lo/toLegacyStreamType;

    .line 106
    iput-object v0, p0, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    .line 107
    iget-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    return-object p1
.end method

.method final onMessageChannelReady(Z)Lo/getCurrentControllerInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lo/getCurrentControllerInfo<",
            "TD;>;"
        }
    .end annotation

    .line 149
    sget-boolean v0, Lo/getRemoteControlClient;->onPostMessage:Z

    .line 151
    iget-object v0, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    invoke-virtual {v0}, Lo/getCurrentControllerInfo;->cancelLoad()Z

    .line 152
    iget-object v0, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    invoke-virtual {v0}, Lo/getCurrentControllerInfo;->abandon()V

    .line 154
    iget-object v0, p0, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    if-eqz v0, :cond_0

    .line 2134
    invoke-super {p0, v0}, Lo/setActive;->extraCallback(Lo/setPlaybackToRemote;)V

    const/4 v1, 0x0

    .line 2136
    iput-object v1, p0, Lo/getRemoteControlClient$onNavigationEvent;->ICustomTabsService:Lo/toLegacyStreamType;

    .line 2137
    iput-object v1, p0, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    if-eqz p1, :cond_0

    .line 2260
    iget-boolean v1, v0, Lo/getRemoteControlClient$extraCallback;->onPostMessage:Z

    if-eqz v1, :cond_0

    .line 2261
    sget-boolean v1, Lo/getRemoteControlClient;->onPostMessage:Z

    .line 2262
    iget-object v1, v0, Lo/getRemoteControlClient$extraCallback;->onMessageChannelReady:Lo/getCallingPackage$ICustomTabsCallback;

    iget-object v2, v0, Lo/getRemoteControlClient$extraCallback;->extraCallback:Lo/getCurrentControllerInfo;

    invoke-interface {v1, v2}, Lo/getCallingPackage$ICustomTabsCallback;->onLoaderReset(Lo/getCurrentControllerInfo;)V

    .line 162
    :cond_0
    iget-object v1, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    invoke-virtual {v1, p0}, Lo/getCurrentControllerInfo;->unregisterListener(Lo/getCurrentControllerInfo$onMessageChannelReady;)V

    if-eqz v0, :cond_1

    .line 3255
    iget-boolean v0, v0, Lo/getRemoteControlClient$extraCallback;->onPostMessage:Z

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    .line 164
    :cond_2
    iget-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    invoke-virtual {p1}, Lo/getCurrentControllerInfo;->reset()V

    .line 165
    iget-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->getInterfaceDescriptor:Lo/getCurrentControllerInfo;

    return-object p1

    .line 167
    :cond_3
    iget-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    return-object p1
.end method

.method final onMessageChannelReady()V
    .locals 2

    .line 111
    iget-object v0, p0, Lo/getRemoteControlClient$onNavigationEvent;->ICustomTabsService:Lo/toLegacyStreamType;

    .line 112
    iget-object v1, p0, Lo/getRemoteControlClient$onNavigationEvent;->asInterface:Lo/getRemoteControlClient$extraCallback;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 118
    invoke-super {p0, v1}, Lo/setActive;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 119
    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/getCurrentControllerInfo;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 172
    sget-boolean p1, Lo/getRemoteControlClient;->onPostMessage:Z

    .line 173
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4189
    invoke-super {p0, p2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 4191
    iget-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->getInterfaceDescriptor:Lo/getCurrentControllerInfo;

    if-eqz p1, :cond_0

    .line 4192
    invoke-virtual {p1}, Lo/getCurrentControllerInfo;->reset()V

    const/4 p1, 0x0

    .line 4193
    iput-object p1, p0, Lo/getRemoteControlClient$onNavigationEvent;->getInterfaceDescriptor:Lo/getCurrentControllerInfo;

    :cond_0
    return-void

    .line 179
    :cond_1
    sget-boolean p1, Lo/getRemoteControlClient;->onPostMessage:Z

    .line 183
    invoke-virtual {p0, p2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 82
    sget-boolean v0, Lo/getRemoteControlClient;->onPostMessage:Z

    .line 83
    iget-object v0, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    invoke-virtual {v0}, Lo/getCurrentControllerInfo;->stopLoading()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 76
    sget-boolean v0, Lo/getRemoteControlClient;->onPostMessage:Z

    .line 77
    iget-object v0, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    invoke-virtual {v0}, Lo/getCurrentControllerInfo;->startLoading()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Lo/getRemoteControlClient$onNavigationEvent;->asBinder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Lo/getRemoteControlClient$onNavigationEvent;->onTransact:Lo/getCurrentControllerInfo;

    invoke-static {v1, v0}, Lo/extraCallback;->extraCallback(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}}"

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
