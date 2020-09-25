.class final Lo/getAutoSizeMinTextSize;
.super Lo/getAutoSizeTextAvailableSizes;
.source ""


# instance fields
.field private extraCallback:I


# direct methods
.method constructor <init>(Lo/getSupportCompoundDrawablesTintList;I)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lo/getAutoSizeTextAvailableSizes;-><init>(Lo/getSupportCompoundDrawablesTintList;)V

    .line 11
    iput p2, p0, Lo/getAutoSizeMinTextSize;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/ActivityChooserView;)Z
    .locals 2

    .line 1485
    iget-object v0, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v0}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result v0

    .line 17
    invoke-super {p0, p1}, Lo/getAutoSizeTextAvailableSizes;->ICustomTabsCallback(Lo/ActivityChooserView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2319
    iget p1, p1, Lo/ActivityChooserView;->onTransact:I

    .line 19
    iget v1, p0, Lo/getAutoSizeMinTextSize;->extraCallback:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
