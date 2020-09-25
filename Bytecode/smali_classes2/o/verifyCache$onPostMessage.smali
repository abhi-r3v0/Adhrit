.class public final Lo/verifyCache$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/restoreState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/verifyCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)Lo/sendPut;
    .locals 2

    const/16 v0, 0x1000

    .line 1048
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v0, 0x100000

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1049
    new-instance v0, Lo/queryForTag$extraCallback$onPostMessage;

    new-instance v1, Lo/updatePriority;

    invoke-direct {v1}, Lo/updatePriority;-><init>()V

    invoke-direct {v0, v1, p1}, Lo/queryForTag$extraCallback$onPostMessage;-><init>(Lo/updatePriority;I)V

    return-object v0
.end method
