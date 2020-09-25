.class public final Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setAutoSizeTextTypeWithDefaults;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;
    }
.end annotation


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

    .line 1319
    iget v0, p1, Lo/ActivityChooserView;->onTransact:I

    .line 1477
    iget-object v1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onPostMessage()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2319
    iget v0, p1, Lo/ActivityChooserView;->onTransact:I

    .line 2323
    iget v1, p1, Lo/ActivityChooserView;->onNavigationEvent:I

    sub-int/2addr v0, v1

    .line 2485
    iget-object p1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {p1}, Lo/getWindowAnimations;->ICustomTabsCallback()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
