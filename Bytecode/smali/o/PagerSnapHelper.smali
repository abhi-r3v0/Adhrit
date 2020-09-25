.class public final Lo/PagerSnapHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PagerSnapHelper$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000cJ@\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00142\u0016\u0010\u0015\u001a\u0012\u0012\u0008\u0012\u00060\u0017j\u0002`\u0018\u0012\u0004\u0012\u00020\u000c0\u00162\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0006j\u0008\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/security/GameScoreStream;",
        "",
        "()V",
        "firestore",
        "Lcom/google/firebase/firestore/FirebaseFirestore;",
        "scoreStream",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;",
        "Lkotlin/collections/ArrayList;",
        "gameDuration",
        "",
        "next",
        "",
        "score",
        "",
        "reset",
        "upload",
        "gameId",
        "",
        "success",
        "Lkotlin/Function0;",
        "failure",
        "Lkotlin/Function1;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "idempotencyId",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onNavigationEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/game/security/ScoreStreamItem;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/PagerSnapHelper;->onNavigationEvent:Ljava/util/ArrayList;

    .line 21
    sget-object v0, Lo/calculateTimeForDeceleration;->onNavigationEvent:Lo/calculateTimeForDeceleration;

    invoke-static {}, Lo/calculateTimeForDeceleration;->ICustomTabsCallback()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->getInstance(Lcom/google/firebase/FirebaseApp;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    move-result-object v0

    const-string v1, "FirebaseFirestore.getIns\u2026eAuthManager.firebaseApp)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/PagerSnapHelper;->onPostMessage:Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;

    .line 24
    new-instance v1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;

    invoke-direct {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;-><init>()V

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->setPersistenceEnabled(Z)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->build()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder;->setFirestoreSettings(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;Lo/getServerTime;Lo/onDisconnectSetValue;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/getServerTime<",
            "Lo/addWrites;",
            ">;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Ljava/lang/Exception;",
            "Lo/addWrites;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "success"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v0, "game-security"

    const-string/jumbo v1, "user valid"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lo/calculateTimeForDeceleration;->onNavigationEvent:Lo/calculateTimeForDeceleration;

    new-instance v8, Lo/PagerSnapHelper$onMessageChannelReady;

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lo/PagerSnapHelper$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/PagerSnapHelper;Ljava/lang/String;Ljava/lang/String;Lo/getServerTime;Lo/onDisconnectSetValue;)V

    check-cast v8, Lo/getServerTime;

    invoke-virtual {v0, v8}, Lo/calculateTimeForDeceleration;->ICustomTabsCallback(Lo/getServerTime;)V

    :cond_0
    return-void
.end method
