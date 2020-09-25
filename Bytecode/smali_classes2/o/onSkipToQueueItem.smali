.class public final Lo/onSkipToQueueItem;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""

# interfaces
.implements Landroidx/preference/Preference$extraCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSkipToQueueItem$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lo/onPlayFromMediaId;",
        ">;",
        "Landroidx/preference/Preference$extraCallback;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroidx/preference/PreferenceGroup;

.field private asBinder:Lo/onSkipToQueueItem$onNavigationEvent;

.field private asInterface:Lo/MediaSessionCompat$3;

.field extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Landroid/os/Handler;

.field private onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Ljava/lang/Runnable;

.field private onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/onSkipToQueueItem$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lo/onSkipToQueueItem;-><init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Landroidx/preference/PreferenceGroup;Landroid/os/Handler;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 74
    new-instance v0, Lo/onSkipToQueueItem$onNavigationEvent;

    invoke-direct {v0}, Lo/onSkipToQueueItem$onNavigationEvent;-><init>()V

    iput-object v0, p0, Lo/onSkipToQueueItem;->asBinder:Lo/onSkipToQueueItem$onNavigationEvent;

    .line 80
    new-instance v0, Lo/onSkipToQueueItem$5;

    invoke-direct {v0, p0}, Lo/onSkipToQueueItem$5;-><init>(Lo/onSkipToQueueItem;)V

    iput-object v0, p0, Lo/onSkipToQueueItem;->onPostMessage:Ljava/lang/Runnable;

    .line 126
    iput-object p1, p0, Lo/onSkipToQueueItem;->ICustomTabsCallback:Landroidx/preference/PreferenceGroup;

    .line 127
    iput-object p2, p0, Lo/onSkipToQueueItem;->onMessageChannelReady:Landroid/os/Handler;

    .line 128
    new-instance p2, Lo/MediaSessionCompat$3;

    invoke-direct {p2, p1, p0}, Lo/MediaSessionCompat$3;-><init>(Landroidx/preference/PreferenceGroup;Lo/onSkipToQueueItem;)V

    iput-object p2, p0, Lo/onSkipToQueueItem;->asInterface:Lo/MediaSessionCompat$3;

    .line 131
    iget-object p1, p0, Lo/onSkipToQueueItem;->ICustomTabsCallback:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->onPostMessage(Landroidx/preference/Preference$extraCallback;)V

    .line 133
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/onSkipToQueueItem;->extraCallback:Ljava/util/List;

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/onSkipToQueueItem;->onNavigationEvent:Ljava/util/List;

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/onSkipToQueueItem;->onTransact:Ljava/util/List;

    .line 137
    iget-object p1, p0, Lo/onSkipToQueueItem;->ICustomTabsCallback:Landroidx/preference/PreferenceGroup;

    instance-of p2, p1, Landroidx/preference/PreferenceScreen;

    if-eqz p2, :cond_0

    .line 138
    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 1117
    iget-boolean p1, p1, Landroidx/preference/PreferenceScreen;->onPostMessage:Z

    .line 138
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 140
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Lo/onSkipToQueueItem;->extraCallback()V

    return-void
.end method

.method private static ICustomTabsCallback(Landroidx/preference/Preference;Lo/onSkipToQueueItem$onNavigationEvent;)Lo/onSkipToQueueItem$onNavigationEvent;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance p1, Lo/onSkipToQueueItem$onNavigationEvent;

    invoke-direct {p1}, Lo/onSkipToQueueItem$onNavigationEvent;-><init>()V

    .line 239
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lo/onSkipToQueueItem$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Landroidx/preference/Preference;->ICustomTabsService()I

    move-result v0

    iput v0, p1, Lo/onSkipToQueueItem$onNavigationEvent;->ICustomTabsCallback:I

    .line 241
    invoke-virtual {p0}, Landroidx/preference/Preference;->newSession()I

    move-result p0

    iput p0, p1, Lo/onSkipToQueueItem$onNavigationEvent;->onPostMessage:I

    return-object p1
.end method

.method private ICustomTabsCallback(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;",
            "Landroidx/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 3469
    monitor-enter p2

    .line 3470
    :try_start_0
    iget-object v0, p2, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3471
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4189
    iget-object v0, p2, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4199
    iget-object v2, p2, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/preference/Preference;

    .line 217
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 4246
    invoke-static {v2, v3}, Lo/onSkipToQueueItem;->ICustomTabsCallback(Landroidx/preference/Preference;Lo/onSkipToQueueItem$onNavigationEvent;)Lo/onSkipToQueueItem$onNavigationEvent;

    move-result-object v3

    .line 4247
    iget-object v4, p0, Lo/onSkipToQueueItem;->onTransact:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4248
    iget-object v4, p0, Lo/onSkipToQueueItem;->onTransact:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_0
    instance-of v3, v2, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    .line 222
    move-object v3, v2

    check-cast v3, Landroidx/preference/PreferenceGroup;

    .line 223
    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->asInterface()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    invoke-direct {p0, p1, v3}, Lo/onSkipToQueueItem;->ICustomTabsCallback(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 228
    :cond_1
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->onPostMessage(Landroidx/preference/Preference$extraCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 3471
    monitor-exit p2

    throw p1
.end method


# virtual methods
.method final extraCallback()V
    .locals 3

    .line 154
    iget-object v0, p0, Lo/onSkipToQueueItem;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    const/4 v2, 0x0

    .line 157
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->onPostMessage(Landroidx/preference/Preference$extraCallback;)V

    goto :goto_0

    .line 159
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/onSkipToQueueItem;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    iget-object v1, p0, Lo/onSkipToQueueItem;->ICustomTabsCallback:Landroidx/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Lo/onSkipToQueueItem;->ICustomTabsCallback(Ljava/util/List;Landroidx/preference/PreferenceGroup;)V

    .line 162
    iget-object v1, p0, Lo/onSkipToQueueItem;->asInterface:Lo/MediaSessionCompat$3;

    iget-object v2, p0, Lo/onSkipToQueueItem;->ICustomTabsCallback:Landroidx/preference/PreferenceGroup;

    .line 163
    invoke-virtual {v1, v2}, Lo/MediaSessionCompat$3;->ICustomTabsCallback(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v1

    .line 166
    iput-object v1, p0, Lo/onSkipToQueueItem;->extraCallback:Ljava/util/List;

    .line 167
    iput-object v0, p0, Lo/onSkipToQueueItem;->onNavigationEvent:Ljava/util/List;

    .line 169
    iget-object v1, p0, Lo/onSkipToQueueItem;->ICustomTabsCallback:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/Preference;->IPostMessageService()Lo/onPlayFromUri;

    .line 202
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 206
    invoke-virtual {v1}, Landroidx/preference/Preference;->cancel()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 254
    iget-object v0, p0, Lo/onSkipToQueueItem;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItemId(I)J
    .locals 2

    .line 264
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    if-ltz p1, :cond_2

    .line 4258
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 4259
    :cond_1
    iget-object v0, p0, Lo/onSkipToQueueItem;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 267
    :goto_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 5258
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 5259
    :cond_0
    iget-object v0, p0, Lo/onSkipToQueueItem;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 335
    :goto_1
    iget-object v0, p0, Lo/onSkipToQueueItem;->asBinder:Lo/onSkipToQueueItem$onNavigationEvent;

    invoke-static {p1, v0}, Lo/onSkipToQueueItem;->ICustomTabsCallback(Landroidx/preference/Preference;Lo/onSkipToQueueItem$onNavigationEvent;)Lo/onSkipToQueueItem$onNavigationEvent;

    move-result-object p1

    iput-object p1, p0, Lo/onSkipToQueueItem;->asBinder:Lo/onSkipToQueueItem$onNavigationEvent;

    .line 337
    iget-object v0, p0, Lo/onSkipToQueueItem;->onTransact:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    return p1

    .line 341
    :cond_2
    iget-object p1, p0, Lo/onSkipToQueueItem;->onTransact:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 342
    iget-object v0, p0, Lo/onSkipToQueueItem;->onTransact:Ljava/util/List;

    new-instance v1, Lo/onSkipToQueueItem$onNavigationEvent;

    iget-object v2, p0, Lo/onSkipToQueueItem;->asBinder:Lo/onSkipToQueueItem$onNavigationEvent;

    invoke-direct {v1, v2}, Lo/onSkipToQueueItem$onNavigationEvent;-><init>(Lo/onSkipToQueueItem$onNavigationEvent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p1
.end method

.method public final synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 45
    check-cast p1, Lo/onPlayFromMediaId;

    if-ltz p2, :cond_1

    .line 6258
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 6259
    :cond_0
    iget-object v0, p0, Lo/onSkipToQueueItem;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 5381
    :goto_1
    invoke-virtual {p2, p1}, Landroidx/preference/Preference;->onMessageChannelReady(Lo/onPlayFromMediaId;)V

    return-void
.end method

.method public final synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 6349
    iget-object v0, p0, Lo/onSkipToQueueItem;->onTransact:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/onSkipToQueueItem$onNavigationEvent;

    .line 6350
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 6352
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lo/onFastForward$asBinder;->BackgroundStyle:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 6353
    sget v2, Lo/onFastForward$asBinder;->BackgroundStyle_android_selectableItemBackground:I

    .line 6354
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 6356
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1080062

    invoke-static {v2, v3}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 6359
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 6361
    iget v1, p2, Lo/onSkipToQueueItem$onNavigationEvent;->ICustomTabsCallback:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6362
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6363
    invoke-static {p1, v2}, Lo/unregisterCallbackListener;->extraCallback(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v1, 0x1020018

    .line 6366
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 6368
    iget v2, p2, Lo/onSkipToQueueItem$onNavigationEvent;->onPostMessage:I

    if-eqz v2, :cond_2

    .line 6369
    iget p2, p2, Lo/onSkipToQueueItem$onNavigationEvent;->onPostMessage:I

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    :cond_2
    const/16 p2, 0x8

    .line 6371
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 6375
    :cond_3
    :goto_0
    new-instance p2, Lo/onPlayFromMediaId;

    invoke-direct {p2, p1}, Lo/onPlayFromMediaId;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final onMessageChannelReady()V
    .locals 2

    .line 282
    iget-object v0, p0, Lo/onSkipToQueueItem;->onMessageChannelReady:Landroid/os/Handler;

    iget-object v1, p0, Lo/onSkipToQueueItem;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 283
    iget-object v0, p0, Lo/onSkipToQueueItem;->onMessageChannelReady:Landroid/os/Handler;

    iget-object v1, p0, Lo/onSkipToQueueItem;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onMessageChannelReady(Landroidx/preference/Preference;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lo/onSkipToQueueItem;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
