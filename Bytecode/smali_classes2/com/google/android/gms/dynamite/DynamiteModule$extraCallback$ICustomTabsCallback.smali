.class public final Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    .line 4
    iput v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method
