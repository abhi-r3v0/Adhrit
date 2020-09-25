.class public final Lo/shouldDelayChildPressedState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/shouldDelayChildPressedState$onPostMessage;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:Lo/setTransitioning;

.field public final ICustomTabsCallback$Stub:Lo/setTransitioning;

.field public final asBinder:Lo/setTransitioning;

.field public final asInterface:Z

.field public final extraCallback:Lo/onLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onLayout<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public final onMessageChannelReady:Ljava/lang/String;

.field public final onNavigationEvent:Lo/shouldDelayChildPressedState$onPostMessage;

.field public final onPostMessage:Lo/setTransitioning;

.field public final onRelationshipValidationResult:Lo/setTransitioning;

.field public final onTransact:Lo/setTransitioning;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/shouldDelayChildPressedState$onPostMessage;Lo/setTransitioning;Lo/onLayout;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Lo/setTransitioning;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/shouldDelayChildPressedState$onPostMessage;",
            "Lo/setTransitioning;",
            "Lo/onLayout<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;",
            "Lo/setTransitioning;",
            "Lo/setTransitioning;",
            "Lo/setTransitioning;",
            "Lo/setTransitioning;",
            "Lo/setTransitioning;",
            "Z)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lo/shouldDelayChildPressedState;->onMessageChannelReady:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lo/shouldDelayChildPressedState;->onNavigationEvent:Lo/shouldDelayChildPressedState$onPostMessage;

    .line 51
    iput-object p3, p0, Lo/shouldDelayChildPressedState;->ICustomTabsCallback:Lo/setTransitioning;

    .line 52
    iput-object p4, p0, Lo/shouldDelayChildPressedState;->extraCallback:Lo/onLayout;

    .line 53
    iput-object p5, p0, Lo/shouldDelayChildPressedState;->onPostMessage:Lo/setTransitioning;

    .line 54
    iput-object p6, p0, Lo/shouldDelayChildPressedState;->onRelationshipValidationResult:Lo/setTransitioning;

    .line 55
    iput-object p7, p0, Lo/shouldDelayChildPressedState;->onTransact:Lo/setTransitioning;

    .line 56
    iput-object p8, p0, Lo/shouldDelayChildPressedState;->ICustomTabsCallback$Stub:Lo/setTransitioning;

    .line 57
    iput-object p9, p0, Lo/shouldDelayChildPressedState;->asBinder:Lo/setTransitioning;

    .line 58
    iput-boolean p10, p0, Lo/shouldDelayChildPressedState;->asInterface:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 102
    new-instance v0, Lo/setGroupDividerEnabled;

    invoke-direct {v0, p1, p2, p0}, Lo/setGroupDividerEnabled;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/shouldDelayChildPressedState;)V

    return-object v0
.end method
