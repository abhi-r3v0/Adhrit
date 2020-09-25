.class public final Lo/setShuffleModeEnabledRemoved;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onNavigationEvent:Lo/setShuffleMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lo/setCaptioningEnabled;

    invoke-direct {v0}, Lo/setCaptioningEnabled;-><init>()V

    sput-object v0, Lo/setShuffleModeEnabledRemoved;->onNavigationEvent:Lo/setShuffleMode;

    return-void
.end method

.method public static onNavigationEvent(Lo/rateWithExtras;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Lo/rateWithExtras;",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 199
    sget-object v0, Lo/setShuffleModeEnabledRemoved;->onNavigationEvent:Lo/setShuffleMode;

    invoke-virtual {v0, p0, p1, p2}, Lo/setShuffleMode;->ICustomTabsCallback(Lo/rateWithExtras;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent()Lo/rateWithExtras;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static onPostMessage(Lo/rateWithExtras;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Lo/rateWithExtras;",
            "[",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 194
    sget-object v0, Lo/setShuffleModeEnabledRemoved;->onNavigationEvent:Lo/setShuffleMode;

    invoke-virtual {v0, p0, p1, p2}, Lo/setShuffleMode;->ICustomTabsCallback(Lo/rateWithExtras;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method
