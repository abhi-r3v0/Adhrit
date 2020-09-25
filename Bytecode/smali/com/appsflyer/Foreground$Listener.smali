.class public interface abstract Lcom/appsflyer/Foreground$Listener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/Foreground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onBecameBackground(Landroid/content/Context;)V
.end method

.method public abstract onBecameForeground(Landroid/app/Activity;)V
.end method
