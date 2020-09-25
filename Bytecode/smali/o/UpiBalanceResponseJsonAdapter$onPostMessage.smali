.class final Lo/UpiBalanceResponseJsonAdapter$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UpiBalanceResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field public final extraCallback:I

.field public final onPostMessage:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput p1, p0, Lo/UpiBalanceResponseJsonAdapter$onPostMessage;->onPostMessage:I

    .line 906
    iput p2, p0, Lo/UpiBalanceResponseJsonAdapter$onPostMessage;->extraCallback:I

    return-void
.end method
