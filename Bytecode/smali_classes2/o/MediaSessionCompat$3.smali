.class final Lo/MediaSessionCompat$3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$3$extraCallback;
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Landroid/content/Context;

.field private onNavigationEvent:Z

.field final onPostMessage:Lo/onSkipToQueueItem;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceGroup;Lo/onSkipToQueueItem;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lo/MediaSessionCompat$3;->onNavigationEvent:Z

    .line 42
    iput-object p2, p0, Lo/MediaSessionCompat$3;->onPostMessage:Lo/onSkipToQueueItem;

    .line 43
    invoke-virtual {p1}, Landroidx/preference/Preference;->IPostMessageService$Stub()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/MediaSessionCompat$3;->onMessageChannelReady:Landroid/content/Context;

    return-void
.end method

.method private onMessageChannelReady(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lo/MediaSessionCompat$3;->onNavigationEvent:Z

    .line 1174
    iget v1, p1, Landroidx/preference/PreferenceGroup;->onNavigationEvent:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 61
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    iget-object v4, p1, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v0, v4, :cond_9

    .line 1199
    iget-object v6, p1, Landroidx/preference/PreferenceGroup;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/preference/Preference;

    .line 68
    invoke-virtual {v6}, Landroidx/preference/Preference;->postMessage()Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v1, :cond_2

    .line 2174
    iget v7, p1, Landroidx/preference/PreferenceGroup;->onNavigationEvent:I

    if-ge v5, v7, :cond_1

    goto :goto_2

    .line 76
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 74
    :cond_2
    :goto_2
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_3
    instance-of v7, v6, Landroidx/preference/PreferenceGroup;

    if-nez v7, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 85
    :cond_3
    check-cast v6, Landroidx/preference/PreferenceGroup;

    .line 86
    invoke-virtual {v6}, Landroidx/preference/PreferenceGroup;->asInterface()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 91
    invoke-direct {p0, v6}, Lo/MediaSessionCompat$3;->onMessageChannelReady(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v6

    if-eqz v1, :cond_5

    .line 92
    iget-boolean v7, p0, Lo/MediaSessionCompat$3;->onNavigationEvent:Z

    if-nez v7, :cond_4

    goto :goto_4

    .line 93
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Nested expand buttons are not supported!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/preference/Preference;

    if-eqz v1, :cond_7

    .line 3174
    iget v8, p1, Landroidx/preference/PreferenceGroup;->onNavigationEvent:I

    if-ge v5, v8, :cond_6

    goto :goto_6

    .line 101
    :cond_6
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 99
    :cond_7
    :goto_6
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_8
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    if-eqz v1, :cond_a

    .line 4174
    iget v0, p1, Landroidx/preference/PreferenceGroup;->onNavigationEvent:I

    if-le v5, v0, :cond_a

    .line 5142
    new-instance v0, Lo/MediaSessionCompat$3$extraCallback;

    iget-object v4, p0, Lo/MediaSessionCompat$3;->onMessageChannelReady:Landroid/content/Context;

    .line 5143
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->onMessageChannelReady()J

    move-result-wide v5

    invoke-direct {v0, v4, v3, v5, v6}, Lo/MediaSessionCompat$3$extraCallback;-><init>(Landroid/content/Context;Ljava/util/List;J)V

    .line 5144
    new-instance v3, Lo/MediaSessionCompat$3$5;

    invoke-direct {v3, p0, p1}, Lo/MediaSessionCompat$3$5;-><init>(Lo/MediaSessionCompat$3;Landroidx/preference/PreferenceGroup;)V

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->extraCallback(Landroidx/preference/Preference$onPostMessage;)V

    .line 112
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_a
    iget-boolean p1, p0, Lo/MediaSessionCompat$3;->onNavigationEvent:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lo/MediaSessionCompat$3;->onNavigationEvent:Z

    return-object v2
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1}, Lo/MediaSessionCompat$3;->onMessageChannelReady(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
