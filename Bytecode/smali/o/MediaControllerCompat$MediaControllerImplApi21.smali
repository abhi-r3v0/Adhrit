.class public final Lo/MediaControllerCompat$MediaControllerImplApi21;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/requestExtraBinder;


# direct methods
.method constructor <init>(Lo/requestExtraBinder;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 54
    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 10530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 10852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 203
    invoke-virtual {v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V

    .line 205
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final ICustomTabsCallback(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 5530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 5852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 126
    invoke-virtual {v0, p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 128
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final ICustomTabsCallback$Stub(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 16530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 16852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 289
    invoke-virtual {v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback$Stub(Landroidx/fragment/app/Fragment;)V

    .line 291
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final asInterface(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 15530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 15852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 275
    invoke-virtual {v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->asInterface(Landroidx/fragment/app/Fragment;)V

    .line 277
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final extraCallback(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 9530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 9852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 189
    invoke-virtual {v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback(Landroidx/fragment/app/Fragment;)V

    .line 191
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final extraCallback(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 4530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 4852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 111
    invoke-virtual {v0, p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 113
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final extraCallback(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 13530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 13852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 246
    invoke-virtual {v0, p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 248
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final onMessageChannelReady(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 12530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 12852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 231
    invoke-virtual {v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onMessageChannelReady(Landroidx/fragment/app/Fragment;)V

    .line 233
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 7530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 7852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 158
    invoke-virtual {v0, p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 160
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 3

    .line 170
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 8530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 8852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    const/4 v1, 0x1

    .line 174
    invoke-virtual {v0, p1, p2, p3, v1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 176
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;

    if-eqz p4, :cond_2

    .line 177
    iget-boolean v2, v1, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;->onMessageChannelReady:Z

    if-eqz v2, :cond_1

    .line 178
    :cond_2
    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;->onPostMessage:Lo/requestExtraBinder$onNavigationEvent;

    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v1, v2, p1, p2, p3}, Lo/requestExtraBinder$onNavigationEvent;->onPostMessage(Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method final onNavigationEvent(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 11530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 11852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 217
    invoke-virtual {v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onNavigationEvent(Landroidx/fragment/app/Fragment;)V

    .line 219
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final onNavigationEvent(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 3530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 3852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 96
    invoke-virtual {v0, p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onNavigationEvent(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 98
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final onNavigationEvent(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 6530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 6852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 142
    invoke-virtual {v0, p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onNavigationEvent(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 144
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method final onPostMessage(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback:Lo/requestExtraBinder;

    .line 14530
    iget-object v0, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 14852
    iget-object v0, v0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 261
    invoke-virtual {v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onPostMessage(Landroidx/fragment/app/Fragment;)V

    .line 263
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
