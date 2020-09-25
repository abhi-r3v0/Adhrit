.class public final Lo/PaymentJsonAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final onMessageChannelReady:[B

.field public final onNavigationEvent:I


# direct methods
.method public constructor <init>([BI)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lo/PaymentJsonAdapter;->onMessageChannelReady:[B

    .line 43
    iput p2, p0, Lo/PaymentJsonAdapter;->onNavigationEvent:I

    return-void
.end method
