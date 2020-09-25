.class final Lo/unbindNPCICL$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unbindNPCICL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:[Lo/NPCICLJSInterface$3;

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:Lo/p$a;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1468
    new-array p1, p1, [Lo/NPCICLJSInterface$3;

    iput-object p1, p0, Lo/unbindNPCICL$extraCallback;->ICustomTabsCallback:[Lo/NPCICLJSInterface$3;

    const/4 p1, 0x0

    .line 1469
    iput p1, p0, Lo/unbindNPCICL$extraCallback;->onMessageChannelReady:I

    return-void
.end method
