.class public final Lo/INotificationSideChannel$Stub$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/INotificationSideChannel$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/INotificationSideChannel$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final extraCallback:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Landroid/view/Menu;",
            "Landroid/view/Menu;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/INotificationSideChannel$Stub;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Landroid/view/ActionMode$Callback;

.field final onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onPostMessage:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    .line 153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 154
    new-instance p1, Lo/fromMediaItemList;

    invoke-direct {p1}, Lo/fromMediaItemList;-><init>()V

    iput-object p1, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->extraCallback:Lo/fromMediaItemList;

    return-void
.end method

.method private extraCallback(Landroid/view/Menu;)Landroid/view/Menu;
    .locals 3

    .line 182
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->extraCallback:Lo/fromMediaItemList;

    invoke-virtual {v0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Lo/subscribe;

    iget-object v1, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onPostMessage:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Lo/MediaMetadataCompatApi21$Builder;

    invoke-direct {v0, v1, v2}, Lo/subscribe;-><init>(Landroid/content/Context;Lo/MediaMetadataCompatApi21$Builder;)V

    .line 185
    iget-object v1, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->extraCallback:Lo/fromMediaItemList;

    invoke-virtual {v1, p1, v0}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/INotificationSideChannel;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onMessageChannelReady(Lo/INotificationSideChannel;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final extraCallback(Lo/INotificationSideChannel;Landroid/view/MenuItem;)Z
    .locals 3

    .line 172
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onMessageChannelReady(Lo/INotificationSideChannel;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v1, Lo/isConnected;

    iget-object v2, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onPostMessage:Landroid/content/Context;

    check-cast p2, Lo/MediaMetadataCompat$RatingKey;

    invoke-direct {v1, v2, p2}, Lo/isConnected;-><init>(Landroid/content/Context;Lo/MediaMetadataCompat$RatingKey;)V

    invoke-interface {v0, p1, v1}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady(Lo/INotificationSideChannel;)Landroid/view/ActionMode;
    .locals 4

    .line 192
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 193
    iget-object v2, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/INotificationSideChannel$Stub;

    if-eqz v2, :cond_0

    .line 194
    iget-object v3, v2, Lo/INotificationSideChannel$Stub;->ICustomTabsCallback:Lo/INotificationSideChannel;

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_1
    new-instance v0, Lo/INotificationSideChannel$Stub;

    iget-object v1, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onPostMessage:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lo/INotificationSideChannel$Stub;-><init>(Landroid/content/Context;Lo/INotificationSideChannel;)V

    .line 203
    iget-object p1, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/INotificationSideChannel;Landroid/view/Menu;)Z
    .locals 1

    .line 165
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onMessageChannelReady(Lo/INotificationSideChannel;)Landroid/view/ActionMode;

    move-result-object p1

    .line 166
    invoke-direct {p0, p2}, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->extraCallback(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 165
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(Lo/INotificationSideChannel;Landroid/view/Menu;)Z
    .locals 1

    .line 159
    iget-object v0, p0, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onNavigationEvent:Landroid/view/ActionMode$Callback;

    invoke-virtual {p0, p1}, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->onMessageChannelReady(Lo/INotificationSideChannel;)Landroid/view/ActionMode;

    move-result-object p1

    .line 160
    invoke-direct {p0, p2}, Lo/INotificationSideChannel$Stub$onMessageChannelReady;->extraCallback(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    .line 159
    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method
