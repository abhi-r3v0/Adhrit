.class final Lo/addItemDecoration$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addItemDecoration;->extraCallback(Ljava/lang/String;)V
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
        "documentSnapshot",
        "Lcom/google/firebase/firestore/DocumentSnapshot;",
        "exception",
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


# instance fields
.field private synthetic onPostMessage:Lo/addItemDecoration;


# direct methods
.method constructor <init>(Lo/addItemDecoration;)V
    .locals 0

    iput-object p1, p0, Lo/addItemDecoration$onNavigationEvent;->onPostMessage:Lo/addItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    .line 35
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    if-eqz p1, :cond_0

    .line 1149
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getData()Ljava/util/Map;

    invoke-static {}, Lo/addItemDecoration;->extraCallback()V

    .line 1151
    iget-object p2, p0, Lo/addItemDecoration$onNavigationEvent;->onPostMessage:Lo/addItemDecoration;

    const-class v0, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    invoke-virtual {p1, v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    .line 2056
    iput-object p1, p2, Lo/addItemDecoration;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    .line 1153
    iget-object p1, p0, Lo/addItemDecoration$onNavigationEvent;->onPostMessage:Lo/addItemDecoration;

    invoke-virtual {p1}, Lo/addItemDecoration;->onPostMessage()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1155
    sget-object p1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    check-cast p2, Ljava/lang/Throwable;

    const-string/jumbo p1, "string-firestore"

    const-string v0, "exception while realtime sync"

    invoke-static {p1, v0, p2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
