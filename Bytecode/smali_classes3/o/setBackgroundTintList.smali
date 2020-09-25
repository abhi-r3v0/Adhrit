.class final Lo/setBackgroundTintList;
.super Lo/setChipIconEnabled;
.source ""


# static fields
.field static final onNavigationEvent:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Lo/setIconTint;

.field public final ICustomTabsCallback$Stub:Lo/setIconTint;

.field public final ICustomTabsCallback$Stub$Proxy:Lo/setIconSize;

.field public final ICustomTabsService:Lo/setIconTint;

.field public final ICustomTabsService$Stub:Lo/setStrokeWidthResource;

.field public final ICustomTabsService$Stub$Proxy:Lo/setStrokeWidthResource;

.field private INotificationSideChannel:Ljava/lang/String;

.field public final IPostMessageService:Lo/setIconTint;

.field public final IPostMessageService$Stub:Lo/setIconPadding;

.field private IPostMessageService$Stub$Proxy:Landroid/content/SharedPreferences;

.field public final asBinder:Lo/setIconTint;

.field public final asInterface:Lo/setStrokeWidthResource;

.field private cancel:Z

.field private cancelAll:J

.field public extraCallback:Lo/setIconResource;

.field public extraCommand:Lo/setIconSize;

.field public final getInterfaceDescriptor:Lo/setIconTint;

.field public mayLaunchUrl:Lo/setIconTint;

.field public final newSession:Lo/setStrokeWidthResource;

.field public final onMessageChannelReady:Lo/setIconTint;

.field public final onPostMessage:Lo/setIconTint;

.field public final onRelationshipValidationResult:Lo/setIconTint;

.field public final onTransact:Lo/setIconTint;

.field public postMessage:Lo/setIconSize;

.field public requestPostMessageChannel:Z

.field public final updateVisuals:Lo/setIconTint;

.field public final warmup:Lo/setIconSize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 152
    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lo/setBackgroundTintList;->onNavigationEvent:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lo/setCheckedIcon;)V
    .locals 5

    .line 19
    invoke-direct {p0, p1}, Lo/setChipIconEnabled;-><init>(Lo/setCheckedIcon;)V

    .line 20
    new-instance p1, Lo/setIconTint;

    const-wide/16 v0, 0x0

    const-string v2, "last_upload"

    invoke-direct {p1, p0, v2, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->onMessageChannelReady:Lo/setIconTint;

    .line 21
    new-instance p1, Lo/setIconTint;

    const-string v2, "last_upload_attempt"

    invoke-direct {p1, p0, v2, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->ICustomTabsCallback:Lo/setIconTint;

    .line 22
    new-instance p1, Lo/setIconTint;

    const-string v2, "backoff"

    invoke-direct {p1, p0, v2, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->onPostMessage:Lo/setIconTint;

    .line 23
    new-instance p1, Lo/setIconTint;

    const-string v2, "last_delete_stale"

    invoke-direct {p1, p0, v2, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->onTransact:Lo/setIconTint;

    .line 24
    new-instance p1, Lo/setIconTint;

    const-string v2, "time_before_start"

    const-wide/16 v3, 0x2710

    invoke-direct {p1, p0, v2, v3, v4}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->ICustomTabsService:Lo/setIconTint;

    .line 25
    new-instance p1, Lo/setIconTint;

    const-string v2, "session_timeout"

    const-wide/32 v3, 0x1b7740

    invoke-direct {p1, p0, v2, v3, v4}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->getInterfaceDescriptor:Lo/setIconTint;

    .line 26
    new-instance p1, Lo/setIconSize;

    const-string v2, "start_new_session"

    const/4 v3, 0x1

    invoke-direct {p1, p0, v2, v3}, Lo/setIconSize;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;Z)V

    iput-object p1, p0, Lo/setBackgroundTintList;->warmup:Lo/setIconSize;

    .line 27
    new-instance p1, Lo/setIconTint;

    const-string v2, "last_pause_time"

    invoke-direct {p1, p0, v2, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->updateVisuals:Lo/setIconTint;

    .line 28
    new-instance p1, Lo/setStrokeWidthResource;

    const/4 v2, 0x0

    const-string v3, "non_personalized_ads"

    invoke-direct {p1, p0, v3, v2}, Lo/setStrokeWidthResource;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setBackgroundTintList;->newSession:Lo/setStrokeWidthResource;

    .line 29
    new-instance p1, Lo/setIconSize;

    const/4 v3, 0x0

    const-string v4, "allow_remote_dynamite"

    invoke-direct {p1, p0, v4, v3}, Lo/setIconSize;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;Z)V

    iput-object p1, p0, Lo/setBackgroundTintList;->ICustomTabsCallback$Stub$Proxy:Lo/setIconSize;

    .line 30
    new-instance p1, Lo/setIconTint;

    const-string v4, "midnight_offset"

    invoke-direct {p1, p0, v4, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->ICustomTabsCallback$Stub:Lo/setIconTint;

    .line 31
    new-instance p1, Lo/setIconTint;

    const-string v4, "first_open_time"

    invoke-direct {p1, p0, v4, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->asBinder:Lo/setIconTint;

    .line 32
    new-instance p1, Lo/setIconTint;

    const-string v4, "app_install_time"

    invoke-direct {p1, p0, v4, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->onRelationshipValidationResult:Lo/setIconTint;

    .line 33
    new-instance p1, Lo/setStrokeWidthResource;

    const-string v4, "app_instance_id"

    invoke-direct {p1, p0, v4, v2}, Lo/setStrokeWidthResource;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setBackgroundTintList;->asInterface:Lo/setStrokeWidthResource;

    .line 34
    new-instance p1, Lo/setIconSize;

    const-string v4, "app_backgrounded"

    invoke-direct {p1, p0, v4, v3}, Lo/setIconSize;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;Z)V

    iput-object p1, p0, Lo/setBackgroundTintList;->postMessage:Lo/setIconSize;

    .line 35
    new-instance p1, Lo/setIconSize;

    const-string v4, "deep_link_retrieval_complete"

    invoke-direct {p1, p0, v4, v3}, Lo/setIconSize;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;Z)V

    iput-object p1, p0, Lo/setBackgroundTintList;->extraCommand:Lo/setIconSize;

    .line 36
    new-instance p1, Lo/setIconTint;

    const-string v3, "deep_link_retrieval_attempts"

    invoke-direct {p1, p0, v3, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->mayLaunchUrl:Lo/setIconTint;

    .line 37
    new-instance p1, Lo/setStrokeWidthResource;

    const-string v3, "firebase_feature_rollouts"

    invoke-direct {p1, p0, v3, v2}, Lo/setStrokeWidthResource;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setBackgroundTintList;->ICustomTabsService$Stub:Lo/setStrokeWidthResource;

    .line 38
    new-instance p1, Lo/setStrokeWidthResource;

    const-string v3, "deferred_attribution_cache"

    invoke-direct {p1, p0, v3, v2}, Lo/setStrokeWidthResource;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lo/setBackgroundTintList;->ICustomTabsService$Stub$Proxy:Lo/setStrokeWidthResource;

    .line 39
    new-instance p1, Lo/setIconTint;

    const-string v3, "deferred_attribution_cache_timestamp"

    invoke-direct {p1, p0, v3, v0, v1}, Lo/setIconTint;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;J)V

    iput-object p1, p0, Lo/setBackgroundTintList;->IPostMessageService:Lo/setIconTint;

    .line 40
    new-instance p1, Lo/setIconPadding;

    const-string v0, "default_event_parameters"

    invoke-direct {p1, p0, v0, v2}, Lo/setIconPadding;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p1, p0, Lo/setBackgroundTintList;->IPostMessageService$Stub:Lo/setIconPadding;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Boolean;)V
    .locals 2

    .line 100
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 102
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled_from_api"

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 105
    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 106
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 59
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gmp_app_id"

    .line 60
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 3

    .line 63
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 64
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "gmp_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final ICustomTabsService$Stub()Ljava/lang/Boolean;
    .locals 3

    .line 96
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 97
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method final ICustomTabsService$Stub$Proxy()Lo/zzq;
    .locals 3

    .line 125
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 127
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_settings"

    const-string v2, "G1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lo/zzq;->onMessageChannelReady(Ljava/lang/String;)Lo/zzq;

    move-result-object v0

    return-object v0
.end method

.method final IPostMessageService()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lo/setBackgroundTintList;->IPostMessageService$Stub$Proxy:Landroid/content/SharedPreferences;

    const-string v1, "deferred_analytics_collection"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final IPostMessageService$Stub()Ljava/lang/Boolean;
    .locals 3

    .line 108
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 110
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled_from_api"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final Q_()V
    .locals 9

    .line 43
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms.measurement.prefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lo/setBackgroundTintList;->IPostMessageService$Stub$Proxy:Landroid/content/SharedPreferences;

    const-string v2, "has_been_opened"

    .line 44
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lo/setBackgroundTintList;->requestPostMessageChannel:Z

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lo/setBackgroundTintList;->IPostMessageService$Stub$Proxy:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 47
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 49
    :cond_0
    new-instance v0, Lo/setIconResource;

    const-wide/16 v1, 0x0

    .line 50
    sget-object v3, Lo/zziq;->onMessageChannelReady:Lo/setStatusBarForegroundColor;

    const/4 v4, 0x0

    .line 51
    invoke-virtual {v3, v4}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 v8, 0x0

    const-string v5, "health_monitor"

    move-object v3, v0

    move-object v4, p0

    .line 53
    invoke-direct/range {v3 .. v8}, Lo/setIconResource;-><init>(Lo/setBackgroundTintList;Ljava/lang/String;JLo/BottomSheetBehavior;)V

    iput-object v0, p0, Lo/setBackgroundTintList;->extraCallback:Lo/setIconResource;

    return-void
.end method

.method final asBinder()Ljava/lang/Boolean;
    .locals 3

    .line 72
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 73
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final asInterface()Landroid/content/SharedPreferences;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 56
    invoke-virtual {p0}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 57
    iget-object v0, p0, Lo/setBackgroundTintList;->IPostMessageService$Stub$Proxy:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method final extraCallback(I)Z
    .locals 3

    .line 123
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_source"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 124
    invoke-static {p1, v0}, Lo/zzq;->ICustomTabsCallback(II)Z

    move-result p1

    return p1
.end method

.method final extraCallback(Lo/zzq;I)Z
    .locals 2

    .line 113
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->isCurrent:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 115
    invoke-virtual {p0, p2}, Lo/setBackgroundTintList;->extraCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lo/zzq;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    const-string v1, "consent_settings"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "consent_source"

    .line 118
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final onNavigationEvent(Ljava/lang/String;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 66
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "admob_app_id"

    .line 67
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final onNavigationEvent(Z)V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 77
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "use_service"

    .line 78
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final onPostMessage(Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 2
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lo/setBackgroundTintList;->INotificationSideChannel:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lo/setBackgroundTintList;->cancelAll:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 4
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lo/setBackgroundTintList;->INotificationSideChannel:Ljava/lang/String;

    iget-boolean v1, p0, Lo/setBackgroundTintList;->cancel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v3

    invoke-virtual {v3, p1}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lo/setBackgroundTintList;->cancelAll:J

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Lo/getTotalAmountDue;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lo/getTotalAmountDue;->getAdvertisingIdInfo(Landroid/content/Context;)Lo/getTotalAmountDue$onNavigationEvent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lo/getTotalAmountDue$onNavigationEvent;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lo/setBackgroundTintList;->INotificationSideChannel:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lo/getTotalAmountDue$onNavigationEvent;->isLimitAdTrackingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lo/setBackgroundTintList;->cancel:Z

    .line 11
    :cond_1
    iget-object p1, p0, Lo/setBackgroundTintList;->INotificationSideChannel:Ljava/lang/String;

    if-nez p1, :cond_2

    .line 12
    iput-object v0, p0, Lo/setBackgroundTintList;->INotificationSideChannel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    iput-object v0, p0, Lo/setBackgroundTintList;->INotificationSideChannel:Ljava/lang/String;

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 17
    invoke-static {p1}, Lo/getTotalAmountDue;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 18
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lo/setBackgroundTintList;->INotificationSideChannel:Ljava/lang/String;

    iget-boolean v1, p0, Lo/setBackgroundTintList;->cancel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method final onPostMessage(Ljava/lang/Boolean;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 90
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 93
    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method final onPostMessage(Z)V
    .locals 3

    .line 140
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 141
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 143
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "App measurement setting deferred collection"

    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    .line 145
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected final onPostMessage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final onPostMessage(J)Z
    .locals 3

    .line 149
    iget-object v0, p0, Lo/setBackgroundTintList;->getInterfaceDescriptor:Lo/setIconTint;

    invoke-virtual {v0}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lo/setBackgroundTintList;->updateVisuals:Lo/setIconTint;

    .line 150
    invoke-virtual {v0}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final onRelationshipValidationResult()Ljava/lang/String;
    .locals 3

    .line 70
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 71
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "admob_app_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final onTransact()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 82
    invoke-virtual {p0}, Lo/setBackgroundTintList;->ICustomTabsService$Stub()Ljava/lang/Boolean;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 84
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 85
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, v0}, Lo/setBackgroundTintList;->onPostMessage(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method protected final validateRelationship()Ljava/lang/String;
    .locals 4

    .line 129
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 130
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lo/setChipTextResource;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v2

    .line 132
    invoke-virtual {v2}, Lo/setChipIconEnabled;->IPostMessageService$Stub$Proxy()V

    .line 133
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 135
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 136
    invoke-virtual {p0}, Lo/setBackgroundTintList;->asInterface()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 137
    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method
