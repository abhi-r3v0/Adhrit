.class public final Lo/calculateDtToFit$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/calculateDtToFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lo/calculateDtToFit;


# direct methods
.method public constructor <init>(Lo/calculateDtToFit;)V
    .locals 0

    iput-object p1, p0, Lo/calculateDtToFit$extraCallback;->ICustomTabsCallback:Lo/calculateDtToFit;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    const-string v0, "firebase_win"

    const-string/jumbo v1, "subscribeUserCountMap user logged in verfied"

    .line 1062
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v0, p0, Lo/calculateDtToFit$extraCallback;->ICustomTabsCallback:Lo/calculateDtToFit;

    invoke-static {v0}, Lo/calculateDtToFit;->extraCallback(Lo/calculateDtToFit;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    const-string/jumbo v1, "win_presence"

    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->collection(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;

    move-result-object v0

    const-string v1, "card_level_users"

    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionApplicationEncoder;->document(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;

    move-result-object v0

    const-string v1, "firestore.collection(PRE\u2026ument(\"card_level_users\")"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    new-instance v1, Lo/calculateDtToFit$extraCallback$extraCallback;

    invoke-direct {v1, p0}, Lo/calculateDtToFit$extraCallback$extraCallback;-><init>(Lo/calculateDtToFit$extraCallback;)V

    check-cast v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;

    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationEncoder;->addSnapshotListener(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;)Lo/getNdkPayload;

    move-result-object v0

    const-string v1, "globalCount.addSnapshotL\u2026          }\n            }"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    iget-object v1, p0, Lo/calculateDtToFit$extraCallback;->ICustomTabsCallback:Lo/calculateDtToFit;

    invoke-static {v1}, Lo/calculateDtToFit;->onMessageChannelReady(Lo/calculateDtToFit;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
