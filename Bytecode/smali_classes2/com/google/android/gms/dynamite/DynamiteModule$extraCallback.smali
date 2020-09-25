.class public interface abstract Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;,
        Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;
    }
.end annotation


# virtual methods
.method public abstract onPostMessage(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;)Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation
.end method
