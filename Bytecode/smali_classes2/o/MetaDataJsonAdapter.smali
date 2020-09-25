.class public final Lo/MetaDataJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;)Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;

    invoke-direct {v0}, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;-><init>()V

    .line 3
    invoke-interface {p3, p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    .line 4
    iget v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v1, :cond_0

    const/4 p1, -0x1

    .line 5
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    .line 8
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    if-eqz p1, :cond_1

    .line 9
    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    :cond_1
    :goto_0
    return-object v0
.end method
