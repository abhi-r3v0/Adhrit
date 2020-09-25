.class final Lo/addItemDecoration$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addLifecycleEventListener;


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
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/addLifecycleEventListener<",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/google/firebase/firestore/DocumentSnapshot;",
        "kotlin.jvm.PlatformType",
        "onSuccess"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/addItemDecoration;


# direct methods
.method constructor <init>(Lo/addItemDecoration;)V
    .locals 0

    iput-object p1, p0, Lo/addItemDecoration$ICustomTabsCallback;->extraCallback:Lo/addItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 35
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    .line 1136
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "it"

    .line 1137
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getData()Ljava/util/Map;

    invoke-static {}, Lo/addItemDecoration;->extraCallback()V

    .line 1138
    iget-object v0, p0, Lo/addItemDecoration$ICustomTabsCallback;->extraCallback:Lo/addItemDecoration;

    const-class v1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    invoke-virtual {p1, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->toObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    .line 2056
    iput-object p1, v0, Lo/addItemDecoration;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardResponse;

    .line 1140
    iget-object p1, p0, Lo/addItemDecoration$ICustomTabsCallback;->extraCallback:Lo/addItemDecoration;

    invoke-virtual {p1}, Lo/addItemDecoration;->onPostMessage()V

    :cond_0
    return-void
.end method
