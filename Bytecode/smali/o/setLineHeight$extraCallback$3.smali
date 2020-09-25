.class final Lo/setLineHeight$extraCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setVerticalOffset$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLineHeight$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setVerticalOffset$extraCallback<",
        "Lo/setLastBaselineToBottomHeight<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/setLineHeight$extraCallback;


# direct methods
.method constructor <init>(Lo/setLineHeight$extraCallback;)V
    .locals 0

    .line 479
    iput-object p1, p0, Lo/setLineHeight$extraCallback$3;->onNavigationEvent:Lo/setLineHeight$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 3

    .line 1482
    new-instance v0, Lo/setLastBaselineToBottomHeight;

    iget-object v1, p0, Lo/setLineHeight$extraCallback$3;->onNavigationEvent:Lo/setLineHeight$extraCallback;

    iget-object v1, v1, Lo/setLineHeight$extraCallback;->onPostMessage:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

    iget-object v2, p0, Lo/setLineHeight$extraCallback$3;->onNavigationEvent:Lo/setLineHeight$extraCallback;

    iget-object v2, v2, Lo/setLineHeight$extraCallback;->ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;

    invoke-direct {v0, v1, v2}, Lo/setLastBaselineToBottomHeight;-><init>(Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;Lo/RatingCompat$StarStyle$extraCallback;)V

    return-object v0
.end method
