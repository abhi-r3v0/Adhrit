.class final Lo/VpaAccount$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/VpaAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final onMessageChannelReady:I

.field final onPostMessage:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    iput p1, p0, Lo/VpaAccount$onMessageChannelReady;->onPostMessage:I

    .line 752
    iput p2, p0, Lo/VpaAccount$onMessageChannelReady;->onMessageChannelReady:I

    return-void
.end method
