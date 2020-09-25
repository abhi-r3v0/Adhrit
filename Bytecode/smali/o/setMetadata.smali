.class public final Lo/setMetadata;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setMetadata$extraCallback;,
        Lo/setMetadata$onPostMessage;,
        Lo/setMetadata$ICustomTabsCallback;,
        Lo/setMetadata$onMessageChannelReady;,
        Lo/setMetadata$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/setRatingType;

.field private final onPostMessage:Lo/setMetadata$onNavigationEvent;


# direct methods
.method public constructor <init>(Lo/removeOnActiveChangeListener;)V
    .locals 2

    .line 99
    invoke-interface {p1}, Lo/removeOnActiveChangeListener;->getViewModelStore()Lo/setRatingType;

    move-result-object v0

    instance-of v1, p1, Lo/MediaControllerCompatApi21$PlaybackInfo;

    if-eqz v1, :cond_0

    check-cast p1, Lo/MediaControllerCompatApi21$PlaybackInfo;

    .line 100
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$PlaybackInfo;->getDefaultViewModelProviderFactory()Lo/setMetadata$onNavigationEvent;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_0
    invoke-static {}, Lo/setMetadata$onPostMessage;->ICustomTabsCallback()Lo/setMetadata$onPostMessage;

    move-result-object p1

    .line 99
    :goto_0
    invoke-direct {p0, v0, p1}, Lo/setMetadata;-><init>(Lo/setRatingType;Lo/setMetadata$onNavigationEvent;)V

    return-void
.end method

.method public constructor <init>(Lo/setRatingType;Lo/setMetadata$onNavigationEvent;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lo/setMetadata;->onPostMessage:Lo/setMetadata$onNavigationEvent;

    .line 127
    iput-object p1, p0, Lo/setMetadata;->ICustomTabsCallback:Lo/setRatingType;

    return-void
.end method

.method private onPostMessage(Ljava/lang/String;Ljava/lang/Class;)Lo/setQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/setQueue;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lo/setMetadata;->ICustomTabsCallback:Lo/setRatingType;

    .line 1050
    iget-object v0, v0, Lo/setRatingType;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setQueue;

    .line 173
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object p1, p0, Lo/setMetadata;->onPostMessage:Lo/setMetadata$onNavigationEvent;

    instance-of p2, p1, Lo/setMetadata$onMessageChannelReady;

    if-eqz p2, :cond_0

    .line 175
    check-cast p1, Lo/setMetadata$onMessageChannelReady;

    invoke-virtual {p1, v0}, Lo/setMetadata$onMessageChannelReady;->onNavigationEvent(Lo/setQueue;)V

    :cond_0
    return-object v0

    .line 184
    :cond_1
    iget-object v0, p0, Lo/setMetadata;->onPostMessage:Lo/setMetadata$onNavigationEvent;

    instance-of v1, v0, Lo/setMetadata$ICustomTabsCallback;

    if-eqz v1, :cond_2

    .line 185
    check-cast v0, Lo/setMetadata$ICustomTabsCallback;

    invoke-virtual {v0, p1, p2}, Lo/setMetadata$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Class;)Lo/setQueue;

    move-result-object p2

    goto :goto_0

    .line 187
    :cond_2
    invoke-interface {v0, p2}, Lo/setMetadata$onNavigationEvent;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p2

    .line 189
    :goto_0
    iget-object v0, p0, Lo/setMetadata;->ICustomTabsCallback:Lo/setRatingType;

    .line 2043
    iget-object v0, v0, Lo/setRatingType;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setQueue;

    if-eqz p1, :cond_3

    .line 2045
    invoke-virtual {p1}, Lo/setQueue;->onMessageChannelReady()V

    :cond_3
    return-object p2
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/Class;)Lo/setQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/setQueue;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lo/setMetadata;->onPostMessage(Ljava/lang/String;Ljava/lang/Class;)Lo/setQueue;

    move-result-object p1

    return-object p1

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
