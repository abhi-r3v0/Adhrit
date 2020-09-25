.class public Lo/AFSensorManager$4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AFSensorManager$4$onPostMessage;
    }
.end annotation


# instance fields
.field public final extraCallback:Lo/AFSensorManager$4$onPostMessage;

.field public final onPostMessage:Lo/setPageMargin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPageMargin<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/getPathName;Lo/onAppOpenAttributionNative;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget v0, p2, Lo/onAppOpenAttributionNative;->onMessageChannelReady:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 33
    new-instance v0, Lo/AFSensorManager$4$onPostMessage;

    .line 35
    invoke-static {}, Lo/isPermissionAvailable;->onPostMessage()Lo/isPermissionAvailable;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lo/AFSensorManager$4$onPostMessage;-><init>(Lo/getPathName;Lo/onAppOpenAttributionNative;Lo/onAppOpenAttribution;)V

    iput-object v0, p0, Lo/AFSensorManager$4;->extraCallback:Lo/AFSensorManager$4$onPostMessage;

    .line 36
    new-instance p1, Lo/AFSensorManager$4$2;

    invoke-direct {p1, p0}, Lo/AFSensorManager$4$2;-><init>(Lo/AFSensorManager$4;)V

    iput-object p1, p0, Lo/AFSensorManager$4;->onPostMessage:Lo/setPageMargin;

    return-void

    .line 1111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
