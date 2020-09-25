.class public final Lo/killMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# instance fields
.field public final ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:F

.field public final ICustomTabsService:Z

.field public final asBinder:Lo/generateLayoutParams$onMessageChannelReady;

.field public final asInterface:Lo/generateLayoutParams$extraCallback;

.field public final extraCallback:Lo/getTabContainer;

.field public final newSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/setTransitioning;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Lo/onInterceptTouchEvent;

.field public final onNavigationEvent:Lo/closeMode;

.field public final onPostMessage:Lo/startActionModeForChild;

.field public final onRelationshipValidationResult:Lo/startActionModeForChild;

.field public final onTransact:Lo/setTransitioning;

.field public final warmup:Lo/setTransitioning;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/closeMode;Lo/onInterceptTouchEvent;Lo/getTabContainer;Lo/startActionModeForChild;Lo/startActionModeForChild;Lo/setTransitioning;Lo/generateLayoutParams$extraCallback;Lo/generateLayoutParams$onMessageChannelReady;FLjava/util/List;Lo/setTransitioning;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/closeMode;",
            "Lo/onInterceptTouchEvent;",
            "Lo/getTabContainer;",
            "Lo/startActionModeForChild;",
            "Lo/startActionModeForChild;",
            "Lo/setTransitioning;",
            "Lo/generateLayoutParams$extraCallback;",
            "Lo/generateLayoutParams$onMessageChannelReady;",
            "F",
            "Ljava/util/List<",
            "Lo/setTransitioning;",
            ">;",
            "Lo/setTransitioning;",
            "Z)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/killMode;->ICustomTabsCallback:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lo/killMode;->onNavigationEvent:Lo/closeMode;

    .line 41
    iput-object p3, p0, Lo/killMode;->onMessageChannelReady:Lo/onInterceptTouchEvent;

    .line 42
    iput-object p4, p0, Lo/killMode;->extraCallback:Lo/getTabContainer;

    .line 43
    iput-object p5, p0, Lo/killMode;->onPostMessage:Lo/startActionModeForChild;

    .line 44
    iput-object p6, p0, Lo/killMode;->onRelationshipValidationResult:Lo/startActionModeForChild;

    .line 45
    iput-object p7, p0, Lo/killMode;->onTransact:Lo/setTransitioning;

    .line 46
    iput-object p8, p0, Lo/killMode;->asInterface:Lo/generateLayoutParams$extraCallback;

    .line 47
    iput-object p9, p0, Lo/killMode;->asBinder:Lo/generateLayoutParams$onMessageChannelReady;

    .line 48
    iput p10, p0, Lo/killMode;->ICustomTabsCallback$Stub:F

    .line 49
    iput-object p11, p0, Lo/killMode;->newSession:Ljava/util/List;

    .line 50
    iput-object p12, p0, Lo/killMode;->warmup:Lo/setTransitioning;

    .line 51
    iput-boolean p13, p0, Lo/killMode;->ICustomTabsService:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 107
    new-instance v0, Lo/onTouchEvent;

    invoke-direct {v0, p1, p2, p0}, Lo/onTouchEvent;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/killMode;)V

    return-object v0
.end method
