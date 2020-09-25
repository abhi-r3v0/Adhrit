.class final Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/loadProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/loadProperties<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$3;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final schedule(Lo/isLogsDisabledCompletely;Lo/AppsFlyerTrackingRequestListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isLogsDisabledCompletely<",
            "TT;>;",
            "Lo/AppsFlyerTrackingRequestListener;",
            ")V"
        }
    .end annotation

    const/4 p1, 0x0

    .line 3
    invoke-interface {p2, p1}, Lo/AppsFlyerTrackingRequestListener;->onSchedule(Ljava/lang/Exception;)V

    return-void
.end method

.method public final send(Lo/isLogsDisabledCompletely;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isLogsDisabledCompletely<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method
