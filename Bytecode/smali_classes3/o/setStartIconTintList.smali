.class public final Lo/setStartIconTintList;
.super Lo/setChipTextResource;
.source ""


# instance fields
.field private extraCallback:Ljava/lang/Boolean;

.field private onMessageChannelReady:Lo/zzwe;

.field private onNavigationEvent:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setChipTextResource;-><init>(Lo/setCheckedIcon;)V

    .line 2
    sget-object p1, Lo/dispatchTransaction;->onMessageChannelReady:Lo/zzwe;

    iput-object p1, p0, Lo/setStartIconTintList;->onMessageChannelReady:Lo/zzwe;

    return-void
.end method

.method public static ICustomTabsCallback$Stub()J
    .locals 2

    .line 182
    sget-object v0, Lo/zziq;->extraCallback:Lo/setStatusBarForegroundColor;

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, v1}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private final IPostMessageService()Landroid/os/Bundle;
    .locals 4

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to load metadata: PackageManager is null"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/preferLastSpan$onMessageChannelReady;->onMessageChannelReady(Landroid/content/Context;)Lo/component28;

    move-result-object v1

    .line 117
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lo/component28;->onPostMessage(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 119
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v0

    .line 121
    :cond_1
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 123
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Failed to load metadata: Package name not found"

    invoke-virtual {v2, v3, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 187
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    .line 188
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object p2, v2, v6

    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "SystemProperties.get() threw an exception"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 197
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Could not access SystemProperties.get()"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 194
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Could not find SystemProperties.get() method"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_3
    move-exception p1

    .line 191
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Could not find SystemProperties class"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object p2
.end method

.method private final onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/setStatusBarForegroundColor<",
            "Ljava/lang/Integer;",
            ">;II)I"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result p1

    .line 78
    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 79
    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public static onRelationshipValidationResult()J
    .locals 2

    .line 160
    sget-object v0, Lo/zziq;->cancelAll:Lo/setStatusBarForegroundColor;

    const/4 v1, 0x0

    .line 161
    invoke-virtual {v0, v1}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)I
    .locals 3

    .line 19
    sget-object v0, Lo/zziq;->INotificationSideChannel$Default:Lo/setStatusBarForegroundColor;

    const/16 v1, 0x19

    const/16 v2, 0x64

    invoke-direct {p0, p1, v0, v1, v2}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;II)I

    move-result p1

    return p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/setStatusBarForegroundColor<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 49
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 51
    :cond_0
    iget-object v1, p0, Lo/setStartIconTintList;->onMessageChannelReady:Lo/zzwe;

    invoke-virtual {p2}, Lo/setStatusBarForegroundColor;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lo/zzwe;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 55
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 56
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 60
    :catch_0
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final ICustomTabsCallback(Lo/setFabAnimationMode;)Ljava/lang/String;
    .locals 5

    .line 163
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 164
    invoke-virtual {p1}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    .line 167
    invoke-virtual {v1, v2, v3}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p1}, Lo/setFabAnimationMode;->onTransact()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p1}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_1
    sget-object v2, Lo/zziq;->ICustomTabsCallback:Lo/setStatusBarForegroundColor;

    const/4 v3, 0x0

    .line 173
    invoke-virtual {v2, v3}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 174
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v4, Lo/zziq;->onPostMessage:Lo/setStatusBarForegroundColor;

    .line 175
    invoke-virtual {v4, v3}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 176
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "config/app/"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 177
    :goto_0
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {p1}, Lo/setFabAnimationMode;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    const-string v2, "app_instance_id"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "platform"

    const-string v2, "android"

    .line 179
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "gmp_version"

    const-string v2, "31049"

    .line 180
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 181
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 221
    invoke-super {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    return-void
.end method

.method public final ICustomTabsCallback$Stub(Ljava/lang/String;)Z
    .locals 2

    .line 202
    iget-object v0, p0, Lo/setStartIconTintList;->onMessageChannelReady:Lo/zzwe;

    const-string v1, "gaia_collection_enabled"

    invoke-interface {v0, p1, v1}, Lo/zzwe;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final ICustomTabsCallback$Stub$Proxy(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 207
    sget-object v0, Lo/zziq;->read:Lo/setStatusBarForegroundColor;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 210
    invoke-virtual {v0, p1}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 211
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 212
    :cond_0
    iget-object v1, p0, Lo/setStartIconTintList;->onMessageChannelReady:Lo/zzwe;

    invoke-virtual {v0}, Lo/setStatusBarForegroundColor;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lo/zzwe;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 223
    invoke-super {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 225
    invoke-super {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsService$Stub()Ljava/lang/String;
    .locals 2

    const-string v0, "debug.deferred.deeplink"

    const-string v1, ""

    .line 186
    invoke-direct {p0, v0, v1}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final ICustomTabsService$Stub$Proxy()Z
    .locals 2

    .line 214
    iget-object v0, p0, Lo/setStartIconTintList;->onNavigationEvent:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "app_measurement_lite"

    .line 215
    invoke-virtual {p0, v0}, Lo/setStartIconTintList;->onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/setStartIconTintList;->onNavigationEvent:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/setStartIconTintList;->onNavigationEvent:Ljava/lang/Boolean;

    .line 218
    :cond_0
    iget-object v0, p0, Lo/setStartIconTintList;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/setStartIconTintList;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->requestPostMessageChannel()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final IPostMessageService$Stub()Ljava/lang/String;
    .locals 2

    const-string v0, "debug.firebase.analytics.app"

    const-string v1, ""

    .line 185
    invoke-direct {p0, v0, v1}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final asBinder()Z
    .locals 1

    const-string v0, "firebase_analytics_collection_deactivated"

    .line 152
    invoke-virtual {p0, v0}, Lo/setStartIconTintList;->onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder(Ljava/lang/String;)Z
    .locals 2

    .line 203
    iget-object v0, p0, Lo/setStartIconTintList;->onMessageChannelReady:Lo/zzwe;

    const-string v1, "measurement.event_sampling_enabled"

    .line 204
    invoke-interface {v0, p1, v1}, Lo/zzwe;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final asInterface()Ljava/lang/Boolean;
    .locals 2

    .line 156
    invoke-static {}, Lo/BehindLiveWindowException;->onMessageChannelReady()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    sget-object v0, Lo/zziq;->MediaBrowserCompat$ItemCallback:Lo/setStatusBarForegroundColor;

    invoke-virtual {p0, v0}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "google_analytics_automatic_screen_reporting_enabled"

    .line 158
    invoke-virtual {p0, v0}, Lo/setStartIconTintList;->onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 159
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 157
    :cond_3
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final asInterface(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lo/setStartIconTintList;->IPostMessageService()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    return-object v1

    .line 145
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    .line 148
    :cond_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Failed to load string array from metadata: resource not found"

    invoke-virtual {v0, v2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method final extraCallback(Ljava/lang/String;)J
    .locals 2

    .line 33
    sget-object v0, Lo/zziq;->onNavigationEvent:Lo/setStatusBarForegroundColor;

    invoke-virtual {p0, p1, v0}, Lo/setStartIconTintList;->ICustomTabsCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 220
    invoke-super {p0}, Lo/setChipTextResource;->extraCallback()V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/setStatusBarForegroundColor<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 99
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 100
    :cond_0
    iget-object v1, p0, Lo/setStartIconTintList;->onMessageChannelReady:Lo/zzwe;

    invoke-virtual {p2}, Lo/setStatusBarForegroundColor;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lo/zzwe;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 104
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 105
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 106
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 229
    invoke-super {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 222
    invoke-super {p0}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 228
    invoke-super {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 226
    invoke-super {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method final onMessageChannelReady(Ljava/lang/String;)I
    .locals 3

    .line 27
    invoke-static {}, Lo/setCount;->onPostMessage()Z

    move-result v0

    const/16 v1, 0x19

    if-eqz v0, :cond_0

    sget-object v0, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$1:Lo/setStatusBarForegroundColor;

    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0, v2, v0}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lo/zziq;->setDefaultImpl:Lo/setStatusBarForegroundColor;

    const/16 v2, 0x64

    invoke-direct {p0, p1, v0, v1, v2}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;II)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/setStatusBarForegroundColor<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 64
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 66
    :cond_0
    iget-object v1, p0, Lo/setStartIconTintList;->onMessageChannelReady:Lo/zzwe;

    invoke-virtual {p2}, Lo/setStatusBarForegroundColor;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lo/zzwe;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 70
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 71
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 75
    :catch_0
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 76
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 219
    invoke-super {p0}, Lo/setChipTextResource;->onMessageChannelReady()V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)I
    .locals 1

    .line 26
    sget-object v0, Lo/zziq;->ICustomTabsCallback$Stub$Proxy:Lo/setStatusBarForegroundColor;

    invoke-virtual {p0, p1, v0}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result p1

    return p1
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lo/setStartIconTintList;->extraCallback:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-object v0, p0, Lo/setStartIconTintList;->extraCallback:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 37
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 38
    invoke-static {}, Lo/component19;->extraCallback()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/setStartIconTintList;->extraCallback:Ljava/lang/Boolean;

    .line 42
    :cond_1
    iget-object v0, p0, Lo/setStartIconTintList;->extraCallback:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/setStartIconTintList;->extraCallback:Ljava/lang/Boolean;

    .line 44
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 45
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 46
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/setStartIconTintList;->extraCallback:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/setStatusBarForegroundColor<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 107
    invoke-virtual {p0, p1, p2}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result p1

    return p1
.end method

.method public final onNavigationEvent(Lo/setStatusBarForegroundColor;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setStatusBarForegroundColor<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0, p1}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/setStatusBarForegroundColor;)D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/setStatusBarForegroundColor<",
            "Ljava/lang/Double;",
            ">;)D"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 83
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 84
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 85
    :cond_0
    iget-object v1, p0, Lo/setStartIconTintList;->onMessageChannelReady:Lo/zzwe;

    invoke-virtual {p2}, Lo/setStatusBarForegroundColor;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lo/zzwe;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 89
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    .line 90
    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 91
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    .line 94
    :catch_0
    invoke-virtual {p2, v0}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 95
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public final onPostMessage()I
    .locals 4

    .line 6
    invoke-static {}, Lo/setCount;->onPostMessage()Z

    move-result v0

    const/16 v1, 0x19

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$2:Lo/setStatusBarForegroundColor;

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v3, v2}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    .line 12
    iget-object v2, v0, Lo/setHelperTextEnabled;->validateRelationship:Lo/setCheckedIcon;

    invoke-virtual {v2}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v2

    invoke-virtual {v2}, Lo/setChipSpacingResource;->cancel()Ljava/lang/Boolean;

    move-result-object v2

    .line 13
    invoke-virtual {v0}, Lo/setHelperTextEnabled;->onRelationshipValidationResult()I

    move-result v0

    const v3, 0x3131c

    if-ge v0, v3, :cond_1

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/16 v0, 0x64

    return v0

    :cond_2
    return v1
.end method

.method final onPostMessage(Ljava/lang/String;)I
    .locals 3

    .line 20
    invoke-static {}, Lo/setCount;->onPostMessage()Z

    move-result v0

    const/16 v1, 0x1f4

    if-eqz v0, :cond_0

    sget-object v0, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$1:Lo/setStatusBarForegroundColor;

    const/4 v2, 0x0

    .line 22
    invoke-virtual {p0, v2, v0}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lo/zziq;->getDefaultImpl:Lo/setStatusBarForegroundColor;

    const/16 v2, 0x7d0

    invoke-direct {p0, p1, v0, v1, v2}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;II)I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method final onPostMessage(Lo/zzwe;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lo/setStartIconTintList;->onMessageChannelReady:Lo/zzwe;

    return-void
.end method

.method final onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 125
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    invoke-direct {p0}, Lo/setStartIconTintList;->IPostMessageService()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v0, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v1

    .line 130
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 132
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final onTransact()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "google_analytics_adid_collection_enabled"

    .line 154
    invoke-virtual {p0, v0}, Lo/setStartIconTintList;->onRelationshipValidationResult(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method final onTransact(Ljava/lang/String;)Z
    .locals 1

    .line 206
    sget-object v0, Lo/zziq;->AudioAttributesCompatParcelizer:Lo/setStatusBarForegroundColor;

    invoke-virtual {p0, p1, v0}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 227
    invoke-super {p0}, Lo/setChipTextResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 230
    invoke-super {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 231
    invoke-super {p0}, Lo/setChipTextResource;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 224
    invoke-super {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
