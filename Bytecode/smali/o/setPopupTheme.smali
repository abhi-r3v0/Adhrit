.class public final Lo/setPopupTheme;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setMeasureWithLargestChildEnabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPopupTheme$onPostMessage;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/hasDividerBeforeChildAt;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/hasDividerBeforeChildAt;)V
    .locals 0

    .line 1015
    invoke-interface {p1}, Lo/hasDividerBeforeChildAt;->ICustomTabsCallback()V

    return-void
.end method
