.class public interface abstract Lo/InstrumentsCompleteJsonAdapter;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/InstrumentsCompleteJsonAdapter$extraCallback;,
        Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ICustomTabsCallback(Landroid/os/Handler;Lo/Account;)V
.end method

.method public abstract ICustomTabsCallback(Lo/Account;)V
.end method

.method public abstract ICustomTabsCallback(Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;)V
.end method

.method public abstract ICustomTabsCallback(Lo/PaymentModeAdapter;)V
.end method

.method public abstract onNavigationEvent(Lo/InstrumentsCompleteJsonAdapter$extraCallback;Lo/PaymentRequest;J)Lo/PaymentModeAdapter;
.end method

.method public abstract onPostMessage(Lo/InstrumentsCompleteJsonAdapter$onNavigationEvent;Lo/InitPayloadJsonAdapter;)V
.end method
