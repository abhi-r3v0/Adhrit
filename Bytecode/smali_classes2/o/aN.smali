.class public final Lo/aN;
.super Lo/persistReport;
.source ""

# interfaces
.implements Lo/isHighPriorityEventFile;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/synthesizeReport;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Z

.field private asInterface:Z

.field private final extraCallback:Lcom/google/firebase/perf/internal/GaugeManager;

.field private onMessageChannelReady:Lo/b$b;

.field private onNavigationEvent:Lo/deleteAllReports;

.field private final onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

.field private final onTransact:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/isHighPriorityEventFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/deleteAllReports;)V
    .locals 2

    .line 12
    invoke-static {}, Lo/HttpResponse;->zzbh()Lo/HttpResponse;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->zzca()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lo/aN;-><init>(Lo/deleteAllReports;Lo/HttpResponse;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method private constructor <init>(Lo/deleteAllReports;Lo/HttpResponse;Lcom/google/firebase/perf/internal/GaugeManager;)V
    .locals 0

    .line 14
    invoke-direct {p0, p2}, Lo/persistReport;-><init>(Lo/HttpResponse;)V

    .line 16
    invoke-static {}, Lo/ArticleDetailActivity$2$1$1;->extraCommand()Lo/ArticleDetailActivity$2$1$1$extraCallback;

    move-result-object p2

    iput-object p2, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    .line 17
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lo/aN;->onTransact:Ljava/lang/ref/WeakReference;

    .line 18
    iput-object p1, p0, Lo/aN;->onNavigationEvent:Lo/deleteAllReports;

    .line 19
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/aN;->onMessageChannelReady:Lo/b$b;

    .line 20
    iput-object p3, p0, Lo/aN;->extraCallback:Lcom/google/firebase/perf/internal/GaugeManager;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/aN;->ICustomTabsCallback:Ljava/util/List;

    .line 22
    invoke-virtual {p0}, Lo/persistReport;->zzbr()V

    return-void
.end method

.method public static onNavigationEvent(Lo/deleteAllReports;)Lo/aN;
    .locals 1

    .line 11
    new-instance v0, Lo/aN;

    invoke-direct {v0, p0}, Lo/aN;-><init>(Lo/deleteAllReports;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->extraCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ICustomTabsCallback(J)Lo/aN;
    .locals 1

    .line 88
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onMessageChannelReady(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    return-object p0
.end method

.method public final asBinder(J)Lo/aN;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    return-object p0
.end method

.method public final asInterface()Lo/ArticleDetailActivity$2$1$1;
    .locals 3

    .line 115
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lo/aN;->onTransact:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/SessionManager;->zzd(Ljava/lang/ref/WeakReference;)V

    .line 116
    invoke-virtual {p0}, Lo/persistReport;->zzbs()V

    .line 118
    iget-object v0, p0, Lo/aN;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v0}, Lo/br;->extraCallback(Ljava/util/Collection;)Lo/br;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lo/synthesizeReport;->zza(Ljava/util/List;)[Lo/ArticleListActivity$3;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->ICustomTabsCallback(Ljava/lang/Iterable;)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    .line 122
    :cond_0
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0}, Lo/fU$onNavigationEvent;->ICustomTabsService()Lo/aD;

    move-result-object v0

    check-cast v0, Lo/fU;

    check-cast v0, Lo/ArticleDetailActivity$2$1$1;

    .line 123
    iget-boolean v1, p0, Lo/aN;->asBinder:Z

    if-nez v1, :cond_2

    .line 124
    iget-object v1, p0, Lo/aN;->onNavigationEvent:Lo/deleteAllReports;

    if-eqz v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lo/persistReport;->zzbj()Lo/onCreateLoader;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lo/deleteAllReports;->zza(Lo/ArticleDetailActivity$2$1$1;Lo/onCreateLoader;)V

    :cond_1
    const/4 v1, 0x1

    .line 126
    iput-boolean v1, p0, Lo/aN;->asBinder:Z

    goto :goto_0

    .line 127
    :cond_2
    iget-boolean v1, p0, Lo/aN;->asInterface:Z

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lo/aN;->onMessageChannelReady:Lo/b$b;

    const-string v2, "This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response"

    invoke-virtual {v1, v2}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public final extraCallback()J
    .locals 2

    .line 90
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback(J)Lo/aN;
    .locals 1

    .line 91
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onRelationshipValidationResult(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    .line 92
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/SessionManager;->zzcp()Lo/synthesizeReport;

    move-result-object p1

    invoke-virtual {p1}, Lo/synthesizeReport;->zzci()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lo/aN;->extraCallback:Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/internal/SessionManager;->zzcp()Lo/synthesizeReport;

    move-result-object p2

    invoke-virtual {p2}, Lo/synthesizeReport;->zzch()Lo/aY;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->zzj(Lo/aY;)V

    :cond_0
    return-object p0
.end method

.method public final extraCallback(Ljava/util/Map;)Lo/aN;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/aN;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->asBinder()Lo/ArticleDetailActivity$2$1$1$extraCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent(Ljava/util/Map;)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    return-object p0
.end method

.method public final onMessageChannelReady()Lo/aN;
    .locals 2

    .line 113
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    sget-object v1, Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;->ICustomTabsCallback:Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent(Lo/ArticleDetailActivity$2$1$1$onMessageChannelReady;)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    return-object p0
.end method

.method public final onMessageChannelReady(J)Lo/aN;
    .locals 1

    .line 74
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->ICustomTabsCallback(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/aN;
    .locals 5

    if-eqz p1, :cond_3

    .line 28
    invoke-static {p1}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;)Lo/isFullyInitialized;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lo/isFullyInitialized;->asBinder()Lo/isFullyInitialized$onNavigationEvent;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lo/isFullyInitialized$onNavigationEvent;->extraCallback(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lo/isFullyInitialized$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/isFullyInitialized$onNavigationEvent;->onPostMessage(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object p1

    invoke-virtual {p1}, Lo/isFullyInitialized$onNavigationEvent;->toString()Ljava/lang/String;

    move-result-object p1

    .line 33
    :cond_0
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x7d0

    if-gt v1, v2, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v3, 0x0

    const/16 v4, 0x2f

    if-eq v1, v4, :cond_2

    .line 37
    invoke-static {p1}, Lo/isFullyInitialized;->onPostMessage(Ljava/lang/String;)Lo/isFullyInitialized;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 39
    invoke-virtual {v1}, Lo/isFullyInitialized;->onPostMessage()Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    const/16 v1, 0x7cf

    .line 41
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_2

    .line 43
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 45
    :goto_0
    invoke-virtual {v0, p1}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->extraCallback(Ljava/lang/String;)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    :cond_3
    return-object p0
.end method

.method public final onNavigationEvent(J)Lo/aN;
    .locals 3

    .line 78
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/SessionManager;->zzcp()Lo/synthesizeReport;

    move-result-object v0

    .line 80
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->zzco()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v1

    iget-object v2, p0, Lo/aN;->onTransact:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/internal/SessionManager;->zzc(Ljava/lang/ref/WeakReference;)V

    .line 81
    iget-object v1, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v1, p1, p2}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->extraCallback(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    .line 82
    invoke-virtual {p0, v0}, Lo/aN;->zza(Lo/synthesizeReport;)V

    .line 83
    invoke-virtual {v0}, Lo/synthesizeReport;->zzci()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lo/aN;->extraCallback:Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-virtual {v0}, Lo/synthesizeReport;->zzch()Lo/aY;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->zzj(Lo/aY;)V

    :cond_0
    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/aN;
    .locals 2

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "CONNECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const-string v1, "TRACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_3
    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_6
    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_8
    const-string v1, "OPTIONS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 68
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onMessageChannelReady:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    goto :goto_1

    .line 66
    :pswitch_0
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->asInterface:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    goto :goto_1

    .line 64
    :pswitch_1
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onTransact:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    goto :goto_1

    .line 62
    :pswitch_2
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsCallback$Stub:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    goto :goto_1

    .line 60
    :pswitch_3
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onRelationshipValidationResult:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    goto :goto_1

    .line 58
    :pswitch_4
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->asBinder:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    goto :goto_1

    .line 56
    :pswitch_5
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onNavigationEvent:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    goto :goto_1

    .line 54
    :pswitch_6
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->extraCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    goto :goto_1

    .line 52
    :pswitch_7
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->ICustomTabsCallback:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    goto :goto_1

    .line 50
    :pswitch_8
    sget-object p1, Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;

    .line 69
    :goto_1
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0, p1}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onPostMessage(Lo/ArticleDetailActivity$2$1$1$onNavigationEvent;)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    :cond_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1faded82 -> :sswitch_8
        0x11336 -> :sswitch_7
        0x136ef -> :sswitch_6
        0x21c5e0 -> :sswitch_5
        0x2590a0 -> :sswitch_4
        0x4862828 -> :sswitch_3
        0x4c5f925 -> :sswitch_2
        0x638004ca -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNavigationEvent()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method public final onPostMessage(I)Lo/aN;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0, p1}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent(I)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    return-object p0
.end method

.method public final onPostMessage(J)Lo/aN;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0, p1, p2}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onPostMessage(J)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/aN;
    .locals 4

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {p1}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent()Lo/ArticleDetailActivity$2$1$1$extraCallback;

    return-object p0

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 103
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x1f

    if-le v1, v3, :cond_4

    const/16 v3, 0x7f

    if-le v1, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 110
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0, p1}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/ArticleDetailActivity$2$1$1$extraCallback;

    goto :goto_3

    .line 111
    :cond_5
    iget-object v0, p0, Lo/aN;->onMessageChannelReady:Lo/b$b;

    const-string v1, "The content type of the response is not a valid content-type:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, p1}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    :goto_3
    return-object p0
.end method

.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lo/aN;->asInterface:Z

    return-void
.end method

.method public final zza(Lo/synthesizeReport;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lo/aN;->onMessageChannelReady:Lo/b$b;

    const-string v0, "Unable to add new SessionId to the Network Trace. Continuing without it."

    invoke-virtual {p1, v0}, Lo/b$b;->extraCallback(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lo/aN;->onPostMessage:Lo/ArticleDetailActivity$2$1$1$extraCallback;

    invoke-virtual {v0}, Lo/ArticleDetailActivity$2$1$1$extraCallback;->asInterface()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lo/aN;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
