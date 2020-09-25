.class public final Lo/getResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPaymentItem$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getPaymentItem$onMessageChannelReady<",
        "TR;TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/setSource;


# direct methods
.method public constructor <init>(Lo/setSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getResult;->extraCallback:Lo/setSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Lo/PaymentRequestItem;)Ljava/lang/Object;
    .locals 1

    .line 3
    iget-object v0, p0, Lo/getResult;->extraCallback:Lo/setSource;

    invoke-virtual {v0, p1}, Lo/setSource;->onNavigationEvent(Lo/PaymentRequestItem;)V

    .line 4
    iget-object p1, p0, Lo/getResult;->extraCallback:Lo/setSource;

    return-object p1
.end method
