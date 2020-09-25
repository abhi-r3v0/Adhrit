.class final Lo/entryRemoved$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/entryRemoved;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder<",
        "Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "snapshots",
        "Lcom/google/firebase/firestore/DocumentSnapshot;",
        "e",
        "Lcom/google/firebase/firestore/FirebaseFirestoreException;",
        "onEvent"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/entryRemoved$extraCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/entryRemoved$extraCallback;

    invoke-direct {v0}, Lo/entryRemoved$extraCallback;-><init>()V

    sput-object v0, Lo/entryRemoved$extraCallback;->onNavigationEvent:Lo/entryRemoved$extraCallback;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 11

    .line 10
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    const-string v0, "health"

    if-eqz p2, :cond_0

    .line 1034
    sget-object p1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    check-cast p2, Ljava/lang/Throwable;

    const-string p1, "addSnapshotListener failed"

    invoke-static {v0, p1, p2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1038
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getData()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    if-eqz v1, :cond_b

    .line 1039
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getData()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1041
    :try_start_0
    const-class v3, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    invoke-virtual {p1, v2, v3}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    if-eqz v3, :cond_3

    .line 1043
    sget-object v4, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health$onNavigationEvent$onNavigationEvent;

    invoke-virtual {v3}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->getStatus()I

    move-result v4

    .line 1064
    invoke-static {}, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onMessageChannelReady()[Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    move-result-object v5

    .line 1074
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_6

    aget-object v9, v5, v8

    .line 2056
    iget v10, v9, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->onNavigationEvent:I

    if-ne v10, v4, :cond_4

    const/4 v10, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_6
    move-object v9, p2

    :goto_4
    if-nez v9, :cond_7

    .line 1064
    sget-object v9, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->extraCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    .line 1043
    :cond_7
    invoke-virtual {v3, v9}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->setQos(Lcom/dreamplug/utils/health/Health$onNavigationEvent;)V

    .line 1044
    sget-object v4, Lcom/dreamplug/utils/health/Health$onPostMessage;->warmup:Lcom/dreamplug/utils/health/Health$onPostMessage$onPostMessage;

    const-string v4, "key"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "value"

    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3052
    invoke-static {}, Lcom/dreamplug/utils/health/Health$onPostMessage;->onMessageChannelReady()[Lcom/dreamplug/utils/health/Health$onPostMessage;

    move-result-object v4

    .line 3074
    array-length v5, v4

    :goto_5
    if-ge v7, v5, :cond_9

    aget-object v6, v4, v7

    .line 4037
    iget-object v8, v6, Lcom/dreamplug/utils/health/Health$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 3052
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v10, "Locale.ENGLISH"

    invoke-static {v9, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v9, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_9
    move-object v6, p2

    :goto_6
    if-nez v6, :cond_a

    sget-object v6, Lcom/dreamplug/utils/health/Health$onPostMessage;->ICustomTabsCallback$Stub:Lcom/dreamplug/utils/health/Health$onPostMessage;

    .line 1045
    :cond_a
    sget-object v4, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady:Lcom/dreamplug/utils/health/Health;

    invoke-static {v6}, Lcom/dreamplug/utils/health/Health;->onMessageChannelReady(Lcom/dreamplug/utils/health/Health$onPostMessage;)Lo/setActive;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " serviceStatus = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    .line 1050
    sget-object v3, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "Error in parsing the data"

    invoke-static {v0, v3, v2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_b
    return-void
.end method
