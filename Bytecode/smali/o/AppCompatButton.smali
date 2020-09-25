.class public final Lo/AppCompatButton;
.super Lo/dispatchMediaButtonEvent;
.source ""


# instance fields
.field private extraCallback:I


# direct methods
.method public constructor <init>(ILo/setAutoSizeTextTypeWithDefaults;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2}, Lo/dispatchMediaButtonEvent;-><init>(Lo/setAutoSizeTextTypeWithDefaults;)V

    .line 12
    iput p1, p0, Lo/AppCompatButton;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/ActivityChooserView;)Z
    .locals 1

    .line 17
    invoke-super {p0, p1}, Lo/dispatchMediaButtonEvent;->onNavigationEvent(Lo/ActivityChooserView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1288
    iget p1, p1, Lo/ActivityChooserView;->asInterface:I

    .line 18
    iget v0, p0, Lo/AppCompatButton;->extraCallback:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
