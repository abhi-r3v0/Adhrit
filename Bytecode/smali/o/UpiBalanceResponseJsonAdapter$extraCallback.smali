.class final Lo/UpiBalanceResponseJsonAdapter$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final ICustomTabsCallback$Stub:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    iput p1, p0, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onPostMessage:I

    .line 863
    iput p2, p0, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onNavigationEvent:I

    .line 864
    iput p3, p0, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->ICustomTabsCallback:I

    .line 865
    iput p4, p0, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->extraCallback:I

    .line 866
    iput p5, p0, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->onMessageChannelReady:I

    .line 867
    iput p6, p0, Lo/UpiBalanceResponseJsonAdapter$extraCallback;->ICustomTabsCallback$Stub:I

    return-void
.end method
