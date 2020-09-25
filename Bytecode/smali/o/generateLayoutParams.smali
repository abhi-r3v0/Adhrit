.class public final Lo/generateLayoutParams;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/generateLayoutParams$onMessageChannelReady;,
        Lo/generateLayoutParams$extraCallback;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setTransitioning;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsCallback$Stub:Lo/setTransitioning;

.field public final asBinder:Lo/generateLayoutParams$onMessageChannelReady;

.field public final asInterface:Z

.field public final extraCallback:Lo/getTabContainer;

.field public final onMessageChannelReady:Lo/verifyDrawable;

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Lo/setTransitioning;

.field public final onRelationshipValidationResult:F

.field public final onTransact:Lo/generateLayoutParams$extraCallback;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/setTransitioning;Ljava/util/List;Lo/verifyDrawable;Lo/getTabContainer;Lo/setTransitioning;Lo/generateLayoutParams$extraCallback;Lo/generateLayoutParams$onMessageChannelReady;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/setTransitioning;",
            "Ljava/util/List<",
            "Lo/setTransitioning;",
            ">;",
            "Lo/verifyDrawable;",
            "Lo/getTabContainer;",
            "Lo/setTransitioning;",
            "Lo/generateLayoutParams$extraCallback;",
            "Lo/generateLayoutParams$onMessageChannelReady;",
            "FZ)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lo/generateLayoutParams;->onNavigationEvent:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lo/generateLayoutParams;->onPostMessage:Lo/setTransitioning;

    .line 70
    iput-object p3, p0, Lo/generateLayoutParams;->ICustomTabsCallback:Ljava/util/List;

    .line 71
    iput-object p4, p0, Lo/generateLayoutParams;->onMessageChannelReady:Lo/verifyDrawable;

    .line 72
    iput-object p5, p0, Lo/generateLayoutParams;->extraCallback:Lo/getTabContainer;

    .line 73
    iput-object p6, p0, Lo/generateLayoutParams;->ICustomTabsCallback$Stub:Lo/setTransitioning;

    .line 74
    iput-object p7, p0, Lo/generateLayoutParams;->onTransact:Lo/generateLayoutParams$extraCallback;

    .line 75
    iput-object p8, p0, Lo/generateLayoutParams;->asBinder:Lo/generateLayoutParams$onMessageChannelReady;

    .line 76
    iput p9, p0, Lo/generateLayoutParams;->onRelationshipValidationResult:F

    .line 77
    iput-boolean p10, p0, Lo/generateLayoutParams;->asInterface:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 81
    new-instance v0, Lo/getContentHeight;

    invoke-direct {v0, p1, p2, p0}, Lo/getContentHeight;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/generateLayoutParams;)V

    return-object v0
.end method
