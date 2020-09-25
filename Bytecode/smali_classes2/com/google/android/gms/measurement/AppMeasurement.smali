.class public Lcom/google/android/gms/measurement/AppMeasurement;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;,
        Lcom/google/android/gms/measurement/AppMeasurement$extraCallback;,
        Lcom/google/android/gms/measurement/AppMeasurement$onMessageChannelReady;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static volatile onMessageChannelReady:Lcom/google/android/gms/measurement/AppMeasurement;


# instance fields
.field private final extraCallback:Lo/setCheckedIcon;

.field private final onNavigationEvent:Z

.field private final onPostMessage:Lo/setIconStartPadding;


# direct methods
.method private constructor <init>(Lo/setCheckedIcon;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 31
    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    return-void

    .line 1002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(Lo/setIconStartPadding;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    return-void

    .line 2002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object p0

    return-object p0
.end method

.method private static onNavigationEvent(Landroid/content/Context;)Lo/setIconStartPadding;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.firebase.analytics.FirebaseAnalytics"

    .line 15
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "getScionFrontendApiImplementation"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 20
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    aput-object v0, v2, v7

    .line 21
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 22
    check-cast p0, Lo/setIconStartPadding;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static onPostMessage(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 12

    .line 2
    sget-object v0, Lcom/google/android/gms/measurement/AppMeasurement;->onMessageChannelReady:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez v0, :cond_2

    .line 3
    const-class v0, Lcom/google/android/gms/measurement/AppMeasurement;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/AppMeasurement;->onMessageChannelReady:Lcom/google/android/gms/measurement/AppMeasurement;

    if-nez v1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent(Landroid/content/Context;)Lo/setIconStartPadding;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    new-instance p0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lo/setIconStartPadding;)V

    sput-object p0, Lcom/google/android/gms/measurement/AppMeasurement;->onMessageChannelReady:Lcom/google/android/gms/measurement/AppMeasurement;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v11, Lo/setStatusCode;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lo/setStatusCode;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-static {p0, v11, v1}, Lo/setCheckedIcon;->ICustomTabsCallback(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)Lo/setCheckedIcon;

    move-result-object p0

    .line 12
    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lo/setCheckedIcon;)V

    sput-object v1, Lcom/google/android/gms/measurement/AppMeasurement;->onMessageChannelReady:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 13
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 14
    :cond_2
    :goto_1
    sget-object p0, Lcom/google/android/gms/measurement/AppMeasurement;->onMessageChannelReady:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object p0
.end method


# virtual methods
.method public beginAdUnitExposure(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 90
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0, p1}, Lo/setIconStartPadding;->zza(Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    .line 93
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub$Proxy()Lo/zzbfb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    .line 94
    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lo/zzbfb;->onNavigationEvent(Ljava/lang/String;J)V

    return-void
.end method

.method public clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0, p1, p2, p3}, Lo/setIconStartPadding;->zzb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    .line 113
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1, p2, p3}, Lo/setChipIconSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected clearConditionalUserPropertyAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 116
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    .line 119
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/setChipIconSize;->onPostMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call on client side"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endAdUnitExposure(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 96
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0, p1}, Lo/setIconStartPadding;->zzb(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsService$Stub$Proxy()Lo/zzbfb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v1}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->onPostMessage()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lo/zzbfb;->onMessageChannelReady(Ljava/lang/String;J)V

    return-void
.end method

.method public generateEventId()J
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 87
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0}, Lo/setIconStartPadding;->zze()J

    move-result-wide v0

    return-wide v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->onTransact()Lo/setHelperTextEnabled;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHelperTextEnabled;->ICustomTabsCallback$Stub()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0}, Lo/setIconStartPadding;->zzc()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->INotificationSideChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 131
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0, p1, p2}, Lo/setIconStartPadding;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lo/setChipIconSize;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 134
    :goto_0
    new-instance p2, Ljava/util/ArrayList;

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 135
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 137
    new-instance v1, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object p2
.end method

.method protected getConditionalUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;",
            ">;"
        }
    .end annotation

    .line 140
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-nez v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    .line 143
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1, p2, p3}, Lo/setChipIconSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 145
    new-instance p2, Ljava/util/ArrayList;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 146
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_1
    if-ge p3, v0, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p3, p3, 0x1

    check-cast v1, Landroid/os/Bundle;

    .line 148
    new-instance v2, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;

    invoke-direct {v2, v1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p2, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p2

    .line 141
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call on client side"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentScreenClass()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 78
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0}, Lo/setIconStartPadding;->zzb()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 75
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0}, Lo/setIconStartPadding;->zza()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->IconCompatParcelizer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGmpAppId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0}, Lo/setIconStartPadding;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipIconSize;->write()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxUserProperties(Ljava/lang/String;)I
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 151
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0, p1}, Lo/setIconStartPadding;->zzc(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    .line 4004
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x19

    return p1

    .line 4005
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Given String is empty or null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0, p1, p2, p3}, Lo/setIconStartPadding;->zza(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/setChipIconSize;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected getUserPropertiesAs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    .line 128
    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/setChipIconSize;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected call on client side"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public logEventInternal(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 41
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-interface {v0, p1, p2, p3}, Lo/setIconStartPadding;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lo/setChipIconSize;->extraCallback(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setConditionalUserProperty(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_1

    .line 101
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onPostMessage:Lo/setIconStartPadding;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/setIconStartPadding;->zza(Landroid/os/Bundle;)V

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setChipIconSize;->onPostMessage(Landroid/os/Bundle;)V

    return-void

    .line 3002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setConditionalUserPropertyAs(Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    if-eqz p1, :cond_1

    .line 106
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->onNavigationEvent:Z

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->ICustomTabsCallback$Stub()Lo/setChipIconSize;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/AppMeasurement$ConditionalUserProperty;->onNavigationEvent()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setChipIconSize;->onMessageChannelReady(Landroid/os/Bundle;)V

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected call on client side"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4002
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
