.class public final Lo/initForMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# instance fields
.field public final ICustomTabsCallback:Lo/onInterceptTouchEvent;

.field public final ICustomTabsCallback$Stub:Lo/startActionModeForChild;

.field public final asInterface:Z

.field public final extraCallback:Lo/startActionModeForChild;

.field public final onMessageChannelReady:Lo/getTabContainer;

.field public final onNavigationEvent:Landroid/graphics/Path$FillType;

.field public final onPostMessage:Lo/closeMode;

.field public final onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/closeMode;Landroid/graphics/Path$FillType;Lo/onInterceptTouchEvent;Lo/getTabContainer;Lo/startActionModeForChild;Lo/startActionModeForChild;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lo/initForMode;->onPostMessage:Lo/closeMode;

    .line 34
    iput-object p3, p0, Lo/initForMode;->onNavigationEvent:Landroid/graphics/Path$FillType;

    .line 35
    iput-object p4, p0, Lo/initForMode;->ICustomTabsCallback:Lo/onInterceptTouchEvent;

    .line 36
    iput-object p5, p0, Lo/initForMode;->onMessageChannelReady:Lo/getTabContainer;

    .line 37
    iput-object p6, p0, Lo/initForMode;->extraCallback:Lo/startActionModeForChild;

    .line 38
    iput-object p7, p0, Lo/initForMode;->ICustomTabsCallback$Stub:Lo/startActionModeForChild;

    .line 39
    iput-object p1, p0, Lo/initForMode;->onRelationshipValidationResult:Ljava/lang/String;

    .line 42
    iput-boolean p8, p0, Lo/initForMode;->asInterface:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 86
    new-instance v0, Lo/setExpandedFormat;

    invoke-direct {v0, p1, p2, p0}, Lo/setExpandedFormat;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/initForMode;)V

    return-object v0
.end method
