.class final Lo/UpiBalanceResponseJsonAdapter$asInterface;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "asInterface"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final asBinder:I

.field public final extraCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 974
    iput p1, p0, Lo/UpiBalanceResponseJsonAdapter$asInterface;->extraCallback:I

    .line 975
    iput p2, p0, Lo/UpiBalanceResponseJsonAdapter$asInterface;->onPostMessage:I

    .line 976
    iput p3, p0, Lo/UpiBalanceResponseJsonAdapter$asInterface;->ICustomTabsCallback:I

    .line 977
    iput p4, p0, Lo/UpiBalanceResponseJsonAdapter$asInterface;->onMessageChannelReady:I

    .line 978
    iput p5, p0, Lo/UpiBalanceResponseJsonAdapter$asInterface;->onNavigationEvent:I

    .line 979
    iput p6, p0, Lo/UpiBalanceResponseJsonAdapter$asInterface;->asBinder:I

    return-void
.end method
