.class final Lo/calculateDtToFit$extraCallback$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventLogEncoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/calculateDtToFit$extraCallback;
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
.field private synthetic onMessageChannelReady:Lo/calculateDtToFit$extraCallback;


# direct methods
.method constructor <init>(Lo/calculateDtToFit$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/calculateDtToFit$extraCallback$extraCallback;->onMessageChannelReady:Lo/calculateDtToFit$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 2

    .line 16
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;

    const-string v0, "firebase_win"

    if-eqz p1, :cond_1

    .line 1065
    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1066
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subscribeUserCountMap success : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getData()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    iget-object p2, p0, Lo/calculateDtToFit$extraCallback$extraCallback;->onMessageChannelReady:Lo/calculateDtToFit$extraCallback;

    iget-object p2, p2, Lo/calculateDtToFit$extraCallback;->ICustomTabsCallback:Lo/calculateDtToFit;

    invoke-static {p2}, Lo/calculateDtToFit;->onNavigationEvent(Lo/calculateDtToFit;)Lo/setActive;

    move-result-object p2

    invoke-virtual {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder;->getData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "data"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 1069
    sget-object p1, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "subscribeUserCountMap failed : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/replaceAll;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
