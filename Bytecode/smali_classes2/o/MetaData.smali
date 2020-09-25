.class public final Lo/MetaData;
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

    const/4 v1, 0x1

    .line 5
    invoke-interface {p3, p1, p2, v1}, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$onNavigationEvent;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result p1

    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    .line 6
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    if-nez p1, :cond_0

    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 7
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    goto :goto_0

    .line 8
    :cond_0
    iget p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onNavigationEvent:I

    iget p2, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onMessageChannelReady:I

    if-lt p1, p2, :cond_1

    const/4 p1, -0x1

    .line 9
    iput p1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    goto :goto_0

    .line 10
    :cond_1
    iput v1, v0, Lcom/google/android/gms/dynamite/DynamiteModule$extraCallback$ICustomTabsCallback;->onPostMessage:I

    :goto_0
    return-object v0
.end method
