.class final Lo/setLineHeight$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLineHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/setLastBaselineToBottomHeight<",
            "*>;>;"
        }
    .end annotation
.end field

.field onMessageChannelReady:I

.field final onPostMessage:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;)V
    .locals 2

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    new-instance v0, Lo/setLineHeight$extraCallback$3;

    invoke-direct {v0, p0}, Lo/setLineHeight$extraCallback$3;-><init>(Lo/setLineHeight$extraCallback;)V

    const/16 v1, 0x96

    .line 477
    invoke-static {v1, v0}, Lo/setVerticalOffset;->onNavigationEvent(ILo/setVerticalOffset$extraCallback;)Lo/RatingCompat$StarStyle$extraCallback;

    move-result-object v0

    iput-object v0, p0, Lo/setLineHeight$extraCallback;->ICustomTabsCallback:Lo/RatingCompat$StarStyle$extraCallback;

    .line 489
    iput-object p1, p0, Lo/setLineHeight$extraCallback;->onPostMessage:Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;

    return-void
.end method
