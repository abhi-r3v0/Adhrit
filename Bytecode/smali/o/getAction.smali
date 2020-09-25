.class public final Lo/getAction;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getSupportCompoundDrawablesTintList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getAction$onNavigationEvent;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/ActivityChooserView;)Z
    .locals 1

    .line 1315
    iget v0, p1, Lo/ActivityChooserView;->onRelationshipValidationResult:I

    .line 1477
    iget-object p1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {p1}, Lo/getWindowAnimations;->onPostMessage()I

    move-result p1

    if-lt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
