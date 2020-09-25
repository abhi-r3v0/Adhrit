.class public final Lo/getRewardPoints$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRewardPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private final onMessageChannelReady:[Lo/getRewardPoints$extraCallback;


# direct methods
.method public varargs constructor <init>([Lo/getRewardPoints$extraCallback;)V
    .locals 0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lo/getRewardPoints$onPostMessage;->onMessageChannelReady:[Lo/getRewardPoints$extraCallback;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()I
    .locals 1

    .line 228
    iget-object v0, p0, Lo/getRewardPoints$onPostMessage;->onMessageChannelReady:[Lo/getRewardPoints$extraCallback;

    array-length v0, v0

    return v0
.end method

.method public final onMessageChannelReady(I)Lo/getRewardPoints$extraCallback;
    .locals 1

    .line 233
    iget-object v0, p0, Lo/getRewardPoints$onPostMessage;->onMessageChannelReady:[Lo/getRewardPoints$extraCallback;

    aget-object p1, v0, p1

    return-object p1
.end method
