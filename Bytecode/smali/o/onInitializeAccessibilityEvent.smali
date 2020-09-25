.class public final Lo/onInitializeAccessibilityEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/initTitle;


# instance fields
.field public final ICustomTabsCallback:Lo/getTabContainer;

.field public final extraCallback:Landroid/graphics/Path$FillType;

.field public final onMessageChannelReady:Lo/verifyDrawable;

.field public final onNavigationEvent:Z

.field public final onPostMessage:Ljava/lang/String;

.field private final onRelationshipValidationResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lo/verifyDrawable;Lo/getTabContainer;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/onInitializeAccessibilityEvent;->onPostMessage:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lo/onInitializeAccessibilityEvent;->onRelationshipValidationResult:Z

    .line 25
    iput-object p3, p0, Lo/onInitializeAccessibilityEvent;->extraCallback:Landroid/graphics/Path$FillType;

    .line 26
    iput-object p4, p0, Lo/onInitializeAccessibilityEvent;->onMessageChannelReady:Lo/verifyDrawable;

    .line 27
    iput-object p5, p0, Lo/onInitializeAccessibilityEvent;->ICustomTabsCallback:Lo/getTabContainer;

    .line 28
    iput-boolean p6, p0, Lo/onInitializeAccessibilityEvent;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/createCheckedTextView;Lo/setOverlayMode;)Lo/setPadding;
    .locals 1

    .line 52
    new-instance v0, Lo/setIcon;

    invoke-direct {v0, p1, p2, p0}, Lo/setIcon;-><init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/onInitializeAccessibilityEvent;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeFill{color=, fillEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lo/onInitializeAccessibilityEvent;->onRelationshipValidationResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
