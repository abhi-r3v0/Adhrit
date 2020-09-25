.class public final Lo/onMeasure;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# instance fields
.field public final ICustomTabsCallback:Lo/onLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onLayout<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final ICustomTabsCallback$Stub:Lo/setTransitioning;

.field public final asBinder:Lo/setTransitioning;

.field public final asInterface:Lo/setTransitioning;

.field public final extraCallback:Lo/setTransitioning;

.field public final onMessageChannelReady:Lo/setTabContainer;

.field public final onNavigationEvent:Lo/isCollapsed;

.field public final onPostMessage:Lo/getTabContainer;

.field public final onRelationshipValidationResult:Lo/setTransitioning;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 35
    invoke-direct/range {v0 .. v9}, Lo/onMeasure;-><init>(Lo/isCollapsed;Lo/onLayout;Lo/setTabContainer;Lo/setTransitioning;Lo/getTabContainer;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;)V

    return-void
.end method

.method public constructor <init>(Lo/isCollapsed;Lo/onLayout;Lo/setTabContainer;Lo/setTransitioning;Lo/getTabContainer;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isCollapsed;",
            "Lo/onLayout<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lo/setTabContainer;",
            "Lo/setTransitioning;",
            "Lo/getTabContainer;",
            "Lo/setTransitioning;",
            "Lo/setTransitioning;",
            "Lo/setTransitioning;",
            "Lo/setTransitioning;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/onMeasure;->onNavigationEvent:Lo/isCollapsed;

    .line 44
    iput-object p2, p0, Lo/onMeasure;->ICustomTabsCallback:Lo/onLayout;

    .line 45
    iput-object p3, p0, Lo/onMeasure;->onMessageChannelReady:Lo/setTabContainer;

    .line 46
    iput-object p4, p0, Lo/onMeasure;->extraCallback:Lo/setTransitioning;

    .line 47
    iput-object p5, p0, Lo/onMeasure;->onPostMessage:Lo/getTabContainer;

    .line 48
    iput-object p6, p0, Lo/onMeasure;->onRelationshipValidationResult:Lo/setTransitioning;

    .line 49
    iput-object p7, p0, Lo/onMeasure;->asBinder:Lo/setTransitioning;

    .line 50
    iput-object p8, p0, Lo/onMeasure;->ICustomTabsCallback$Stub:Lo/setTransitioning;

    .line 51
    iput-object p9, p0, Lo/onMeasure;->asInterface:Lo/setTransitioning;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
