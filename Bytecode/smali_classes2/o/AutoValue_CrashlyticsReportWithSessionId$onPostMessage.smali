.class final Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;
.super Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoValue_CrashlyticsReportWithSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            "Ljava/lang/Thread;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lo/AutoValue_CrashlyticsReportWithSessionId;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1263
    invoke-direct {p0, v0}, Lo/AutoValue_CrashlyticsReportWithSessionId$extraCallback;-><init>(B)V

    .line 1264
    iput-object p1, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1265
    iput-object p2, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1266
    iput-object p3, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1267
    iput-object p4, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 1268
    iput-object p5, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method


# virtual methods
.method final extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)V
    .locals 1

    .line 1278
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final extraCallback(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;",
            ")Z"
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->onPostMessage:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId$ICustomTabsService;Ljava/lang/Thread;)V
    .locals 1

    .line 1273
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final onMessageChannelReady(Lo/AutoValue_CrashlyticsReportWithSessionId;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1293
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final onNavigationEvent(Lo/AutoValue_CrashlyticsReportWithSessionId;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/AutoValue_CrashlyticsReportWithSessionId<",
            "*>;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            "Lo/AutoValue_CrashlyticsReportWithSessionId$onNavigationEvent;",
            ")Z"
        }
    .end annotation

    .line 1288
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReportWithSessionId$onPostMessage;->extraCallback:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
