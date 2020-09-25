.class public final Lo/getProgress;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getProgress$ICustomTabsCallback;,
        Lo/getProgress$onMessageChannelReady;
    }
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:Lo/getProgress$ICustomTabsCallback;

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:Lo/getProgress$onMessageChannelReady;


# direct methods
.method public constructor <init>(IIIILo/getProgress$ICustomTabsCallback;Lo/getProgress$onMessageChannelReady;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lo/getProgress;->ICustomTabsCallback:I

    .line 59
    iput p2, p0, Lo/getProgress;->extraCallback:I

    .line 60
    iput p3, p0, Lo/getProgress;->onMessageChannelReady:I

    .line 61
    iput p4, p0, Lo/getProgress;->onPostMessage:I

    .line 62
    iput-object p5, p0, Lo/getProgress;->onNavigationEvent:Lo/getProgress$ICustomTabsCallback;

    .line 63
    iput-object p6, p0, Lo/getProgress;->onRelationshipValidationResult:Lo/getProgress$onMessageChannelReady;

    return-void
.end method
