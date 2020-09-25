.class public final Lo/ParcelableVolumeInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getSupportCompoundDrawablesTintList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ParcelableVolumeInfo$1$ICustomTabsCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/ActivityChooserView;)Z
    .locals 1

    .line 1319
    iget v0, p1, Lo/ActivityChooserView;->onTransact:I

    .line 1485
    iget-object p1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {p1}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result p1

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
