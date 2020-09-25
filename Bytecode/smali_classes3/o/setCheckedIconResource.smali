.class public final Lo/setCheckedIconResource;
.super Lo/setStatusBarForegroundResource;
.source ""


# instance fields
.field private extraCallback:Ljava/lang/String;

.field private final onMessageChannelReady:Lo/setHint;

.field private onNavigationEvent:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lo/setHint;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lo/setCheckedIconResource;-><init>(Lo/setHint;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lo/setHint;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lo/setStatusBarForegroundResource;-><init>()V

    .line 4
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lo/setCheckedIconResource;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;Z)V
    .locals 3

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 119
    :try_start_0
    iget-object p2, p0, Lo/setCheckedIconResource;->onNavigationEvent:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const-string p2, "com.google.android.gms"

    .line 120
    iget-object v2, p0, Lo/setCheckedIconResource;->extraCallback:Ljava/lang/String;

    .line 121
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 122
    invoke-virtual {p2}, Lo/setHint;->warmup()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 123
    invoke-static {p2, v2}, Lo/component22;->onPostMessage(Landroid/content/Context;I)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 124
    invoke-virtual {p2}, Lo/setHint;->warmup()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lo/setMinAmount;->onMessageChannelReady(Landroid/content/Context;)Lo/setMinAmount;

    move-result-object p2

    .line 125
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p2, v2}, Lo/setMinAmount;->onNavigationEvent(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 127
    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lo/setCheckedIconResource;->onNavigationEvent:Ljava/lang/Boolean;

    .line 128
    :cond_2
    iget-object p2, p0, Lo/setCheckedIconResource;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    .line 129
    :cond_3
    iget-object p2, p0, Lo/setCheckedIconResource;->extraCallback:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 130
    iget-object p2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 131
    invoke-virtual {p2}, Lo/setHint;->warmup()Landroid/content/Context;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 132
    invoke-static {p2, v2, p1}, Lo/getTotalAmount;->uidHasPackageName(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 133
    iput-object p1, p0, Lo/setCheckedIconResource;->extraCallback:Ljava/lang/String;

    .line 134
    :cond_4
    iget-object p2, p0, Lo/setCheckedIconResource;->extraCallback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    return-void

    .line 135
    :cond_6
    new-instance p2, Ljava/lang/SecurityException;

    const-string v2, "Unknown calling package name \'%s\'."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 136
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 139
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 140
    invoke-virtual {v0}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 142
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Measurement Service called with invalid calling package. appId"

    .line 143
    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    throw p2

    .line 115
    :cond_7
    iget-object p1, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {p1}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Measurement Service called without app package"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 116
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final extraCallback(Ljava/lang/Runnable;)V
    .locals 1

    .line 224
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setShapeAppearanceModel;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;
    .locals 0

    .line 233
    iget-object p0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    return-object p0
.end method

.method private final onNavigationEvent(Lo/setCounterTextAppearance;Z)V
    .locals 2

    .line 108
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object p2, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lo/setCheckedIconResource;->ICustomTabsCallback(Ljava/lang/String;Z)V

    .line 110
    iget-object p2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 111
    invoke-virtual {p2}, Lo/setHint;->newSession()Lo/setHelperTextEnabled;

    move-result-object p2

    iget-object v0, p1, Lo/setCounterTextAppearance;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/setCounterTextAppearance;->requestPostMessageChannel:Ljava/lang/String;

    iget-object p1, p1, Lo/setCounterTextAppearance;->ICustomTabsService$Stub:Ljava/lang/String;

    .line 112
    invoke-virtual {p2, v0, v1, p1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Lo/zzir;Lo/setCounterTextAppearance;)Lo/zzir;
    .locals 8

    .line 26
    iget-object v0, p1, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    .line 27
    invoke-virtual {v0}, Lo/zzfa$zza;->onNavigationEvent()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p1, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    const-string v2, "_cis"

    invoke-virtual {v0, v2}, Lo/zzfa$zza;->extraCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "referrer broadcast"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "referrer API"

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    :cond_1
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 34
    invoke-virtual {v0}, Lo/setHint;->onNavigationEvent()Lo/setStartIconTintList;

    move-result-object v0

    iget-object p2, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    sget-object v2, Lo/zziq;->MediaBrowserCompat:Lo/setStatusBarForegroundColor;

    .line 35
    invoke-virtual {v0, p2, v2}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 39
    iget-object p2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {p2}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService()Lo/setFabAlignmentMode;

    move-result-object p2

    invoke-virtual {p1}, Lo/zzir;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event has been filtered "

    invoke-virtual {p2, v1, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    new-instance p2, Lo/zzir;

    iget-object v4, p1, Lo/zzir;->ICustomTabsCallback:Lo/zzfa$zza;

    iget-object v5, p1, Lo/zzir;->extraCallback:Ljava/lang/String;

    iget-wide v6, p1, Lo/zzir;->onPostMessage:J

    const-string v3, "_cmpx"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lo/zzir;-><init>(Ljava/lang/String;Lo/zzfa$zza;Ljava/lang/String;J)V

    return-object p2

    :cond_3
    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/setCounterTextAppearance;)V
    .locals 2

    .line 221
    iget-object v0, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/setCheckedIconResource;->ICustomTabsCallback(Ljava/lang/String;Z)V

    .line 222
    new-instance v0, Lo/setChipStrokeColorResource;

    invoke-direct {v0, p0, p1}, Lo/setChipStrokeColorResource;-><init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v0}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setStartIconVisible;)V
    .locals 2

    .line 161
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/setCheckedIconResource;->ICustomTabsCallback(Ljava/lang/String;Z)V

    .line 164
    new-instance v0, Lo/setStartIconVisible;

    invoke-direct {v0, p1}, Lo/setStartIconVisible;-><init>(Lo/setStartIconVisible;)V

    .line 165
    new-instance p1, Lo/setEllipsize;

    invoke-direct {p1, p0, v0}, Lo/setEllipsize;-><init>(Lo/setCheckedIconResource;Lo/setStartIconVisible;)V

    invoke-direct {p0, p1}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;ZLo/setCounterTextAppearance;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lo/setCounterTextAppearance;",
            ")",
            "Ljava/util/List<",
            "Lo/setError;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0, p4, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 168
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 169
    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setMaxLines;

    invoke-direct {v1, p0, p4, p1, p2}, Lo/setMaxLines;-><init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 171
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 172
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setErrorIconDrawable;

    if-nez p3, :cond_1

    .line 174
    iget-object v1, v0, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    :cond_1
    new-instance v1, Lo/setError;

    invoke-direct {v1, v0}, Lo/setError;-><init>(Lo/setErrorIconDrawable;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 179
    :goto_1
    iget-object p2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 180
    invoke-virtual {p2}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 181
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    iget-object p3, p4, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 182
    invoke-static {p3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    const-string p4, "Failed to query user properties. appId"

    .line 183
    invoke-virtual {p2, p4, p3, p1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final extraCallback(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 145
    new-instance v7, Lo/setChipText;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p3

    move-wide v5, p1

    invoke-direct/range {v0 .. v6}, Lo/setChipText;-><init>(Lo/setCheckedIconResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v7}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Lo/setCounterTextAppearance;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 106
    new-instance v0, Lo/setTextAppearanceResource;

    invoke-direct {v0, p0, p1}, Lo/setTextAppearanceResource;-><init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v0}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback(Lo/zzir;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    const/4 p3, 0x1

    .line 44
    invoke-direct {p0, p2, p3}, Lo/setCheckedIconResource;->ICustomTabsCallback(Ljava/lang/String;Z)V

    .line 45
    new-instance p3, Lo/setChipStrokeColor;

    invoke-direct {p3, p0, p1, p2}, Lo/setChipStrokeColor;-><init>(Lo/setCheckedIconResource;Lo/zzir;Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setCounterTextAppearance;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 153
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {v0, p1}, Lo/setHint;->onNavigationEvent(Lo/setCounterTextAppearance;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V
    .locals 1

    .line 154
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p2, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 157
    new-instance v0, Lo/setStartIconVisible;

    invoke-direct {v0, p1}, Lo/setStartIconVisible;-><init>(Lo/setStartIconVisible;)V

    .line 158
    iget-object p1, p2, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    iput-object p1, v0, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 159
    new-instance p1, Lo/setChipDrawable;

    invoke-direct {p1, p0, v0, p2}, Lo/setChipDrawable;-><init>(Lo/setCheckedIconResource;Lo/setStartIconVisible;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, p1}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/zzir;Lo/setCounterTextAppearance;)V
    .locals 1

    .line 21
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p2, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 23
    new-instance v0, Lo/setChipCornerRadius;

    invoke-direct {v0, p0, p1, p2}, Lo/setChipCornerRadius;-><init>(Lo/setCheckedIconResource;Lo/zzir;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v0}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/setStartIconVisible;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, p1, v0}, Lo/setCheckedIconResource;->ICustomTabsCallback(Ljava/lang/String;Z)V

    .line 211
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 212
    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setChipBackgroundColorResource;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/setChipBackgroundColorResource;-><init>(Lo/setCheckedIconResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 214
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 216
    :goto_0
    iget-object p2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 217
    invoke-virtual {p2}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 218
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties as"

    .line 219
    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Landroid/os/Bundle;Lo/setCounterTextAppearance;)V
    .locals 2

    .line 147
    invoke-static {}, Lo/ParserException;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 148
    invoke-virtual {v0}, Lo/setHint;->onNavigationEvent()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi23:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p2, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 150
    new-instance v0, Lo/setMinLines;

    invoke-direct {v0, p0, p2, p1}, Lo/setMinLines;-><init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/setCounterTextAppearance;)V
    .locals 2

    .line 11
    invoke-static {}, Lo/MediaSeekBar$1;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 12
    invoke-virtual {v0}, Lo/setHint;->onNavigationEvent()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    iget-object v0, p1, Lo/setCounterTextAppearance;->validateRelationship:Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v0, Lo/setOnCloseIconClickListener;

    invoke-direct {v0, p0, p1}, Lo/setOnCloseIconClickListener;-><init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;)V

    .line 16
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {p1}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p1}, Lo/setShapeAppearanceModel;->onTransact()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 19
    :cond_0
    iget-object p1, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {p1}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/setShapeAppearanceModel;->onMessageChannelReady(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V
    .locals 1

    .line 83
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p2, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 85
    new-instance v0, Lo/setChipCornerRadiusResource;

    invoke-direct {v0, p0, p1, p2}, Lo/setChipCornerRadiusResource;-><init>(Lo/setCheckedIconResource;Lo/setError;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v0}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/zzir;Ljava/lang/String;)[B
    .locals 9

    .line 47
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 49
    invoke-direct {p0, p2, v0}, Lo/setCheckedIconResource;->ICustomTabsCallback(Ljava/lang/String;Z)V

    .line 50
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 51
    invoke-virtual {v0}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v0

    iget-object v1, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 53
    invoke-virtual {v1}, Lo/setHint;->onTransact()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    iget-object v2, p1, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Log and bundle. event"

    .line 54
    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->onMessageChannelReady()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 56
    iget-object v4, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 57
    invoke-virtual {v4}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v4

    new-instance v5, Lo/setChipMinHeight;

    invoke-direct {v5, p0, p1, p2}, Lo/setChipMinHeight;-><init>(Lo/setCheckedIconResource;Lo/zzir;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v4, v5}, Lo/setShapeAppearanceModel;->onNavigationEvent(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 59
    :try_start_0
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-nez v4, :cond_0

    .line 61
    iget-object v4, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 62
    invoke-virtual {v4}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "Log and bundle returned null. appId"

    .line 64
    invoke-static {p2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    new-array v4, v4, [B

    .line 66
    :cond_0
    iget-object v5, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {v5}, Lo/setHint;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v5

    invoke-interface {v5}, Lo/component15;->onMessageChannelReady()J

    move-result-wide v5

    div-long/2addr v5, v2

    .line 67
    iget-object v2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 68
    invoke-virtual {v2}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 69
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->IPostMessageService$Stub()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 70
    invoke-virtual {v7}, Lo/setHint;->onTransact()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    iget-object v8, p1, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v4

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long/2addr v5, v0

    .line 72
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 73
    invoke-virtual {v2, v3, v7, v8, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 76
    :goto_0
    iget-object v1, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 77
    invoke-virtual {v1}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 79
    invoke-static {p2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iget-object v2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 80
    invoke-virtual {v2}, Lo/setHint;->onTransact()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    iget-object p1, p1, Lo/zzir;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Failed to log and bundle. appId, event, error"

    .line 81
    invoke-virtual {v1, v2, p2, p1, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lo/setError;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 185
    invoke-direct {p0, p1, v0}, Lo/setCheckedIconResource;->ICustomTabsCallback(Ljava/lang/String;Z)V

    .line 186
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 187
    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setChipMinHeightResource;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/setChipMinHeightResource;-><init>(Lo/setCheckedIconResource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 189
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 190
    new-instance p3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 191
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setErrorIconDrawable;

    if-nez p4, :cond_1

    .line 192
    iget-object v1, v0, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v1}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    :cond_1
    new-instance v1, Lo/setError;

    invoke-direct {v1, v0}, Lo/setError;-><init>(Lo/setErrorIconDrawable;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object p3

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 197
    :goto_1
    iget-object p3, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 198
    invoke-virtual {p3}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 199
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    .line 200
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "Failed to get user properties as. appId"

    invoke-virtual {p3, p4, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;Lo/setCounterTextAppearance;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lo/setCounterTextAppearance;",
            ")",
            "Ljava/util/List<",
            "Lo/setStartIconVisible;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p3, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 203
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 204
    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setChipBackgroundColor;

    invoke-direct {v1, p0, p3, p1, p2}, Lo/setChipBackgroundColor;-><init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    .line 206
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 208
    :goto_0
    iget-object p2, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    invoke-virtual {p2}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Failed to get conditional user properties"

    invoke-virtual {p2, p3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/setCounterTextAppearance;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCounterTextAppearance;",
            "Z)",
            "Ljava/util/List<",
            "Lo/setError;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 88
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 89
    invoke-virtual {v0}, Lo/setHint;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    new-instance v1, Lo/setChipStrokeWidth;

    invoke-direct {v1, p0, p1}, Lo/setChipStrokeWidth;-><init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;)V

    .line 90
    invoke-virtual {v0, v1}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 91
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setErrorIconDrawable;

    if-nez p2, :cond_1

    .line 94
    iget-object v3, v2, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v3}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    :cond_1
    new-instance v3, Lo/setError;

    invoke-direct {v3, v2}, Lo/setError;-><init>(Lo/setErrorIconDrawable;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    .line 99
    :goto_1
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 100
    invoke-virtual {v0}, Lo/setHint;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    iget-object p1, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Failed to get user properties. appId"

    .line 103
    invoke-virtual {v0, v1, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onPostMessage(Lo/setCounterTextAppearance;)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, v0}, Lo/setCheckedIconResource;->onNavigationEvent(Lo/setCounterTextAppearance;Z)V

    .line 9
    new-instance v0, Lo/setSingleLine;

    invoke-direct {v0, p0, p1}, Lo/setSingleLine;-><init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;)V

    invoke-direct {p0, v0}, Lo/setCheckedIconResource;->extraCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method final synthetic onPostMessage(Lo/setCounterTextAppearance;Landroid/os/Bundle;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lo/setCheckedIconResource;->onMessageChannelReady:Lo/setHint;

    .line 230
    invoke-virtual {v0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    iget-object p1, p1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 231
    invoke-virtual {v0, p1, p2}, Lo/zzzv;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void
.end method
