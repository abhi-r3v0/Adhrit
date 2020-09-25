.class public final Lo/setPhone;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile onPostMessage:Lo/setPhone;


# instance fields
.field private ICustomTabsCallback:Lo/b$b;

.field private extraCallback:Lo/aQ;

.field private onMessageChannelReady:Lo/R$id;

.field private onNavigationEvent:Lcom/google/firebase/perf/internal/RemoteConfigManager;


# direct methods
.method private constructor <init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;Lo/aQ;Lo/R$id;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzck()Lcom/google/firebase/perf/internal/RemoteConfigManager;

    move-result-object p1

    iput-object p1, p0, Lo/setPhone;->onNavigationEvent:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    .line 4
    new-instance p1, Lo/aQ;

    invoke-direct {p1}, Lo/aQ;-><init>()V

    iput-object p1, p0, Lo/setPhone;->extraCallback:Lo/aQ;

    .line 6
    invoke-static {}, Lo/R$id;->onNavigationEvent()Lo/R$id;

    move-result-object p1

    iput-object p1, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    .line 7
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    return-void
.end method

.method private final ICustomTabsCallback(Lo/R$integer;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/R$integer<",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/aP<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lo/setPhone;->extraCallback:Lo/aQ;

    invoke-virtual {p1}, Lo/R$integer;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/aQ;->onPostMessage(Ljava/lang/String;)Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized ICustomTabsCallback()Lo/setPhone;
    .locals 3

    const-class v0, Lo/setPhone;

    monitor-enter v0

    .line 9
    :try_start_0
    sget-object v1, Lo/setPhone;->onPostMessage:Lo/setPhone;

    if-nez v1, :cond_0

    .line 10
    new-instance v1, Lo/setPhone;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lo/setPhone;-><init>(Lcom/google/firebase/perf/internal/RemoteConfigManager;Lo/aQ;Lo/R$id;)V

    sput-object v1, Lo/setPhone;->onPostMessage:Lo/setPhone;

    .line 11
    :cond_0
    sget-object v1, Lo/setPhone;->onPostMessage:Lo/setPhone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static ICustomTabsCallback(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final ICustomTabsCallback$Stub(Lo/R$integer;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/R$integer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lo/aP<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {p1}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;)Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method private final asBinder(Lo/R$integer;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/R$integer<",
            "Ljava/lang/String;",
            ">;)",
            "Lo/aP<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {p1}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/R$id;->ICustomTabsCallback(Ljava/lang/String;)Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method private final extraCallback(Lo/R$integer;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/R$integer<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lo/aP<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lo/setPhone;->extraCallback:Lo/aQ;

    invoke-virtual {p1}, Lo/R$integer;->extraCallback()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/aQ;->ICustomTabsCallback(Ljava/lang/String;)Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method private static extraCallback(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final onMessageChannelReady(Lo/R$integer;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/R$integer<",
            "Ljava/lang/Float;",
            ">;)",
            "Lo/aP<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lo/setPhone;->onNavigationEvent:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lo/R$integer;->F_()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzd(Ljava/lang/String;)Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)Z
    .locals 5

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, ";"

    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 85
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/onPostMessage$extraCallback;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final onNavigationEvent(Lo/R$integer;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/R$integer<",
            "Ljava/lang/Float;",
            ">;)",
            "Lo/aP<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {p1}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/R$id;->onPostMessage(Ljava/lang/String;)Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method private static onNavigationEvent(F)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, v0, p0

    if-gtz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static onNavigationEvent(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final onPostMessage(Lo/R$integer;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/R$integer<",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/aP<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lo/setPhone;->onNavigationEvent:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {p1}, Lo/R$integer;->F_()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zze(Ljava/lang/String;)Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method private static onPostMessage(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final onRelationshipValidationResult(Lo/R$integer;)Lo/aP;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/R$integer<",
            "Ljava/lang/Long;",
            ">;)",
            "Lo/aP<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {p1}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/R$id;->extraCallback(Ljava/lang/String;)Lo/aP;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback$Stub()F
    .locals 4

    .line 89
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving trace sampling rate configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lo/R$menu;->ICustomTabsCallback()Lo/R$menu;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lo/setPhone;->onMessageChannelReady(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lo/setPhone;->onNavigationEvent(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;F)Z

    .line 94
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 95
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onNavigationEvent(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lo/setPhone;->onNavigationEvent(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 98
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()J
    .locals 5

    .line 171
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving Session Memory Capture Frequency on background (milliseonds) configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lo/R$color;->onPostMessage()Lo/R$color;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lo/setPhone;->ICustomTabsCallback(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 176
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 179
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 180
    :cond_1
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final ICustomTabsService()J
    .locals 5

    .line 210
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving trace event count background configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lo/R$bool;->ICustomTabsCallback()Lo/R$bool;

    move-result-object v0

    .line 212
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onPostMessage(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 215
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 216
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->onPostMessage(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x1e

    .line 219
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asBinder()J
    .locals 5

    .line 129
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving Session CPU Capture Frequency on foreground (milliseonds) configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lo/handleLink;->onPostMessage()Lo/handleLink;

    move-result-object v0

    .line 131
    invoke-direct {p0, v0}, Lo/setPhone;->ICustomTabsCallback(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 134
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 137
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 138
    :cond_1
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x64

    .line 141
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final asInterface()J
    .locals 5

    .line 143
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving Session CPU Capture Frequency on background (milliseonds) configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lo/asInt;->onPostMessage()Lo/asInt;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Lo/setPhone;->ICustomTabsCallback(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 148
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 151
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 152
    :cond_1
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    .line 155
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback()Ljava/lang/Boolean;
    .locals 3

    .line 23
    invoke-virtual {p0}, Lo/setPhone;->onPostMessage()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    invoke-static {}, Lo/getPhone;->onNavigationEvent()Lo/getPhone;

    move-result-object v0

    .line 26
    invoke-direct {p0, v0}, Lo/setPhone;->ICustomTabsCallback$Stub(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 29
    :cond_1
    invoke-direct {p0, v0}, Lo/setPhone;->extraCallback(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 31
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 32
    :cond_2
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "CollectionEnabled metadata key unknown or value not found in manifest."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final extraCommand()J
    .locals 5

    .line 243
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving rate limiting time range (in seconds) configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lo/R$anim;->ICustomTabsCallback()Lo/R$anim;

    move-result-object v0

    .line 245
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->ICustomTabsCallback(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 248
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 249
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->ICustomTabsCallback(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x258

    .line 252
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInterfaceDescriptor()J
    .locals 5

    .line 199
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving trace event count foreground configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lo/R$layout;->onPostMessage()Lo/R$layout;

    move-result-object v0

    .line 201
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onPostMessage(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 204
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 205
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->onPostMessage(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x12c

    .line 208
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final mayLaunchUrl()Ljava/lang/String;
    .locals 5

    .line 254
    invoke-static {}, Lo/getRestoreId;->onPostMessage()Lo/getRestoreId;

    move-result-object v0

    .line 255
    sget-boolean v1, Lo/onPostMessage$extraCallback;->zzdc:Z

    if-eqz v1, :cond_0

    .line 256
    invoke-static {}, Lo/getRestoreId;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    invoke-virtual {v0}, Lo/R$integer;->F_()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v4, p0, Lo/setPhone;->onNavigationEvent:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zza(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 261
    :goto_0
    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v2, v3}, Lo/getRestoreId;->extraCallback(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 263
    invoke-static {v2, v3}, Lo/getRestoreId;->onNavigationEvent(J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 265
    iget-object v0, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0, v1, v2}, Lo/R$id;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Z

    return-object v2

    .line 267
    :cond_2
    invoke-direct {p0, v0}, Lo/setPhone;->asBinder(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 270
    :cond_3
    invoke-static {}, Lo/getRestoreId;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final newSession()J
    .locals 5

    .line 185
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving Max Duration (in minutes) of single Session configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lo/LinkHandler;->onPostMessage()Lo/LinkHandler;

    move-result-object v0

    .line 187
    invoke-direct {p0, v0}, Lo/setPhone;->ICustomTabsCallback(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->extraCallback(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 190
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->extraCallback(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 193
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 194
    :cond_1
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->extraCallback(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0xf0

    .line 197
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object v0

    invoke-static {p1}, Lo/ba;->onPostMessage(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/b$b;->onNavigationEvent(Z)V

    .line 15
    iget-object v0, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0, p1}, Lo/R$id;->ICustomTabsCallback(Landroid/content/Context;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/aQ;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lo/setPhone;->extraCallback:Lo/aQ;

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 6

    .line 52
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving master flag for Firebase Performance SDK enabled configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lo/fromInt;->onPostMessage()Lo/fromInt;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lo/setPhone;->onNavigationEvent:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {v0}, Lo/R$integer;->F_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzb(Ljava/lang/String;)Lo/aP;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lo/setPhone;->onNavigationEvent:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {v2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzcl()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v0, v5}, Lo/R$id;->ICustomTabsCallback(Ljava/lang/String;Z)Z

    .line 61
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-direct {p0, v0}, Lo/setPhone;->ICustomTabsCallback$Stub(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 65
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving Firebase Performance SDK disabled versions configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lo/onUserLeaveHint;->ICustomTabsCallback()Lo/onUserLeaveHint;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lo/setPhone;->onNavigationEvent:Lcom/google/firebase/perf/internal/RemoteConfigManager;

    invoke-virtual {v0}, Lo/R$integer;->F_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/internal/RemoteConfigManager;->zzc(Ljava/lang/String;)Lo/aP;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 74
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v0, v5}, Lo/R$id;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Z

    .line 75
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/setPhone;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 76
    :cond_3
    invoke-direct {p0, v0}, Lo/setPhone;->asBinder(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lo/setPhone;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 80
    invoke-static {v0}, Lo/setPhone;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_5

    return v4

    :cond_5
    return v3
.end method

.method public final onNavigationEvent(Ljava/lang/Boolean;)V
    .locals 3

    .line 40
    invoke-virtual {p0}, Lo/setPhone;->onPostMessage()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-static {}, Lo/getPhone;->onNavigationEvent()Lo/getPhone;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 46
    iget-object v1, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 48
    invoke-virtual {v1, v0, p1}, Lo/R$id;->ICustomTabsCallback(Ljava/lang/String;Z)Z

    return-void

    .line 49
    :cond_1
    iget-object p1, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {p1, v0}, Lo/R$id;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 19
    invoke-virtual {p0}, Lo/setPhone;->extraCallback()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lo/setPhone;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage()Ljava/lang/Boolean;
    .locals 2

    .line 34
    invoke-static {}, Lo/getPhoneCountryCode;->ICustomTabsCallback()Lo/getPhoneCountryCode;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lo/setPhone;->extraCallback(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lo/setPhone;->onMessageChannelReady(Landroid/content/Context;)V

    return-void
.end method

.method public final onRelationshipValidationResult()F
    .locals 4

    .line 100
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving network request sampling rate configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lo/onUserInteraction;->ICustomTabsCallback()Lo/onUserInteraction;

    move-result-object v0

    .line 102
    invoke-direct {p0, v0}, Lo/setPhone;->onMessageChannelReady(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lo/setPhone;->onNavigationEvent(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;F)Z

    .line 105
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 106
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onNavigationEvent(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lo/setPhone;->onNavigationEvent(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 109
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final onTransact()F
    .locals 4

    .line 111
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving session sampling rate configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lo/R$drawable;->ICustomTabsCallback()Lo/R$drawable;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lo/setPhone;->extraCallback:Lo/aQ;

    invoke-virtual {v0}, Lo/R$integer;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/aQ;->onNavigationEvent(Ljava/lang/String;)Lo/aP;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    .line 118
    invoke-static {v1}, Lo/setPhone;->onNavigationEvent(F)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onMessageChannelReady(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Lo/setPhone;->onNavigationEvent(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v0, v3}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;F)Z

    .line 123
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 124
    :cond_1
    invoke-direct {p0, v0}, Lo/setPhone;->onNavigationEvent(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lo/setPhone;->onNavigationEvent(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_2
    const v0, 0x3c23d70a    # 0.01f

    .line 127
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final postMessage()J
    .locals 5

    .line 232
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving network event count background configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lo/FreshchatUserInteractionListener;->onPostMessage()Lo/FreshchatUserInteractionListener;

    move-result-object v0

    .line 234
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onPostMessage(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 237
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 238
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->onPostMessage(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x46

    .line 241
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final requestPostMessageChannel()J
    .locals 5

    .line 221
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving network event count foreground configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lo/JwtTokenStatus;->ICustomTabsCallback()Lo/JwtTokenStatus;

    move-result-object v0

    .line 223
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onPostMessage(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 226
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 227
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 228
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->onPostMessage(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x2bc

    .line 230
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final warmup()J
    .locals 5

    .line 157
    iget-object v0, p0, Lo/setPhone;->ICustomTabsCallback:Lo/b$b;

    const-string v1, "Retrieving Session Memory Capture Frequency on foreground (milliseonds) configuration value."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lo/R$attr;->onPostMessage()Lo/R$attr;

    move-result-object v0

    .line 159
    invoke-direct {p0, v0}, Lo/setPhone;->ICustomTabsCallback(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 162
    :cond_0
    invoke-direct {p0, v0}, Lo/setPhone;->onPostMessage(Lo/R$integer;)Lo/aP;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lo/setPhone;->onMessageChannelReady:Lo/R$id;

    invoke-virtual {v0}, Lo/R$integer;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lo/R$id;->onMessageChannelReady(Ljava/lang/String;J)Z

    .line 165
    invoke-virtual {v1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 166
    :cond_1
    invoke-direct {p0, v0}, Lo/setPhone;->onRelationshipValidationResult(Lo/R$integer;)Lo/aP;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lo/aP;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lo/setPhone;->onNavigationEvent(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {v0}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x64

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
