.class final Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:[B

.field public final onNavigationEvent:[B

.field public final onPostMessage:Z


# direct methods
.method public constructor <init>(IZ[B[B)V
    .locals 0

    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    iput p1, p0, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;->ICustomTabsCallback:I

    .line 1021
    iput-boolean p2, p0, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;->onPostMessage:Z

    .line 1022
    iput-object p3, p0, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;->onMessageChannelReady:[B

    .line 1023
    iput-object p4, p0, Lo/UpiBalanceResponseJsonAdapter$onMessageChannelReady;->onNavigationEvent:[B

    return-void
.end method
