.class public final Lo/findChildView$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findChildView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/PaymentStatusDetailsDialog$Companion;",
        "",
        "()V",
        "TYPE",
        "",
        "getInstance",
        "Lcom/dreamplug/fabrik/ui/lending/dialog/PaymentStatusDetailsDialog;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$SeeCalculationDialogExtra;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field static final onPostMessage:Lo/addItemDecoration$onPostMessage;


# instance fields
.field final ICustomTabsCallback:Lo/releaseVelocityTracker$extraCallback;

.field private final ICustomTabsCallback$Stub:Lo/resolveIsInfinite$onPostMessage;

.field final asBinder:Lo/onTargetFound$onPostMessage;

.field final asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final extraCallback:Lo/hasValidAnchor$onNavigationEvent;

.field final onMessageChannelReady:Lo/calculateDtToFit$ICustomTabsCallback;

.field final onNavigationEvent:Lo/findFirstReferenceChild$extraCallback;

.field final onRelationshipValidationResult:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field final onTransact:Lo/recycleViewsFromStart$ICustomTabsCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "ExtractorLooper"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/findChildView$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/resolveIsInfinite$onPostMessage;Lo/setBreadcrumbEventReceiver;Lo/releaseVelocityTracker$extraCallback;Lo/calculateDtToFit$ICustomTabsCallback;Lo/findFirstReferenceChild$extraCallback;Lo/hasValidAnchor$onNavigationEvent;Lo/onTargetFound$onPostMessage;Lo/recycleViewsFromStart$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/resolveIsInfinite$onPostMessage;",
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;",
            "Lo/releaseVelocityTracker$extraCallback;",
            "Lo/calculateDtToFit$ICustomTabsCallback;",
            "Lo/findFirstReferenceChild$extraCallback;",
            "Lo/hasValidAnchor$onNavigationEvent;",
            "Lo/onTargetFound$onPostMessage;",
            "Lo/recycleViewsFromStart$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/findChildView$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/resolveIsInfinite$onPostMessage;

    iput-object p2, p0, Lo/findChildView$onMessageChannelReady;->onRelationshipValidationResult:Lo/setBreadcrumbEventReceiver;

    iput-object p3, p0, Lo/findChildView$onMessageChannelReady;->ICustomTabsCallback:Lo/releaseVelocityTracker$extraCallback;

    iput-object p4, p0, Lo/findChildView$onMessageChannelReady;->onMessageChannelReady:Lo/calculateDtToFit$ICustomTabsCallback;

    iput-object p5, p0, Lo/findChildView$onMessageChannelReady;->onNavigationEvent:Lo/findFirstReferenceChild$extraCallback;

    iput-object p6, p0, Lo/findChildView$onMessageChannelReady;->extraCallback:Lo/hasValidAnchor$onNavigationEvent;

    iput-object p7, p0, Lo/findChildView$onMessageChannelReady;->asBinder:Lo/onTargetFound$onPostMessage;

    iput-object p8, p0, Lo/findChildView$onMessageChannelReady;->onTransact:Lo/recycleViewsFromStart$ICustomTabsCallback;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lo/findChildView$onMessageChannelReady;->asInterface:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method extraCallback(ILjava/lang/Exception;)V
    .locals 2

    .line 2000
    :try_start_0
    iget-object v0, p0, Lo/findChildView$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/resolveIsInfinite$onPostMessage;

    .line 3000
    new-instance v1, Lo/canScrollVertically$extraCallback;

    invoke-direct {v1, v0, p1}, Lo/canScrollVertically$extraCallback;-><init>(Lo/resolveIsInfinite$onPostMessage;I)V

    invoke-virtual {v0, v1}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(Lo/isValue;)Ljava/lang/Object;

    .line 2000
    iget-object v0, p0, Lo/findChildView$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/resolveIsInfinite$onPostMessage;

    .line 4000
    new-instance v1, Lo/getExtraLayoutSpace$onPostMessage;

    invoke-direct {v1, v0, p1}, Lo/getExtraLayoutSpace$onPostMessage;-><init>(Lo/resolveIsInfinite$onPostMessage;I)V

    invoke-virtual {v0, v1}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(Lo/isValue;)Ljava/lang/Object;
    :try_end_0
    .catch Lo/getFactory; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2000
    :catch_0
    sget-object p1, Lo/findChildView$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Error during error handling: %s"

    invoke-virtual {p1, p2, v0}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
