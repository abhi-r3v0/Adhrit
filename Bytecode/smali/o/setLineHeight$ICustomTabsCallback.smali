.class final Lo/setLineHeight$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLineHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/initProgress;

.field final ICustomTabsCallback$Stub:Lo/setTextFuture$onPostMessage;

.field final asBinder:Lo/RatingCompat$StarStyle$extraCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RatingCompat$StarStyle$extraCallback<",
            "Lo/setPrecomputedText<",
            "*>;>;"
        }
    .end annotation
.end field

.field final extraCallback:Lo/setTextMetricsParamsCompat;

.field final onMessageChannelReady:Lo/initProgress;

.field final onNavigationEvent:Lo/initProgress;

.field final onPostMessage:Lo/initProgress;


# direct methods
.method constructor <init>(Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/setTextMetricsParamsCompat;Lo/setTextFuture$onPostMessage;)V
    .locals 2

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    new-instance v0, Lo/setLineHeight$ICustomTabsCallback$3;

    invoke-direct {v0, p0}, Lo/setLineHeight$ICustomTabsCallback$3;-><init>(Lo/setLineHeight$ICustomTabsCallback;)V

    const/16 v1, 0x96

    .line 543
    invoke-static {v1, v0}, Lo/setVerticalOffset;->onNavigationEvent(ILo/setVerticalOffset$extraCallback;)Lo/RatingCompat$StarStyle$extraCallback;

    move-result-object v0

    iput-object v0, p0, Lo/setLineHeight$ICustomTabsCallback;->asBinder:Lo/RatingCompat$StarStyle$extraCallback;

    .line 566
    iput-object p1, p0, Lo/setLineHeight$ICustomTabsCallback;->onNavigationEvent:Lo/initProgress;

    .line 567
    iput-object p2, p0, Lo/setLineHeight$ICustomTabsCallback;->ICustomTabsCallback:Lo/initProgress;

    .line 568
    iput-object p3, p0, Lo/setLineHeight$ICustomTabsCallback;->onMessageChannelReady:Lo/initProgress;

    .line 569
    iput-object p4, p0, Lo/setLineHeight$ICustomTabsCallback;->onPostMessage:Lo/initProgress;

    .line 570
    iput-object p5, p0, Lo/setLineHeight$ICustomTabsCallback;->extraCallback:Lo/setTextMetricsParamsCompat;

    .line 571
    iput-object p6, p0, Lo/setLineHeight$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/setTextFuture$onPostMessage;

    return-void
.end method
