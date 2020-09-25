.class public Lo/deleteAllReports;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile zzde:Lo/deleteAllReports;


# instance fields
.field private zzag:Lo/setPhone;

.field private zzai:Lo/b$b;

.field private final zzdf:Ljava/util/concurrent/ExecutorService;

.field private zzdg:Lcom/google/firebase/FirebaseApp;

.field private zzdh:Lo/buildHttpRequest;

.field private zzdi:Lo/access$lambda$6;

.field private zzdj:Landroid/content/Context;

.field private zzdk:Lo/getReferenceId;

.field private zzdl:Ljava/lang/String;

.field private final zzdm:Lo/ArticleDetailActivity$onNavigationEvent;

.field private zzdn:Lo/getSessionDirectoryById;

.field private zzdo:Lo/HttpResponse;

.field private zzdp:Z

.field private zzdq:Z


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ExecutorService;Lo/getReferenceId;Lo/getSessionDirectoryById;Lo/HttpResponse;Lo/access$lambda$6;Lo/setPhone;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lo/ArticleDetailActivity;->ICustomTabsCallback$Stub()Lo/ArticleDetailActivity$onNavigationEvent;

    move-result-object p1

    iput-object p1, p0, Lo/deleteAllReports;->zzdm:Lo/ArticleDetailActivity$onNavigationEvent;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lo/deleteAllReports;->zzdq:Z

    .line 14
    invoke-static {}, Lo/aV;->extraCallback()Lo/getImportance;

    move-result-object p1

    sget p2, Lo/ArticleDetailActivity$3;->onMessageChannelReady:I

    invoke-interface {p1, p2}, Lo/getImportance;->onPostMessage(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 15
    iput-object p1, p0, Lo/deleteAllReports;->zzdf:Ljava/util/concurrent/ExecutorService;

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lo/deleteAllReports;->zzdk:Lo/getReferenceId;

    .line 17
    iput-object p1, p0, Lo/deleteAllReports;->zzdn:Lo/getSessionDirectoryById;

    .line 18
    iput-object p1, p0, Lo/deleteAllReports;->zzdo:Lo/HttpResponse;

    .line 19
    iput-object p1, p0, Lo/deleteAllReports;->zzdi:Lo/access$lambda$6;

    .line 20
    iput-object p1, p0, Lo/deleteAllReports;->zzag:Lo/setPhone;

    .line 21
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    .line 22
    iget-object p1, p0, Lo/deleteAllReports;->zzdf:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lo/eventFromJson;

    invoke-direct {p2, p0}, Lo/eventFromJson;-><init>(Lo/deleteAllReports;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic zza(Lo/deleteAllReports;Lo/ArticleDetailActivity$2$1$1;Lo/onCreateLoader;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1, p2}, Lo/deleteAllReports;->zzb(Lo/ArticleDetailActivity$2$1$1;Lo/onCreateLoader;)V

    return-void
.end method

.method public static synthetic zza(Lo/deleteAllReports;Lo/getColumnCount;Lo/onCreateLoader;)V
    .locals 0

    .line 216
    invoke-direct {p0, p1, p2}, Lo/deleteAllReports;->zzb(Lo/getColumnCount;Lo/onCreateLoader;)V

    return-void
.end method

.method public static synthetic zza(Lo/deleteAllReports;Lo/onPageFinished;Lo/onCreateLoader;)V
    .locals 0

    .line 218
    invoke-direct {p0, p1, p2}, Lo/deleteAllReports;->zzb(Lo/onPageFinished;Lo/onCreateLoader;)V

    return-void
.end method

.method private final zza(Lo/onMenuItemActionCollapse;)V
    .locals 5

    .line 63
    iget-object v0, p0, Lo/deleteAllReports;->zzdk:Lo/getReferenceId;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lo/deleteAllReports;->zzby()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 66
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->extraCallback()Lo/ArticleDetailActivity;

    move-result-object v0

    invoke-virtual {v0}, Lo/ArticleDetailActivity;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object p1, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    const-string v0, "App Instance ID is null or empty, dropping the log"

    invoke-virtual {p1, v0}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lo/deleteAllReports;->zzdj:Landroid/content/Context;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    new-instance v2, Lo/deleteFinalizedReport;

    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->ICustomTabsCallback()Lo/getColumnCount;

    move-result-object v3

    invoke-direct {v2, v3}, Lo/deleteFinalizedReport;-><init>(Lo/getColumnCount;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onNavigationEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    new-instance v2, Lo/loadFinalizedReports;

    .line 76
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->asBinder()Lo/ArticleDetailActivity$2$1$1;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lo/loadFinalizedReports;-><init>(Lo/ArticleDetailActivity$2$1$1;Landroid/content/Context;)V

    .line 77
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_3
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    new-instance v0, Lo/code;

    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->extraCallback()Lo/ArticleDetailActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/code;-><init>(Lo/ArticleDetailActivity;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_4
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onTransact()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 81
    new-instance v0, Lo/persistUserIdForSession;

    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->ICustomTabsCallback$Stub()Lo/onPageFinished;

    move-result-object v2

    invoke-direct {v0, v2}, Lo/persistUserIdForSession;-><init>(Lo/onPageFinished;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 85
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object v0

    const-string v1, "No validators found for PerfMetric."

    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 87
    :cond_6
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v3, 0x0

    :cond_7
    if-ge v3, v0, :cond_8

    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lo/finalizeReports;

    .line 88
    invoke-virtual {v4}, Lo/finalizeReports;->zzbt()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_8
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_9

    .line 93
    iget-object p1, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    const-string v0, "Unable to process the PerfMetric due to missing or invalid values. See earlier log statements for additional information on the specific missing/invalid values."

    invoke-virtual {p1, v0}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_9
    iget-object v0, p0, Lo/deleteAllReports;->zzdn:Lo/getSessionDirectoryById;

    invoke-virtual {v0, p1}, Lo/getSessionDirectoryById;->zzb(Lo/onMenuItemActionCollapse;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 97
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onNavigationEvent()Z

    move-result v0

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_a

    .line 98
    iget-object v0, p0, Lo/deleteAllReports;->zzdo:Lo/HttpResponse;

    sget-object v3, Lo/aS;->onNavigationEvent:Lo/aS;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lo/HttpResponse;->zzb(Ljava/lang/String;J)V

    goto :goto_2

    .line 99
    :cond_a
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 100
    iget-object v0, p0, Lo/deleteAllReports;->zzdo:Lo/HttpResponse;

    sget-object v3, Lo/aS;->extraCallback:Lo/aS;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lo/HttpResponse;->zzb(Ljava/lang/String;J)V

    .line 101
    :cond_b
    :goto_2
    iget-boolean v0, p0, Lo/deleteAllReports;->zzdp:Z

    if-eqz v0, :cond_f

    .line 102
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 103
    iget-object v0, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    const-string v1, "Rate Limited NetworkRequestMetric - "

    .line 104
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->asBinder()Lo/ArticleDetailActivity$2$1$1;

    move-result-object p1

    invoke-virtual {p1}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_c
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 105
    :goto_3
    invoke-virtual {v0, p1}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_d
    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 107
    iget-object v0, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    const-string v1, "Rate Limited TraceMetric - "

    invoke-virtual {p1}, Lo/onMenuItemActionCollapse;->ICustomTabsCallback()Lo/getColumnCount;

    move-result-object p1

    invoke-virtual {p1}, Lo/getColumnCount;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_e
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0, p1}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    :cond_f
    return-void

    .line 109
    :cond_10
    invoke-virtual {p1}, Lo/gb;->ICustomTabsService$Stub()[B

    move-result-object p1

    .line 110
    :try_start_0
    iget-object v0, p0, Lo/deleteAllReports;->zzdk:Lo/getReferenceId;

    .line 2000
    new-instance v1, Lo/getReferenceId$onPostMessage;

    invoke-direct {v1, v0, p1, v2}, Lo/getReferenceId$onPostMessage;-><init>(Lo/getReferenceId;[BC)V

    .line 110
    invoke-virtual {v1}, Lo/getReferenceId$onPostMessage;->onNavigationEvent()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_11
    return-void
.end method

.method private final zzb(Lo/ArticleDetailActivity$2$1$1;Lo/onCreateLoader;)V
    .locals 8

    .line 152
    invoke-direct {p0}, Lo/deleteAllReports;->zzby()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    iget-boolean v0, p0, Lo/deleteAllReports;->zzdp:Z

    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {p1}, Lo/ArticleDetailActivity$2$1$1;->updateVisuals()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Lo/ArticleDetailActivity$2$1$1;->requestPostMessageChannel()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 157
    :goto_0
    invoke-virtual {p1}, Lo/ArticleDetailActivity$2$1$1;->asInterface()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {p1}, Lo/ArticleDetailActivity$2$1$1;->onTransact()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "UNKNOWN"

    .line 160
    :goto_1
    iget-object v3, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 161
    invoke-virtual {p1}, Lo/ArticleDetailActivity$2$1$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    .line 162
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "Logging network request trace - %s, Response code: %s, %.4fms"

    .line 163
    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {v3, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 165
    :cond_2
    invoke-direct {p0}, Lo/deleteAllReports;->zzbw()V

    .line 166
    invoke-static {}, Lo/onMenuItemActionCollapse;->onRelationshipValidationResult()Lo/onMenuItemActionCollapse$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/deleteAllReports;->zzdm:Lo/ArticleDetailActivity$onNavigationEvent;

    .line 167
    invoke-virtual {v1, p2}, Lo/ArticleDetailActivity$onNavigationEvent;->onPostMessage(Lo/onCreateLoader;)Lo/ArticleDetailActivity$onNavigationEvent;

    move-result-object p2

    invoke-virtual {v0, p2}, Lo/onMenuItemActionCollapse$onPostMessage;->onNavigationEvent(Lo/ArticleDetailActivity$onNavigationEvent;)Lo/onMenuItemActionCollapse$onPostMessage;

    move-result-object p2

    .line 168
    invoke-virtual {p2, p1}, Lo/onMenuItemActionCollapse$onPostMessage;->extraCallback(Lo/ArticleDetailActivity$2$1$1;)Lo/onMenuItemActionCollapse$onPostMessage;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/onMenuItemActionCollapse;

    .line 170
    invoke-direct {p0, p1}, Lo/deleteAllReports;->zza(Lo/onMenuItemActionCollapse;)V

    :cond_3
    return-void
.end method

.method private final zzb(Lo/getColumnCount;Lo/onCreateLoader;)V
    .locals 8

    .line 129
    invoke-direct {p0}, Lo/deleteAllReports;->zzby()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-boolean v0, p0, Lo/deleteAllReports;->zzdp:Z

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Lo/getColumnCount;->onNavigationEvent()J

    move-result-wide v0

    .line 132
    iget-object v2, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 133
    invoke-virtual {p1}, Lo/getColumnCount;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    long-to-double v0, v0

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v6

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "Logging trace metric - %s %.4fms"

    .line 135
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-virtual {v2, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lo/deleteAllReports;->zzbw()V

    .line 138
    invoke-static {}, Lo/onMenuItemActionCollapse;->onRelationshipValidationResult()Lo/onMenuItemActionCollapse$onPostMessage;

    move-result-object v0

    iget-object v1, p0, Lo/deleteAllReports;->zzdm:Lo/ArticleDetailActivity$onNavigationEvent;

    .line 139
    invoke-virtual {v1}, Lo/ge;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/fU$onNavigationEvent;

    check-cast v1, Lo/ArticleDetailActivity$onNavigationEvent;

    .line 140
    invoke-virtual {v1, p2}, Lo/ArticleDetailActivity$onNavigationEvent;->onPostMessage(Lo/onCreateLoader;)Lo/ArticleDetailActivity$onNavigationEvent;

    move-result-object p2

    .line 142
    invoke-direct {p0}, Lo/deleteAllReports;->zzbz()V

    .line 143
    iget-object v1, p0, Lo/deleteAllReports;->zzdh:Lo/buildHttpRequest;

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {v1}, Lo/buildHttpRequest;->getAttributes()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 145
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    .line 146
    :goto_0
    invoke-virtual {p2, v1}, Lo/ArticleDetailActivity$onNavigationEvent;->extraCallback(Ljava/util/Map;)Lo/ArticleDetailActivity$onNavigationEvent;

    move-result-object p2

    .line 147
    invoke-virtual {v0, p2}, Lo/onMenuItemActionCollapse$onPostMessage;->onNavigationEvent(Lo/ArticleDetailActivity$onNavigationEvent;)Lo/onMenuItemActionCollapse$onPostMessage;

    move-result-object p2

    .line 148
    invoke-virtual {p2, p1}, Lo/onMenuItemActionCollapse$onPostMessage;->onNavigationEvent(Lo/getColumnCount;)Lo/onMenuItemActionCollapse$onPostMessage;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/onMenuItemActionCollapse;

    .line 150
    invoke-direct {p0, p1}, Lo/deleteAllReports;->zza(Lo/onMenuItemActionCollapse;)V

    :cond_2
    return-void
.end method

.method private final zzb(Lo/onPageFinished;Lo/onCreateLoader;)V
    .locals 5

    .line 114
    invoke-direct {p0}, Lo/deleteAllReports;->zzby()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-boolean v0, p0, Lo/deleteAllReports;->zzdp:Z

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p1}, Lo/onPageFinished;->extraCallback()I

    move-result v0

    .line 117
    iget-object v1, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p1}, Lo/onPageFinished;->onMessageChannelReady()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    const-string v0, "Logging %d gauge metrics. Has metadata: %b"

    .line 120
    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {v1, v0}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 122
    :cond_0
    invoke-static {}, Lo/onMenuItemActionCollapse;->onRelationshipValidationResult()Lo/onMenuItemActionCollapse$onPostMessage;

    move-result-object v0

    .line 123
    invoke-direct {p0}, Lo/deleteAllReports;->zzbw()V

    .line 124
    iget-object v1, p0, Lo/deleteAllReports;->zzdm:Lo/ArticleDetailActivity$onNavigationEvent;

    .line 125
    invoke-virtual {v1, p2}, Lo/ArticleDetailActivity$onNavigationEvent;->onPostMessage(Lo/onCreateLoader;)Lo/ArticleDetailActivity$onNavigationEvent;

    move-result-object p2

    invoke-virtual {v0, p2}, Lo/onMenuItemActionCollapse$onPostMessage;->onNavigationEvent(Lo/ArticleDetailActivity$onNavigationEvent;)Lo/onMenuItemActionCollapse$onPostMessage;

    move-result-object p2

    .line 126
    invoke-virtual {p2, p1}, Lo/onMenuItemActionCollapse$onPostMessage;->onPostMessage(Lo/onPageFinished;)Lo/onMenuItemActionCollapse$onPostMessage;

    .line 127
    invoke-virtual {v0}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object p1

    check-cast p1, Lo/fU;

    check-cast p1, Lo/onMenuItemActionCollapse;

    invoke-direct {p0, p1}, Lo/deleteAllReports;->zza(Lo/onMenuItemActionCollapse;)V

    :cond_1
    return-void
.end method

.method public static zzbu()Lo/deleteAllReports;
    .locals 9

    .line 1
    sget-object v0, Lo/deleteAllReports;->zzde:Lo/deleteAllReports;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lo/deleteAllReports;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lo/deleteAllReports;->zzde:Lo/deleteAllReports;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    new-instance v1, Lo/deleteAllReports;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lo/deleteAllReports;-><init>(Ljava/util/concurrent/ExecutorService;Lo/getReferenceId;Lo/getSessionDirectoryById;Lo/HttpResponse;Lo/access$lambda$6;Lo/setPhone;)V

    sput-object v1, Lo/deleteAllReports;->zzde:Lo/deleteAllReports;

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 7
    monitor-exit v0

    return-object v1

    .line 9
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 10
    :cond_1
    :goto_1
    sget-object v0, Lo/deleteAllReports;->zzde:Lo/deleteAllReports;

    return-object v0
.end method

.method private final zzbv()V
    .locals 9

    .line 35
    invoke-static {}, Lcom/google/firebase/FirebaseApp;->getInstance()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    iput-object v0, p0, Lo/deleteAllReports;->zzdg:Lcom/google/firebase/FirebaseApp;

    .line 36
    invoke-static {}, Lo/buildHttpRequest;->getInstance()Lo/buildHttpRequest;

    move-result-object v0

    iput-object v0, p0, Lo/deleteAllReports;->zzdh:Lo/buildHttpRequest;

    .line 37
    iget-object v0, p0, Lo/deleteAllReports;->zzdg:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/deleteAllReports;->zzdj:Landroid/content/Context;

    .line 38
    iget-object v0, p0, Lo/deleteAllReports;->zzdg:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {v0}, Lcom/google/firebase/FirebaseApp;->getOptions()Lo/asGzippedBytes;

    move-result-object v0

    invoke-virtual {v0}, Lo/asGzippedBytes;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/deleteAllReports;->zzdl:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Lo/deleteAllReports;->zzdm:Lo/ArticleDetailActivity$onNavigationEvent;

    .line 40
    invoke-virtual {v1, v0}, Lo/ArticleDetailActivity$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Lo/ArticleDetailActivity$onNavigationEvent;

    move-result-object v0

    .line 41
    invoke-static {}, Lo/d$a;->onNavigationEvent()Lo/d$a$onNavigationEvent;

    move-result-object v1

    iget-object v2, p0, Lo/deleteAllReports;->zzdj:Landroid/content/Context;

    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/d$a$onNavigationEvent;->onPostMessage(Ljava/lang/String;)Lo/d$a$onNavigationEvent;

    move-result-object v1

    sget-object v2, Lo/onPostMessage$extraCallback;->VERSION_NAME:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v2}, Lo/d$a$onNavigationEvent;->extraCallback(Ljava/lang/String;)Lo/d$a$onNavigationEvent;

    move-result-object v1

    iget-object v2, p0, Lo/deleteAllReports;->zzdj:Landroid/content/Context;

    .line 44
    invoke-static {v2}, Lo/deleteAllReports;->zzf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/d$a$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)Lo/d$a$onNavigationEvent;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lo/ArticleDetailActivity$onNavigationEvent;->extraCallback(Lo/d$a$onNavigationEvent;)Lo/ArticleDetailActivity$onNavigationEvent;

    .line 46
    invoke-direct {p0}, Lo/deleteAllReports;->zzbx()V

    .line 48
    iget-object v0, p0, Lo/deleteAllReports;->zzdn:Lo/getSessionDirectoryById;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lo/getSessionDirectoryById;

    iget-object v2, p0, Lo/deleteAllReports;->zzdj:Landroid/content/Context;

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    const-wide/16 v5, 0x1f4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lo/getSessionDirectoryById;-><init>(Landroid/content/Context;DJ)V

    .line 50
    :cond_0
    iput-object v0, p0, Lo/deleteAllReports;->zzdn:Lo/getSessionDirectoryById;

    .line 51
    iget-object v0, p0, Lo/deleteAllReports;->zzdo:Lo/HttpResponse;

    if-nez v0, :cond_1

    invoke-static {}, Lo/HttpResponse;->zzbh()Lo/HttpResponse;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lo/deleteAllReports;->zzdo:Lo/HttpResponse;

    .line 52
    iget-object v0, p0, Lo/deleteAllReports;->zzag:Lo/setPhone;

    if-nez v0, :cond_2

    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lo/deleteAllReports;->zzag:Lo/setPhone;

    .line 53
    iget-object v1, p0, Lo/deleteAllReports;->zzdj:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/setPhone;->onMessageChannelReady(Landroid/content/Context;)V

    .line 54
    iget-object v0, p0, Lo/deleteAllReports;->zzdj:Landroid/content/Context;

    invoke-static {v0}, Lo/ba;->onPostMessage(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lo/deleteAllReports;->zzdp:Z

    .line 55
    iget-object v0, p0, Lo/deleteAllReports;->zzdk:Lo/getReferenceId;

    if-nez v0, :cond_4

    .line 56
    :try_start_0
    iget-object v0, p0, Lo/deleteAllReports;->zzag:Lo/setPhone;

    invoke-virtual {v0}, Lo/setPhone;->mayLaunchUrl()Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v2, p0, Lo/deleteAllReports;->zzdj:Landroid/content/Context;

    .line 1000
    new-instance v0, Lo/getReferenceId;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2}, Lo/toCircleFast;->onNavigationEvent(Landroid/content/Context;)Lo/getRefundAccount;

    move-result-object v6

    .line 1001
    sget-object v7, Lo/hasGapsToFix$onMessageChannelReady$extraCallback;->onPostMessage:Lo/hasGapsToFix$onMessageChannelReady$extraCallback;

    .line 1000
    new-instance v8, Lo/isGallerySelectionEnabled;

    invoke-direct {v8, v2}, Lo/isGallerySelectionEnabled;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lo/getReferenceId;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLo/getRefundAccount;Lo/component15;Lo/getReferenceId$onNavigationEvent;)V

    .line 57
    iput-object v0, p0, Lo/deleteAllReports;->zzdk:Lo/getReferenceId;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 60
    iget-object v1, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    const-string v2, "Caught SecurityException while init ClearcutLogger: "

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1, v0}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lo/deleteAllReports;->zzdk:Lo/getReferenceId;

    :cond_4
    return-void
.end method

.method private final zzbw()V
    .locals 7

    .line 179
    invoke-direct {p0}, Lo/deleteAllReports;->zzby()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lo/deleteAllReports;->zzdm:Lo/ArticleDetailActivity$onNavigationEvent;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$onNavigationEvent;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/deleteAllReports;->zzdq:Z

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lo/deleteAllReports;->zzbx()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 184
    :try_start_0
    iget-object v3, p0, Lo/deleteAllReports;->zzdi:Lo/access$lambda$6;

    invoke-virtual {v3}, Lo/access$lambda$6;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    const-wide/32 v4, 0xea60

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6}, Lo/clearInstancesForTest;->ICustomTabsCallback(Lcom/google/android/gms/tasks/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    .line 195
    iget-object v4, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    new-array v2, v2, [Ljava/lang/Object;

    .line 196
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Task to retrieve Installation Id is timed out: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-virtual {v4, v1}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 190
    iget-object v4, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    new-array v2, v2, [Ljava/lang/Object;

    .line 191
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Task to retrieve Installation Id is interrupted: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v4, v1}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v3

    .line 187
    iget-object v4, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "Unable to retrieve Installation Id: %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lo/b$b;->onMessageChannelReady(Ljava/lang/String;)V

    .line 198
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lo/deleteAllReports;->zzdm:Lo/ArticleDetailActivity$onNavigationEvent;

    invoke-virtual {v1, v0}, Lo/ArticleDetailActivity$onNavigationEvent;->extraCallback(Ljava/lang/String;)Lo/ArticleDetailActivity$onNavigationEvent;

    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lo/deleteAllReports;->zzai:Lo/b$b;

    const-string v1, "Firebase Installation Id is empty, contact Firebase Support for debugging."

    invoke-virtual {v0, v1}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private final zzbx()V
    .locals 1

    .line 202
    iget-object v0, p0, Lo/deleteAllReports;->zzdi:Lo/access$lambda$6;

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lo/access$lambda$6;->getInstance()Lo/access$lambda$6;

    move-result-object v0

    iput-object v0, p0, Lo/deleteAllReports;->zzdi:Lo/access$lambda$6;

    :cond_0
    return-void
.end method

.method private final zzby()Z
    .locals 1

    .line 205
    invoke-direct {p0}, Lo/deleteAllReports;->zzbz()V

    .line 206
    iget-object v0, p0, Lo/deleteAllReports;->zzag:Lo/setPhone;

    if-nez v0, :cond_0

    .line 207
    invoke-static {}, Lo/setPhone;->ICustomTabsCallback()Lo/setPhone;

    move-result-object v0

    iput-object v0, p0, Lo/deleteAllReports;->zzag:Lo/setPhone;

    .line 208
    :cond_0
    iget-object v0, p0, Lo/deleteAllReports;->zzdh:Lo/buildHttpRequest;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Lo/buildHttpRequest;->isPerformanceCollectionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/deleteAllReports;->zzag:Lo/setPhone;

    .line 210
    invoke-virtual {v0}, Lo/setPhone;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final zzbz()V
    .locals 1

    .line 212
    iget-object v0, p0, Lo/deleteAllReports;->zzdh:Lo/buildHttpRequest;

    if-nez v0, :cond_1

    .line 213
    iget-object v0, p0, Lo/deleteAllReports;->zzdg:Lcom/google/firebase/FirebaseApp;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/buildHttpRequest;->getInstance()Lo/buildHttpRequest;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/deleteAllReports;->zzdh:Lo/buildHttpRequest;

    :cond_1
    return-void
.end method

.method public static synthetic zzc(Lo/deleteAllReports;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Lo/deleteAllReports;->zzbv()V

    return-void
.end method

.method private static zzf(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 175
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 176
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final zza(Lo/ArticleDetailActivity$2$1$1;Lo/onCreateLoader;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lo/deleteAllReports;->zzdf:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/NativeFileUtils;

    invoke-direct {v1, p0, p1, p2}, Lo/NativeFileUtils;-><init>(Lo/deleteAllReports;Lo/ArticleDetailActivity$2$1$1;Lo/onCreateLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 28
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/SessionManager;->zzcq()Z

    return-void
.end method

.method public final zza(Lo/getColumnCount;Lo/onCreateLoader;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lo/deleteAllReports;->zzdf:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/ProcMapEntry;

    invoke-direct {v1, p0, p1, p2}, Lo/ProcMapEntry;-><init>(Lo/deleteAllReports;Lo/getColumnCount;Lo/onCreateLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 25
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/SessionManager;->zzcq()Z

    return-void
.end method

.method public final zza(Lo/onPageFinished;Lo/onCreateLoader;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lo/deleteAllReports;->zzdf:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/HttpMethod;

    invoke-direct {v1, p0, p1, p2}, Lo/HttpMethod;-><init>(Lo/deleteAllReports;Lo/onPageFinished;Lo/onCreateLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 31
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/SessionManager;->zzcq()Z

    return-void
.end method

.method public final zzb(Z)V
    .locals 2

    .line 33
    iget-object v0, p0, Lo/deleteAllReports;->zzdf:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lo/ProcMapEntry$onNavigationEvent;

    invoke-direct {v1, p0, p1}, Lo/ProcMapEntry$onNavigationEvent;-><init>(Lo/deleteAllReports;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzc(Z)V
    .locals 1

    .line 172
    iput-boolean p1, p0, Lo/deleteAllReports;->zzdq:Z

    .line 173
    iget-object v0, p0, Lo/deleteAllReports;->zzdn:Lo/getSessionDirectoryById;

    invoke-virtual {v0, p1}, Lo/getSessionDirectoryById;->zzb(Z)V

    return-void
.end method
