.class public final Lo/setSupportBackgroundTintMode;
.super Lo/dispatchMediaButtonEvent;
.source ""


# instance fields
.field private onPostMessage:Lo/needsDividerBefore;


# direct methods
.method public constructor <init>(Lo/needsDividerBefore;Lo/setAutoSizeTextTypeWithDefaults;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2}, Lo/dispatchMediaButtonEvent;-><init>(Lo/setAutoSizeTextTypeWithDefaults;)V

    .line 12
    iput-object p1, p0, Lo/setSupportBackgroundTintMode;->onPostMessage:Lo/needsDividerBefore;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/ActivityChooserView;)Z
    .locals 2

    .line 17
    iget-object v0, p0, Lo/setSupportBackgroundTintMode;->onPostMessage:Lo/needsDividerBefore;

    .line 1123
    iget v1, p1, Lo/ActivityChooserView;->extraCallback:I

    .line 17
    invoke-interface {v0, v1}, Lo/needsDividerBefore;->ICustomTabsCallback(I)Z

    move-result v0

    .line 18
    invoke-super {p0, p1}, Lo/dispatchMediaButtonEvent;->onNavigationEvent(Lo/ActivityChooserView;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
