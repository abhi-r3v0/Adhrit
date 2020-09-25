.class public interface abstract Lo/PayCallResponseJsonAdapter$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CardBinResponseJsonAdapter$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PayCallResponseJsonAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/CardBinResponseJsonAdapter$onPostMessage<",
        "Lo/PayCallResponseJsonAdapter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract asBinder()V
.end method

.method public abstract onMessageChannelReady(Landroid/net/Uri;)V
.end method
