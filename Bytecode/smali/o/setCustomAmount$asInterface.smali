.class public interface abstract Lo/setCustomAmount$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCustomAmount$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setCustomAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setCustomAmount$onMessageChannelReady;"
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback()Ljava/lang/String;
.end method

.method public abstract extraCallback()Ljava/lang/String;
.end method

.method public abstract onMessageChannelReady()Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
