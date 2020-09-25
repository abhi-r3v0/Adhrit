.class public Lo/setSource;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/PaymentRequestItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private onPostMessage:Lo/PaymentRequestItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final extraCallback()Lo/PaymentRequestItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lo/setSource;->onPostMessage:Lo/PaymentRequestItem;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/PaymentRequestItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lo/setSource;->onPostMessage:Lo/PaymentRequestItem;

    return-void
.end method
