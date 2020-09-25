.class final Lo/MediaSessionCompat$3$extraCallback;
.super Landroidx/preference/Preference;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompat$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private onNavigationEvent:J


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;J)V"
        }
    .end annotation

    .line 168
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1178
    sget p1, Lo/onFastForward$onNavigationEvent;->expand_button:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->extraCallback(I)V

    .line 1179
    sget p1, Lo/onFastForward$extraCallback;->ic_arrow_down_24dp:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onMessageChannelReady(I)V

    .line 1180
    sget p1, Lo/onFastForward$onMessageChannelReady;->expand_button_title:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onNavigationEvent(I)V

    const/16 p1, 0x3e7

    .line 1182
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->ICustomTabsCallback(I)V

    .line 1192
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 1195
    invoke-virtual {v1}, Landroidx/preference/Preference;->getInterfaceDescriptor()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1196
    instance-of v3, v1, Landroidx/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1197
    move-object v4, v1

    check-cast v4, Landroidx/preference/PreferenceGroup;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1199
    :cond_1
    invoke-virtual {v1}, Landroidx/preference/Preference;->INotificationSideChannel()Landroidx/preference/PreferenceGroup;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_0

    .line 1201
    check-cast v1, Landroidx/preference/PreferenceGroup;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1205
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 1209
    :cond_3
    invoke-virtual {p0}, Landroidx/preference/Preference;->IPostMessageService$Stub()Landroid/content/Context;

    move-result-object v1

    sget v3, Lo/onFastForward$onMessageChannelReady;->summary_collapsed_preference_list:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1214
    :cond_4
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->extraCallback(Ljava/lang/CharSequence;)V

    const-wide/32 p1, 0xf4240

    add-long/2addr p3, p1

    .line 174
    iput-wide p3, p0, Lo/MediaSessionCompat$3$extraCallback;->onNavigationEvent:J

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lo/MediaSessionCompat$3$extraCallback;->onNavigationEvent:J

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/onPlayFromMediaId;)V
    .locals 1

    .line 219
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onMessageChannelReady(Lo/onPlayFromMediaId;)V

    const/4 v0, 0x0

    .line 2095
    iput-boolean v0, p1, Lo/onPlayFromMediaId;->onNavigationEvent:Z

    return-void
.end method
