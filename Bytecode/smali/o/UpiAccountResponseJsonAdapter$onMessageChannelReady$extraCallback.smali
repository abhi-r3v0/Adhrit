.class Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field public final onMessageChannelReady:Z

.field public onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 1004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iput p1, p0, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady$extraCallback;->onPostMessage:I

    .line 1006
    iput-boolean p2, p0, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady$extraCallback;->onMessageChannelReady:Z

    .line 1007
    iput p3, p0, Lo/UpiAccountResponseJsonAdapter$onMessageChannelReady$extraCallback;->onNavigationEvent:I

    return-void
.end method
