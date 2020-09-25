.class public interface abstract Lo/ControlPayment;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ControlPayment$ICustomTabsCallback;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Lo/CardFinalPaymentData$$Parcelable;Lo/getTotalDue;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
