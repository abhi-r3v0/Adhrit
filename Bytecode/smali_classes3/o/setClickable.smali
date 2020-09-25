.class public final Lo/setClickable;
.super Lo/setHintTextColor;
.source ""

# interfaces
.implements Lo/zzwe;


# static fields
.field private static onMessageChannelReady:I = 0xffff

.field private static onPostMessage:I = 0x2


# instance fields
.field private final ICustomTabsCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ICustomTabsCallback$Stub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final asBinder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/cD$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onTransact:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lo/setHint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setHintTextColor;-><init>(Lo/setHint;)V

    .line 2
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/setClickable;->ICustomTabsCallback:Ljava/util/Map;

    .line 3
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/setClickable;->onNavigationEvent:Ljava/util/Map;

    .line 4
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/setClickable;->onTransact:Ljava/util/Map;

    .line 5
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/setClickable;->asBinder:Ljava/util/Map;

    .line 6
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/setClickable;->ICustomTabsCallback$Stub:Ljava/util/Map;

    .line 7
    new-instance p1, Lo/postOrRun;

    invoke-direct {p1}, Lo/postOrRun;-><init>()V

    iput-object p1, p0, Lo/setClickable;->asInterface:Ljava/util/Map;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;[B)Lo/cD$onNavigationEvent;
    .locals 7

    const-string v0, "Unable to merge remote config. appId"

    if-nez p2, :cond_0

    .line 176
    invoke-static {}, Lo/cD$onNavigationEvent;->onRelationshipValidationResult()Lo/cD$onNavigationEvent;

    move-result-object p1

    return-object p1

    .line 177
    :cond_0
    :try_start_0
    invoke-static {}, Lo/cD$onNavigationEvent;->ICustomTabsCallback$Stub()Lo/cD$onNavigationEvent$extraCallback;

    move-result-object v1

    invoke-static {v1, p2}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object p2

    check-cast p2, Lo/cD$onNavigationEvent$extraCallback;

    invoke-virtual {p2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p2

    check-cast p2, Lo/fa;

    check-cast p2, Lo/cD$onNavigationEvent;

    .line 178
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Parsed config. version, gmp_app_id"

    .line 180
    invoke-virtual {p2}, Lo/cD$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lo/cD$onNavigationEvent;->onMessageChannelReady()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 181
    :goto_0
    invoke-virtual {p2}, Lo/cD$onNavigationEvent;->onNavigationEvent()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lo/cD$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v4

    .line 182
    :cond_2
    invoke-virtual {v1, v2, v3, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zzig; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 190
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 192
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    invoke-static {}, Lo/cD$onNavigationEvent;->onRelationshipValidationResult()Lo/cD$onNavigationEvent;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p2

    .line 185
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 187
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    invoke-static {}, Lo/cD$onNavigationEvent;->onRelationshipValidationResult()Lo/cD$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method private final ICustomTabsCallback$Stub(Ljava/lang/String;)V
    .locals 4

    .line 9
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 10
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 11
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lo/setClickable;->asBinder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/zzzv;->onNavigationEvent(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lo/setClickable;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v0, p0, Lo/setClickable;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v0, p0, Lo/setClickable;->onTransact:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lo/setClickable;->asBinder:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lo/setClickable;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lo/setClickable;->asInterface:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 22
    :cond_0
    invoke-direct {p0, p1, v0}, Lo/setClickable;->ICustomTabsCallback(Ljava/lang/String;[B)Lo/cD$onNavigationEvent;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v0

    .line 24
    check-cast v0, Lo/fa$onNavigationEvent;

    check-cast v0, Lo/cD$onNavigationEvent$extraCallback;

    .line 25
    invoke-direct {p0, p1, v0}, Lo/setClickable;->onNavigationEvent(Ljava/lang/String;Lo/cD$onNavigationEvent$extraCallback;)V

    .line 26
    iget-object v2, p0, Lo/setClickable;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v3

    check-cast v3, Lo/fa;

    check-cast v3, Lo/cD$onNavigationEvent;

    invoke-static {v3}, Lo/setClickable;->onNavigationEvent(Lo/cD$onNavigationEvent;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v2, p0, Lo/setClickable;->asBinder:Ljava/util/Map;

    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v0

    check-cast v0, Lo/fa;

    check-cast v0, Lo/cD$onNavigationEvent;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lo/setClickable;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private static onNavigationEvent(Lo/cD$onNavigationEvent;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/cD$onNavigationEvent;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lo/cD$onNavigationEvent;->onPostMessage()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/cD$extraCallback;

    .line 57
    invoke-virtual {v1}, Lo/cD$extraCallback;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lo/cD$extraCallback;->onNavigationEvent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final onNavigationEvent(Ljava/lang/String;Lo/cD$onNavigationEvent$extraCallback;)V
    .locals 8

    .line 60
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 61
    new-instance v1, Lo/postOrRun;

    invoke-direct {v1}, Lo/postOrRun;-><init>()V

    .line 62
    new-instance v2, Lo/postOrRun;

    invoke-direct {v2}, Lo/postOrRun;-><init>()V

    if-eqz p2, :cond_6

    const/4 v3, 0x0

    .line 65
    :goto_0
    invoke-virtual {p2}, Lo/cD$onNavigationEvent$extraCallback;->ICustomTabsCallback()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 66
    invoke-virtual {p2, v3}, Lo/cD$onNavigationEvent$extraCallback;->onMessageChannelReady(I)Lo/cD$onPostMessage;

    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v4

    .line 68
    check-cast v4, Lo/fa$onNavigationEvent;

    check-cast v4, Lo/cD$onPostMessage$ICustomTabsCallback;

    .line 69
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "EventConfig contained null event name"

    invoke-virtual {v4, v5}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 72
    :cond_0
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/setChipIconResource;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 74
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 75
    invoke-virtual {v4, v6}, Lo/cD$onPostMessage$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;)Lo/cD$onPostMessage$ICustomTabsCallback;

    move-result-object v4

    .line 76
    invoke-virtual {p2, v3, v4}, Lo/cD$onNavigationEvent$extraCallback;->onNavigationEvent(ILo/cD$onPostMessage$ICustomTabsCallback;)Lo/cD$onNavigationEvent$extraCallback;

    .line 77
    :cond_1
    invoke-static {}, Lo/dE;->ICustomTabsCallback()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 78
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v6

    sget-object v7, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplBase$5:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v7}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 79
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->onMessageChannelReady()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->onMessageChannelReady()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :goto_1
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->extraCallback()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->onNavigationEvent()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 83
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage()I

    move-result v5

    sget v6, Lo/setClickable;->onPostMessage:I

    if-lt v5, v6, :cond_4

    .line 84
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage()I

    move-result v5

    sget v6, Lo/setClickable;->onMessageChannelReady:I

    if-le v5, v6, :cond_3

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 85
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v5

    .line 87
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {v4}, Lo/cD$onPostMessage$ICustomTabsCallback;->onPostMessage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "Invalid sampling rate. Event name, sample rate"

    .line 89
    invoke-virtual {v5, v7, v6, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 92
    :cond_6
    iget-object p2, p0, Lo/setClickable;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p2, p0, Lo/setClickable;->onTransact:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object p2, p0, Lo/setClickable;->asInterface:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback()V
    .locals 0

    .line 205
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsCallback()V

    return-void
.end method

.method final ICustomTabsCallback(Ljava/lang/String;)Z
    .locals 0

    .line 43
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 44
    invoke-virtual {p0, p1}, Lo/setClickable;->onPostMessage(Ljava/lang/String;)Lo/cD$onNavigationEvent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lo/cD$onNavigationEvent;->asBinder()Z

    move-result p1

    return p1
.end method

.method final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 147
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 148
    invoke-direct {p0, p1}, Lo/setClickable;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    .line 149
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 151
    :cond_0
    invoke-static {}, Lo/requestBannerAd;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v2, Lo/zziq;->run:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v2}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "purchase"

    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "refund"

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 155
    :cond_2
    iget-object v0, p0, Lo/setClickable;->onTransact:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 157
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_3

    return v0

    .line 158
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_4
    return v0
.end method

.method public final bridge synthetic ICustomTabsCallback$Stub$Proxy()Lo/component15;
    .locals 1

    .line 207
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic ICustomTabsService()Lo/setLiftOnScrollTargetViewId;
    .locals 1

    .line 209
    invoke-super {p0}, Lo/setHintTextColor;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic L_()Lo/setClickable;
    .locals 1

    .line 202
    invoke-super {p0}, Lo/setHintTextColor;->L_()Lo/setClickable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic M_()Lo/zzzv;
    .locals 1

    .line 201
    invoke-super {p0}, Lo/setHintTextColor;->M_()Lo/zzzv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic N_()Lo/setErrorIconTintMode;
    .locals 1

    .line 200
    invoke-super {p0}, Lo/setHintTextColor;->N_()Lo/setErrorIconTintMode;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic O_()Lo/setErrorTextColor;
    .locals 1

    .line 199
    invoke-super {p0}, Lo/setHintTextColor;->O_()Lo/setErrorTextColor;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic P_()Lo/FloatingActionButton$BaseBehavior;
    .locals 1

    .line 198
    invoke-super {p0}, Lo/setHintTextColor;->P_()Lo/FloatingActionButton$BaseBehavior;

    move-result-object v0

    return-object v0
.end method

.method final asBinder(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    .line 196
    invoke-virtual {p0, p1, v0}, Lo/setClickable;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final extraCallback(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 160
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 161
    invoke-direct {p0, p1}, Lo/setClickable;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lo/setClickable;->asInterface:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 164
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    .line 165
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method protected final extraCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 36
    iget-object v0, p0, Lo/setClickable;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic extraCallback()V
    .locals 0

    .line 204
    invoke-super {p0}, Lo/setHintTextColor;->extraCallback()V

    return-void
.end method

.method public final bridge synthetic extraCommand()Lo/setBackgroundTintList;
    .locals 1

    .line 213
    invoke-super {p0}, Lo/setHintTextColor;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInterfaceDescriptor()Lo/zzfw;
    .locals 1

    .line 206
    invoke-super {p0}, Lo/setHintTextColor;->getInterfaceDescriptor()Lo/zzfw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;
    .locals 1

    .line 212
    invoke-super {p0}, Lo/setHintTextColor;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newSession()Lo/setHelperTextEnabled;
    .locals 1

    .line 210
    invoke-super {p0}, Lo/setHintTextColor;->newSession()Lo/setHelperTextEnabled;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic onMessageChannelReady()V
    .locals 0

    .line 203
    invoke-super {p0}, Lo/setHintTextColor;->onMessageChannelReady()V

    return-void
.end method

.method final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 41
    iget-object v0, p0, Lo/setClickable;->asBinder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final onNavigationEvent(Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 38
    iget-object v0, p0, Lo/setClickable;->ICustomTabsCallback$Stub:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 137
    invoke-direct {p0, p1}, Lo/setClickable;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p1}, Lo/setClickable;->onRelationshipValidationResult(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lo/setHelperTextEnabled;->extraCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lo/setClickable;->asBinder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 142
    :cond_1
    iget-object v0, p0, Lo/setClickable;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 144
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    .line 145
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 49
    invoke-direct {p0, p1}, Lo/setClickable;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lo/setClickable;->ICustomTabsCallback:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final onPostMessage(Ljava/lang/String;)Lo/cD$onNavigationEvent;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 31
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 32
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1}, Lo/setClickable;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lo/setClickable;->asBinder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/cD$onNavigationEvent;

    return-object p1
.end method

.method protected final onPostMessage(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 7

    .line 96
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 97
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 98
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1, p2}, Lo/setClickable;->ICustomTabsCallback(Ljava/lang/String;[B)Lo/cD$onNavigationEvent;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v0

    .line 101
    check-cast v0, Lo/fa$onNavigationEvent;

    check-cast v0, Lo/cD$onNavigationEvent$extraCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 104
    :cond_0
    invoke-direct {p0, p1, v0}, Lo/setClickable;->onNavigationEvent(Ljava/lang/String;Lo/cD$onNavigationEvent$extraCallback;)V

    .line 105
    iget-object v2, p0, Lo/setClickable;->asBinder:Ljava/util/Map;

    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v3

    check-cast v3, Lo/fa;

    check-cast v3, Lo/cD$onNavigationEvent;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lo/setClickable;->ICustomTabsCallback$Stub:Ljava/util/Map;

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object p3, p0, Lo/setClickable;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cD$onNavigationEvent;

    invoke-static {v2}, Lo/setClickable;->onNavigationEvent(Lo/cD$onNavigationEvent;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object p3

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lo/cD$onNavigationEvent$extraCallback;->onMessageChannelReady()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p3, p1, v2}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/List;)V

    .line 109
    :try_start_0
    invoke-virtual {v0}, Lo/cD$onNavigationEvent$extraCallback;->extraCallback()Lo/cD$onNavigationEvent$extraCallback;

    .line 110
    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object p3

    check-cast p3, Lo/fa;

    check-cast p3, Lo/cD$onNavigationEvent;

    invoke-virtual {p3}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 113
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 115
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Unable to serialize reduced-size config. Storing full config instead. appId"

    .line 116
    invoke-virtual {v2, v4, v3, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lo/setHintEnabled;->M_()Lo/zzzv;

    move-result-object p3

    .line 118
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    invoke-virtual {p3}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 120
    invoke-virtual {p3}, Lo/setHintTextColor;->read()V

    .line 121
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "remote_config"

    .line 122
    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x1

    .line 123
    :try_start_1
    invoke-virtual {p3}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "apps"

    const-string v5, "app_id = ?"

    new-array v6, p2, [Ljava/lang/String;

    aput-object p1, v6, v1

    .line 124
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 126
    invoke-virtual {p3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Failed to update remote config (got 0). appId"

    .line 128
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 131
    invoke-virtual {p3}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 132
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    .line 133
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error storing remote config. appId"

    invoke-virtual {p3, v3, v2, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :cond_1
    :goto_1
    iget-object p3, p0, Lo/setClickable;->asBinder:Ljava/util/Map;

    invoke-virtual {v0}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v0

    check-cast v0, Lo/fa;

    check-cast v0, Lo/cD$onNavigationEvent;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method final onRelationshipValidationResult(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    .line 195
    invoke-virtual {p0, p1, v0}, Lo/setClickable;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final onTransact(Ljava/lang/String;)J
    .locals 3

    const-string v0, "measurement.account.time_zone_offset_minutes"

    .line 167
    invoke-virtual {p0, p1, v0}, Lo/setClickable;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 171
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 172
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 173
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Unable to parse timezone offset. appId"

    invoke-virtual {v1, v2, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final bridge synthetic postMessage()Lo/setShapeAppearanceModel;
    .locals 1

    .line 211
    invoke-super {p0}, Lo/setHintTextColor;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic requestPostMessageChannel()Lo/setStartIconTintList;
    .locals 1

    .line 214
    invoke-super {p0}, Lo/setHintTextColor;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic updateVisuals()Lo/setStartIconContentDescription;
    .locals 1

    .line 215
    invoke-super {p0}, Lo/setHintTextColor;->updateVisuals()Lo/setStartIconContentDescription;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic warmup()Landroid/content/Context;
    .locals 1

    .line 208
    invoke-super {p0}, Lo/setHintTextColor;->warmup()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
