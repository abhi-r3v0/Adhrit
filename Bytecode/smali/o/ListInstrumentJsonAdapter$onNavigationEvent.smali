.class final Lo/ListInstrumentJsonAdapter$onNavigationEvent;
.super Lo/getMerchantChannelId;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ListInstrumentJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private onTransact:[B


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Lo/p$a;ILjava/lang/Object;[B)V
    .locals 8

    const/4 v3, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 587
    invoke-direct/range {v0 .. v7}, Lo/getMerchantChannelId;-><init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;ILo/p$a;ILjava/lang/Object;[B)V

    return-void
.end method


# virtual methods
.method public final asBinder()[B
    .locals 1

    .line 597
    iget-object v0, p0, Lo/ListInstrumentJsonAdapter$onNavigationEvent;->onTransact:[B

    return-object v0
.end method

.method public final onNavigationEvent([BI)V
    .locals 0

    .line 593
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lo/ListInstrumentJsonAdapter$onNavigationEvent;->onTransact:[B

    return-void
.end method
