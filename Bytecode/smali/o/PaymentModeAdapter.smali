.class public interface abstract Lo/PaymentModeAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CardBinResponseJsonAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/PaymentModeAdapter$onNavigationEvent;
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()J
.end method

.method public abstract ICustomTabsCallback(JLo/t$d;)J
.end method

.method public abstract extraCallback()J
.end method

.method public abstract extraCallback([Lo/InstrumentView;[Z[Lo/CardInstrumentJsonAdapter;[ZJ)J
.end method

.method public abstract extraCallback(J)Z
.end method

.method public abstract onMessageChannelReady()J
.end method

.method public abstract onMessageChannelReady(J)J
.end method

.method public abstract onNavigationEvent()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onNavigationEvent(J)V
.end method

.method public abstract onNavigationEvent(JZ)V
.end method

.method public abstract onNavigationEvent(Lo/PaymentModeAdapter$onNavigationEvent;J)V
.end method

.method public abstract onPostMessage()Lo/JuspaySessionToken;
.end method
