.class final Lo/sendShuffleMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setAutoSizeTextTypeWithDefaults;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/ActivityChooserView;)Z
    .locals 2

    .line 1315
    iget v0, p1, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    .line 1323
    iget v1, p1, Lo/ActivityChooserView;->onNavigationEvent:I

    add-int/2addr v0, v1

    .line 1477
    iget-object v1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2315
    iget v0, p1, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    .line 2485
    iget-object p1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {p1}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result p1

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
