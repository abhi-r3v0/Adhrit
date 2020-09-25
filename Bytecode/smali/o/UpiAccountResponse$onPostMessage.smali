.class final Lo/UpiAccountResponse$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiAccountResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:[B

.field public final onNavigationEvent:I

.field onPostMessage:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    iput p1, p0, Lo/UpiAccountResponse$onPostMessage;->onNavigationEvent:I

    .line 768
    iput p2, p0, Lo/UpiAccountResponse$onPostMessage;->ICustomTabsCallback:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    .line 769
    new-array p1, p2, [B

    iput-object p1, p0, Lo/UpiAccountResponse$onPostMessage;->onMessageChannelReady:[B

    const/4 p1, 0x0

    .line 770
    iput p1, p0, Lo/UpiAccountResponse$onPostMessage;->onPostMessage:I

    return-void
.end method
