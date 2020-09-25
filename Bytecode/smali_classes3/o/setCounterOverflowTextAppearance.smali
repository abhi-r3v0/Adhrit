.class public final Lo/setCounterOverflowTextAppearance;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final onPostMessage:Lo/setCheckedIcon;


# direct methods
.method public constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    return-void
.end method

.method private final extraCallback()Z
    .locals 5

    .line 73
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->IPostMessageService:Lo/setIconTint;

    invoke-virtual {v0}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final onMessageChannelReady()Z
    .locals 6

    .line 65
    invoke-direct {p0}, Lo/setCounterOverflowTextAppearance;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v2

    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    .line 68
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->IPostMessageService:Lo/setIconTint;

    invoke-virtual {v0}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    .line 69
    invoke-virtual {v0}, Lo/setCheckedIcon;->onPostMessage()Lo/setStartIconTintList;

    move-result-object v0

    const/4 v4, 0x0

    .line 70
    sget-object v5, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$6:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v4, v5}, Lo/setStartIconTintList;->ICustomTabsCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 10

    .line 4
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    .line 5
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 6
    invoke-direct {p0}, Lo/setCounterOverflowTextAppearance;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Lo/setCounterOverflowTextAppearance;->onMessageChannelReady()Z

    move-result v0

    const-wide/16 v1, 0x1

    const-string v3, "_cc"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy:Lo/setStrokeWidthResource;

    invoke-virtual {v0, v4}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "(not set)"

    const-string v5, "source"

    .line 12
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "medium"

    .line 13
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_cis"

    const-string v5, "intent"

    .line 14
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 16
    iget-object v1, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    .line 17
    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v1

    const-string v2, "auto"

    const-string v3, "_cmpx"

    .line 18
    invoke-virtual {v1, v2, v3, v0}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 20
    :cond_1
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy:Lo/setStrokeWidthResource;

    invoke-virtual {v0}, Lo/setStrokeWidthResource;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 22
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->ICustomTabsCallback$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Cache still valid but referrer not found"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_1

    .line 23
    :cond_2
    iget-object v5, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v5}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v5

    iget-object v5, v5, Lo/setBackgroundTintList;->IPostMessageService:Lo/setIconTint;

    invoke-virtual {v5}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v5

    const-wide/32 v7, 0x36ee80

    .line 24
    div-long/2addr v5, v7

    sub-long/2addr v5, v1

    mul-long v5, v5, v7

    .line 26
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    new-instance v2, Landroid/util/Pair;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_3
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0, v3, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 35
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    .line 36
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "_cmp"

    .line 37
    invoke-virtual {v0, v1, v3, v2}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    :goto_1
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy:Lo/setStrokeWidthResource;

    invoke-virtual {v0, v4}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 39
    :goto_2
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->IPostMessageService:Lo/setIconTint;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lo/setIconTint;->ICustomTabsCallback(J)V

    return-void
.end method

.method final onMessageChannelReady(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    .line 42
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 43
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->cancel()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    .line 45
    invoke-virtual {p2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p1, "auto"

    .line 49
    :cond_2
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 50
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 51
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 52
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x0

    .line 56
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 57
    iget-object p2, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p2

    iget-object p2, p2, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy:Lo/setStrokeWidthResource;

    invoke-virtual {p2, p1}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    .line 59
    invoke-virtual {p1}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object p1

    iget-object p1, p1, Lo/setBackgroundTintList;->IPostMessageService:Lo/setIconTint;

    iget-object p2, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    .line 60
    invoke-virtual {p2}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p2

    invoke-interface {p2}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/setIconTint;->ICustomTabsCallback(J)V

    :cond_5
    return-void
.end method

.method final onNavigationEvent()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lo/setCounterOverflowTextAppearance;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/setCounterOverflowTextAppearance;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lo/setCounterOverflowTextAppearance;->onPostMessage:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy:Lo/setStrokeWidthResource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/setStrokeWidthResource;->onPostMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
