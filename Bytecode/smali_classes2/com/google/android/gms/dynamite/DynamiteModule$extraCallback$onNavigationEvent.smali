.class public interface abstract Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onNavigationEvent"
.end annotation


# virtual methods
.method public abstract onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method public abstract onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation
.end method
