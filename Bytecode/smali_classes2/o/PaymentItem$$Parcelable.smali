.class public abstract Lo/PaymentItem$$Parcelable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lo/PaymentRequestItem;",
        ">",
        "Ljava/lang/Object;",
        "Lo/getSource<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extraCallback(Lo/PaymentRequestItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(Lcom/google/android/gms/common/api/Status;)V
.end method
