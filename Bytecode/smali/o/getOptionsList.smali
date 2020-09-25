.class public final Lo/getOptionsList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getOptionsList$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field extraCallback:I

.field onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/getOptionsList$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:I

.field onPostMessage:I


# direct methods
.method public constructor <init>(Lo/removeSubscription;)V
    .locals 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/getOptionsList;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p1}, Lo/removeSubscription;->onRelationshipValidationResult()I

    move-result v0

    iput v0, p0, Lo/getOptionsList;->ICustomTabsCallback:I

    .line 93
    invoke-virtual {p1}, Lo/removeSubscription;->asInterface()I

    move-result v0

    iput v0, p0, Lo/getOptionsList;->onNavigationEvent:I

    .line 1773
    iget v0, p1, Lo/removeSubscription;->getExtras:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1776
    :cond_0
    iget v0, p1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 94
    :goto_0
    iput v0, p0, Lo/getOptionsList;->onPostMessage:I

    .line 1830
    iget v0, p1, Lo/removeSubscription;->getExtras:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1833
    :cond_1
    iget v0, p1, Lo/removeSubscription;->INotificationSideChannel:I

    .line 95
    :goto_1
    iput v0, p0, Lo/getOptionsList;->extraCallback:I

    .line 96
    invoke-virtual {p1}, Lo/removeSubscription;->requestPostMessageChannel()Ljava/util/ArrayList;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_2

    .line 98
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 99
    iget-object v3, p0, Lo/getOptionsList;->onMessageChannelReady:Ljava/util/ArrayList;

    new-instance v4, Lo/getOptionsList$ICustomTabsCallback;

    invoke-direct {v4, v1}, Lo/getOptionsList$ICustomTabsCallback;-><init>(Lo/MediaBrowserCompat$ServiceBinderWrapper;)V

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/removeSubscription;)V
    .locals 11

    .line 126
    iget v0, p0, Lo/getOptionsList;->ICustomTabsCallback:I

    invoke-virtual {p1, v0}, Lo/removeSubscription;->onMessageChannelReady(I)V

    .line 127
    iget v0, p0, Lo/getOptionsList;->onNavigationEvent:I

    invoke-virtual {p1, v0}, Lo/removeSubscription;->extraCallback(I)V

    .line 128
    iget v0, p0, Lo/getOptionsList;->onPostMessage:I

    invoke-virtual {p1, v0}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 129
    iget v0, p0, Lo/getOptionsList;->extraCallback:I

    invoke-virtual {p1, v0}, Lo/removeSubscription;->onPostMessage(I)V

    .line 130
    iget-object v0, p0, Lo/getOptionsList;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 131
    iget-object v2, p0, Lo/getOptionsList;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getOptionsList$ICustomTabsCallback;

    .line 2081
    iget-object v3, v2, Lo/getOptionsList$ICustomTabsCallback;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 2118
    iget-object v3, v3, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 2081
    invoke-virtual {p1, v3}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v4

    .line 2082
    iget-object v5, v2, Lo/getOptionsList$ICustomTabsCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget v6, v2, Lo/getOptionsList$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v8, v2, Lo/getOptionsList$ICustomTabsCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    iget v9, v2, Lo/getOptionsList$ICustomTabsCallback;->onPostMessage:I

    const/4 v7, -0x1

    const/4 v10, 0x0

    .line 2194
    invoke-virtual/range {v4 .. v10}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
