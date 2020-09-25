.class public final Lo/hasValidAnchor$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasValidAnchor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicFragment$Companion;",
        "",
        "()V",
        "ALWAYS_DARK_MODE",
        "",
        "TAG",
        "",
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
.field public final ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

.field public final extraCallback:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Lo/onVerificationFailed;

.field public final onPostMessage:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;Lo/setBreadcrumbEventReceiver;Lo/resolveIsInfinite$onPostMessage;Lo/setBreadcrumbEventReceiver;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onVerificationFailed;",
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;",
            "Lo/resolveIsInfinite$onPostMessage;",
            "Lo/setBreadcrumbEventReceiver<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/hasValidAnchor$onNavigationEvent;->onNavigationEvent:Lo/onVerificationFailed;

    iput-object p2, p0, Lo/hasValidAnchor$onNavigationEvent;->onMessageChannelReady:Lo/setBreadcrumbEventReceiver;

    iput-object p3, p0, Lo/hasValidAnchor$onNavigationEvent;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    iput-object p4, p0, Lo/hasValidAnchor$onNavigationEvent;->extraCallback:Lo/setBreadcrumbEventReceiver;

    iput-object p5, p0, Lo/hasValidAnchor$onNavigationEvent;->onPostMessage:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    return-void
.end method
